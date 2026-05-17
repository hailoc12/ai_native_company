#!/bin/bash
# install-skills.sh — Cai dat skills vao Claude Code
# Su dung: bash install-skills.sh [repo-path]

REPO_PATH="${1:-$(dirname "$0")/..}"
SKILLS_SRC="$REPO_PATH/skills"
SKILLS_DST="$HOME/.claude/skills"

if [ ! -d "$SKILLS_SRC" ]; then
  echo "Loi: Khong tim thay skills/ tai: $SKILLS_SRC"
  exit 1
fi

mkdir -p "$SKILLS_DST"

SKILLS=("vibe-aiworkforce" "vibe-company-orchestrator" "vibe-aiworkforce-gps")

for skill in "${SKILLS[@]}"; do
  if [ -d "$SKILLS_SRC/$skill" ]; then
    # Xoa ban cu (neu co)
    rm -rf "$SKILLS_DST/$skill"
    # Copy ban moi
    cp -r "$SKILLS_SRC/$skill" "$SKILLS_DST/"
    echo "OK: $skill"
  else
    echo "LOI: Khong tim thay $skill"
  fi
done

echo ""
echo "Xac minh:"
for skill in "${SKILLS[@]}"; do
  if [ -f "$SKILLS_DST/$skill/SKILL.md" ]; then
    echo "  $skill — SKILL.md OK"
  else
    echo "  $skill — THIEU SKILL.md!"
  fi
done

echo ""
echo "Hoan tat! Mo Claude Code va go /$skill de bat dau."
