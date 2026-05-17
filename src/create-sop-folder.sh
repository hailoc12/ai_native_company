#!/bin/bash
# create-sop-folder.sh — Tao cau truc SOP State Machine chuan
# Su dung: bash create-sop-folder.sh [org-root] [department] [sop-name]

set -e

ORG_ROOT="${1:?Usage: $0 [org-root] [department] [sop-name]}"
DEPT="${2:?Usage: $0 [org-root] [department] [sop-name]}"
SOP_NAME="${3:?Usage: $0 [org-root] [department] [sop-name]}"

BASE="$ORG_ROOT/$DEPT/$SOP_NAME"

if [ -d "$BASE" ]; then
  echo "SOP folder da ton tai: $BASE"
  exit 1
fi

mkdir -p "$BASE"/{template,input,output,archive}
mkdir -p "$BASE"/processing/{ai-draft,human-review}

cat > "$BASE/template/README.md" << EOF
# $SOP_NAME — Template

**QUAN TRONG:** KHONG chinh sua file trong folder nay truc tiep.

Cach su dung:
1. Copy file can dung sang input/
2. Doi ten: [YYYY-MM-DD]-[mo-ta].[ext]
3. Xu ly theo: input/ → processing/ → output/ → archive/

Template version: v1.0
Last updated: $(date +%Y-%m-%d)
Owner: $DEPT
EOF

echo "SOP folder da tao: $BASE"
echo "  template/    — SOURCE OF TRUTH (READ-ONLY)"
echo "  input/       — Files cho xu ly"
echo "  processing/  — Files dang xu ly"
echo "    ai-draft/  — AI dang tao/process"
echo "    human-review/ — Human dang review"
echo "  output/      — Ket qua hoan thanh"
echo "  archive/     — Completed runs (immutable)"
