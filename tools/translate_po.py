#!/usr/bin/env python3
"""Translate .po files from French to English using Albert API."""

import json
import os
import re
import sys
import argparse
import httpx
from pathlib import Path

ALBERT_API_URL = "https://albert.api.etalab.gouv.fr/v1/chat/completions"
DEFAULT_MODEL = "mistralai/Mistral-Small-3.2-24B-Instruct-2506"

SYSTEM_PROMPT = """You are a medical/technical translator specializing in French healthcare interoperability documentation (FHIR Implementation Guides).

Translate an array of French strings to English. Each string is a label, title, or description from a FHIR resource.

Strict rules:
- Return ONLY a valid JSON array of strings, in the same order as the input
- Preserve technical identifiers as-is: FHIR resource names, profile IDs, code values (e.g. consommateur-cds, ANS, TRE_xxx, JDV_xxx)
- Preserve URLs, canonical links, and anchor links exactly
- Translate ONLY the human-readable French prose
- Do NOT add explanations, preamble, or trailing comments
- The output must be parseable JSON: ["translation 1", "translation 2", ...]"""


def parse_po_entries(content):
    """Parse a .po file and return a list of (msgid, msgstr, full_block) tuples."""
    entries = []
    pattern = re.compile(
        r'((?:#[^\n]*\n)*)msgid\s+"((?:[^"\\]|\\.)*)"\nmsgstr\s+"((?:[^"\\]|\\.)*)"',
        re.MULTILINE,
    )
    for m in pattern.finditer(content):
        comment = m.group(1)
        msgid = m.group(2).replace("\\n", "\n")
        msgstr = m.group(3).replace("\\n", "\n")
        entries.append(
            {
                "comment": comment,
                "msgid": msgid,
                "msgstr": msgstr,
                "span": (m.start(), m.end()),
                "raw": m.group(0),
            }
        )
    return entries


def translate_batch(msgids, token, model):
    """Translate a list of strings in one API call. Returns a list of translated strings."""
    payload = json.dumps(msgids, ensure_ascii=False)
    response = httpx.post(
        ALBERT_API_URL,
        headers={"Authorization": f"Bearer {token}"},
        json={
            "model": model,
            "messages": [
                {"role": "system", "content": SYSTEM_PROMPT},
                {"role": "user", "content": payload},
            ],
            "max_tokens": 8192,
            "temperature": 0.1,
        },
        timeout=120.0,
    )
    response.raise_for_status()
    raw = response.json()["choices"][0]["message"]["content"].strip()
    # Strip markdown code block if present
    raw = re.sub(r"^```(?:json)?\s*", "", raw)
    raw = re.sub(r"\s*```$", "", raw)
    return json.loads(raw)


def translate_po_file(source_path, target_path, token, model, force):
    content = source_path.read_text(encoding="utf-8")
    entries = parse_po_entries(content)

    to_translate = [e for e in entries if force or not e["msgstr"]]
    if not to_translate:
        return 0

    # Batch: skip empty msgids (just spaces / identifiers not worth translating)
    msgids = [e["msgid"] for e in to_translate]
    translations = translate_batch(msgids, token, model)

    if len(translations) != len(to_translate):
        raise ValueError(
            f"Expected {len(to_translate)} translations, got {len(translations)}"
        )

    # Rebuild content by replacing msgstr values
    result = content
    offset = 0
    for entry, translated in zip(to_translate, translations):
        translated_escaped = translated.replace("\n", "\\n").replace('"', '\\"')
        old_block = entry["raw"]
        new_block = re.sub(
            r'msgstr\s+"[^"]*"',
            f'msgstr "{translated_escaped}"',
            old_block,
            count=1,
        )
        start = entry["span"][0] + offset
        end = entry["span"][1] + offset
        result = result[:start] + new_block + result[end:]
        offset += len(new_block) - len(old_block)

    target_path.parent.mkdir(parents=True, exist_ok=True)
    target_path.write_text(result, encoding="utf-8")
    return len(to_translate)


def main():
    parser = argparse.ArgumentParser(
        description="Translate .po files (FR→EN) using Albert API"
    )
    parser.add_argument(
        "--source-dir",
        default="translations/en/po",
        help="Directory containing source .po files (default: translations/en/po)",
    )
    parser.add_argument(
        "--target-dir",
        default="input/translations/en",
        help="Directory where translated .po files will be written (default: input/translations/en)",
    )
    parser.add_argument(
        "--model",
        default=DEFAULT_MODEL,
        help=f"Albert model to use (default: {DEFAULT_MODEL})",
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Retranslate entries even if msgstr is already filled",
    )
    args = parser.parse_args()

    token = os.environ.get("ALBERT_API_KEY")
    if not token:
        print("Error: ALBERT_API_KEY environment variable is not set", file=sys.stderr)
        sys.exit(1)

    source_dir = Path(args.source_dir)
    target_dir = Path(args.target_dir)

    if not source_dir.is_dir():
        print(f"Error: source directory not found: {source_dir}", file=sys.stderr)
        sys.exit(1)

    po_files = sorted(source_dir.glob("*.po"))
    if not po_files:
        print(f"No .po files found in {source_dir}")
        return

    translated_total = 0
    skipped_count = 0

    for source_file in po_files:
        target_file = target_dir / source_file.name
        print(f"Processing {source_file.name}...", end=" ", flush=True)
        try:
            count = translate_po_file(source_file, target_file, token, args.model, args.force)
            if count == 0:
                print("skipped (already translated)")
                skipped_count += 1
            else:
                print(f"OK ({count} entries translated)")
                translated_total += count
        except httpx.HTTPStatusError as e:
            print(f"FAILED (HTTP {e.response.status_code})", file=sys.stderr)
            print(e.response.text, file=sys.stderr)
            sys.exit(1)
        except Exception as e:
            print(f"FAILED: {e}", file=sys.stderr)
            sys.exit(1)

    print(f"\nDone: {translated_total} entries translated across {len(po_files) - skipped_count} file(s), {skipped_count} skipped.")


if __name__ == "__main__":
    main()
