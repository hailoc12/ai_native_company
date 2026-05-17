#!/bin/bash
# migrate-existing-sop.sh — Chuyen doi SOP folder sang State Machine
# Su dung: bash migrate-existing-sop.sh [sop-path]

set -e

SOP_PATH="${1:?Usage: $0 [sop-path]}"

if [ ! -d "$SOP_PATH" ]; then
  echo "Loi: SOP folder khong ton tai: $SOP_PATH"
  exit 1
fi

mkdir -p "$SOP_PATH"/{template,input,output,archive}
mkdir -p "$SOP_PATH"/processing/{ai-draft,human-review}

if [ ! -f "$SOP_PATH/template/README.md" ]; then
  SOP_NAME=$(basename "$SOP_PATH")
  cat > "$SOP_PATH/template/README.md" << EOF
# $SOP_NAME — Template

**QUAN TRONG:** KHONG chinh sua file trong folder nay truc tiep.

Cach su dung:
1. Copy file can dung sang input/
2. Doi ten: [YYYY-MM-DD]-[mo-ta].[ext]
3. Xu ly theo: input/ → processing/ → output/ → archive/

Da chuyen doi: $(date +%Y-%m-%d)
EOF
  echo "Da chuyen doi: $SOP_PATH"
else
  echo "Da co template/README.md: $SOP_PATH"
fi
