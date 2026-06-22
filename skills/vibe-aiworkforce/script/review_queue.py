#!/usr/bin/env python3
"""
vibe-aiworkforce review_queue.py

Scans output/ for JSON artifacts with need_review=true or low confidence_score,
collects them into output/review-queue.md.

Usage:
    python3 review_queue.py --collect              # Scan and append
    python3 review_queue.py --collect --threshold 0.7
    python3 review_queue.py --show                 # Print current queue
    python3 review_queue.py --clear                # Clear queue
"""

import argparse
import json
import sys
from datetime import datetime
from pathlib import Path


def find_artifacts(output_dir: Path) -> list[Path]:
    """Find all JSON files in output/ that might have need_review field."""
    if not output_dir.exists():
        return []
    return [p for p in output_dir.rglob("*.json") if "execution_log" not in p.name]


def collect_for_review(output_dir: Path, threshold: float = 0.7) -> list[dict]:
    """Scan artifacts, return those needing review."""
    items = []
    for path in find_artifacts(output_dir):
        try:
            with path.open() as f:
                data = json.load(f)
        except Exception:
            continue

        confidence = data.get("confidence_score")
        need_review = data.get("need_review", False)

        if need_review or (confidence is not None and confidence < threshold):
            items.append({
                "timestamp": datetime.utcnow().isoformat(timespec="seconds") + "Z",
                "artifact": str(path),
                "confidence_score": confidence,
                "need_review": need_review,
                "reason": data.get("review_reason",
                                   "auto: low confidence or need_review flag"),
            })

    return items


def write_queue(items: list[dict], queue_path: Path) -> None:
    """Append items to review-queue.md."""
    queue_path.parent.mkdir(parents=True, exist_ok=True)

    header = f"# Review Queue — Updated {datetime.utcnow().isoformat(timespec='minutes')}Z\n\n"
    if not queue_path.exists():
        queue_path.write_text(header, encoding="utf-8")

    with queue_path.open("a", encoding="utf-8") as f:
        for item in items:
            f.write(f"## {item['timestamp']} — {Path(item['artifact']).name}\n\n")
            f.write(f"- **Artifact:** `{item['artifact']}`\n")
            f.write(f"- **Confidence:** {item['confidence_score']}\n")
            f.write(f"- **need_review:** {item['need_review']}\n")
            f.write(f"- **Reason:** {item['reason']}\n\n")


def main():
    parser = argparse.ArgumentParser(description="vibe-aiworkforce review queue")
    parser.add_argument("--collect", action="store_true", help="Scan output/ and collect")
    parser.add_argument("--show", action="store_true", help="Print current queue")
    parser.add_argument("--clear", action="store_true", help="Clear queue")
    parser.add_argument("--threshold", type=float, default=0.7, help="Confidence threshold")
    parser.add_argument("--output-dir", default="output", help="Output directory to scan")
    parser.add_argument("--queue-file", default="output/review-queue.md", help="Queue file path")
    args = parser.parse_args()

    queue_path = Path(args.queue_file)
    output_dir = Path(args.output_dir)

    if args.clear:
        if queue_path.exists():
            queue_path.unlink()
            print(f"Cleared: {queue_path}")
        return 0

    if args.show:
        if queue_path.exists():
            print(queue_path.read_text(encoding="utf-8"))
        else:
            print("Queue is empty.")
        return 0

    if args.collect:
        items = collect_for_review(output_dir, args.threshold)
        if items:
            write_queue(items, queue_path)
            print(f"Collected {len(items)} item(s) → {queue_path}")
        else:
            print("No items need review.")
        return 0

    parser.print_help()
    return 0


if __name__ == "__main__":
    sys.exit(main())
