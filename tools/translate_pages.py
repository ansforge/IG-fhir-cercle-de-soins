#!/usr/bin/env python3
"""Translate IG pagecontent Markdown files from French to English using Albert API."""

import os
import sys
import argparse
import httpx
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

ALBERT_API_URL = "https://albert.api.etalab.gouv.fr/v1/chat/completions"
DEFAULT_MODEL = "mistralai/Mistral-Small-3.2-24B-Instruct-2506"
DEFAULT_WORKERS = 5

SYSTEM_PROMPT = """You are a medical/technical translator specializing in French healthcare interoperability documentation (FHIR Implementation Guides).

Translate the following Markdown/HTML content from French to English.

Strict rules:
- Preserve ALL technical elements exactly as-is without any modification:
  * Liquid/Jekyll tags: {% sql ... %}, {% include ... %}, {% lang-fragment ... %}
  * HTML tags and their attributes (style, class, src, alt, title, etc.)
  * FHIR resource names, profile identifiers, search parameter names
  * French code identifiers: TRE_xxx, JDV_xxx, ASS_xxx, flux names (e.g. Flux1, CreationCercleSoins)
  * URLs, canonical links, anchor links
  * Image src paths (e.g. sf_image1.png)
  * Markdown structure: heading levels (###, ####, etc.), tables, lists, bold/italic
  * Code blocks (``` ... ```) — do not translate their content
- Translate ONLY the human-readable French prose and labels
- Do NOT add any explanations, preamble, or trailing comment
- Return ONLY the translated content"""


def translate_content(content: str, token: str, model: str) -> str:
    # Scale max_tokens and timeout to content size (approx 4 chars/token)
    estimated_tokens = len(content) // 4
    max_tokens = max(8192, min(estimated_tokens * 2, 32768))
    timeout = max(180.0, estimated_tokens / 30)

    response = httpx.post(
        ALBERT_API_URL,
        headers={"Authorization": f"Bearer {token}"},
        json={
            "model": model,
            "messages": [
                {"role": "system", "content": SYSTEM_PROMPT},
                {"role": "user", "content": content},
            ],
            "max_tokens": max_tokens,
            "temperature": 0.1,
        },
        timeout=timeout,
    )
    response.raise_for_status()
    return response.json()["choices"][0]["message"]["content"]


def process_file(source_file, target_dir, token, model, force):
    """Translate one file. Returns (filename, status, error_or_none)."""
    target_file = target_dir / source_file.name
    content = source_file.read_text(encoding="utf-8")

    if not content.strip():
        return (source_file.name, "skipped_empty", None)

    if target_file.exists() and not force:
        return (source_file.name, "skipped_exists", None)

    translated = translate_content(content, token, model)
    target_file.write_text(translated, encoding="utf-8")
    return (source_file.name, "translated", None)


def main():
    parser = argparse.ArgumentParser(
        description="Translate IG pagecontent from French to English with Albert API"
    )
    parser.add_argument(
        "--source-dir",
        default="input/pagecontent",
        help="Directory containing the French .md source files (default: input/pagecontent)",
    )
    parser.add_argument(
        "--target-dir",
        default="input/translations/en/pagecontent",
        help="Directory where English translations will be written (default: input/translations/en/pagecontent)",
    )
    parser.add_argument(
        "--model",
        default=DEFAULT_MODEL,
        help=f"Albert model to use (default: {DEFAULT_MODEL})",
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Retranslate files even if a translation already exists",
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

    target_dir.mkdir(parents=True, exist_ok=True)

    md_files = sorted(source_dir.glob("*.md"))
    if not md_files:
        print(f"No .md files found in {source_dir}")
        return

    print(f"Processing {len(md_files)} file(s) with {args.workers} workers...")

    translated_count = 0
    skipped_count = 0
    errors = []

    with ThreadPoolExecutor(max_workers=args.workers) as executor:
        futures = {
            executor.submit(process_file, f, target_dir, token, args.model, args.force): f
            for f in md_files
        }
        for future in as_completed(futures):
            try:
                name, status, _ = future.result()
                if status == "translated":
                    print(f"  ✓ {name}")
                    translated_count += 1
                elif status == "skipped_empty":
                    print(f"  - {name} (empty)")
                    skipped_count += 1
                else:
                    print(f"  - {name} (already translated)")
                    skipped_count += 1
            except httpx.HTTPStatusError as e:
                name = futures[future].name
                print(f"  ✗ {name} (HTTP {e.response.status_code})", file=sys.stderr)
                errors.append((name, str(e)))
            except Exception as e:
                name = futures[future].name
                print(f"  ✗ {name}: {e}", file=sys.stderr)
                errors.append((name, str(e)))

    print(f"\nDone: {translated_count} translated, {skipped_count} skipped, {len(errors)} failed.")
    if errors:
        sys.exit(1)


if __name__ == "__main__":
    main()
