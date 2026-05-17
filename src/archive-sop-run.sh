#!/bin/bash
# archive-sop-run.sh — Archive output/ sang archive/[YYYY-MM]/
# Su dung: bash archive-sop-run.sh [sop-path]

set -e

SOP_PATH="${1:?Usage: $0 [sop-path]}"

if [ ! -d "$SOP_PATH" ]; then
  echo "Loi: SOP folder khong ton tai: $SOP_PATH"
  exit 1
fi

MONTH=$(date +%Y-%m)
ARCHIVE_DIR="$SOP_PATH/archive/$MONTH"

mkdir -p "$ARCHIVE_DIR"

if [ -z "$(ls -A "$SOP_PATH/output/" 2>/dev/null)" ]; then
  echo "output/ trong — khong co gi de archive"
  exit 0
fi

mv "$SOP_PATH/output/"* "$ARCHIVE_DIR/"
echo "Da archive sang: $ARCHIVE_DIR"
echo "Files: $(ls "$ARCHIVE_DIR" | wc -l | tr -d ' ')"
