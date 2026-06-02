#!/usr/bin/env python3
"""Translate .po files from French to English using Albert API."""

import json
import os
import re
import sys
import argparse
import httpx
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

ALBERT_API_URL = "https://albert.api.etalab.gouv.fr/v1/chat/completions"
DEFAULT_MODEL = "mistralai/Mistral-Small-3.2-24B-Instruct-2506"
DEFAULT_WORKERS = 5

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
    entries = []
    pattern = re.compile(
        r'((?:#[^\n]*\n)*)msgid\s+"((?:[^"\\]|\\.)*)"\nmsgstr\s+"((?:[^"\\]|\\.)*)"',
        re.MULTILINE,
    )
    for m in pattern.finditer(content):
        msgid = m.group(2).replace("\\n", "\n")
        msgstr = m.group(3).replace("\\n", "\n")
        entries.append(
            {
                "msgid": msgid,
                "msgstr": msgstr,
                "span": (m.start(), m.end()),
                "raw": m.group(0),
            }
        )
    return entries


def translate_batch(msgids, token, model):
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
    raw = re.sub(r"^```(?:json)?\s*", "", raw)
    raw = re.sub(r"\s*```$", "", raw)
    return json.loads(raw)


def translate_po_file(source_path, target_path, token, model, force):
    """Translate one .po file. Returns number of entries translated."""
    content = source_path.read_text(encoding="utf-8")
    entries = parse_po_entries(content)

    to_translate = [e for e in entries if force or not e["msgstr"]]
    if not to_translate:
        return 0

    msgids = [e["msgid"] for e in to_translate]
    translations = translate_batch(msgids, token, model)

    if len(translations) != len(to_translate):
        raise ValueError(
            f"Expected {len(to_translate)} translations, got {len(translations)}"
        )

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
    parser.add_argument(
        "--workers",
        type=int,
        default=DEFAULT_WORKERS,
        help=f"Number of parallel API calls (default: {DEFAULT_WORKERS})",
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

    print(f"Processing {len(po_files)} file(s) with {args.workers} workers...")

    translated_total = 0
    skipped_count = 0
    errors = []

    with ThreadPoolExecutor(max_workers=args.workers) as executor:
        futures = {
            executor.submit(
                translate_po_file,
                f,
                target_dir / f.name,
                token,
                args.model,
                args.force,
            ): f
            for f in po_files
        }
        for future in as_completed(futures):
            name = futures[future].name
            try:
                count = future.result()
                if count == 0:
                    print(f"  - {name} (already translated)")
                    skipped_count += 1
                else:
                    print(f"  ✓ {name} ({count} entries)")
                    translated_total += count
            except httpx.HTTPStatusError as e:
                print(f"  ✗ {name} (HTTP {e.response.status_code})", file=sys.stderr)
                errors.append((name, str(e)))
            except Exception as e:
                print(f"  ✗ {name}: {e}", file=sys.stderr)
                errors.append((name, str(e)))

    print(f"\nDone: {translated_total} entries translated, {skipped_count} file(s) skipped, {len(errors)} failed.")
    if errors:
        sys.exit(1)


if __name__ == "__main__":
    main()
