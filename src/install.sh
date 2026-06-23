#!/bin/bash
# install.sh — Cài đặt tự động AI Native Company skills
# Hỗ trợ: Claude Code, Antigravity, OpenClaw, Codex, Hermes
# Sử dụng: bash src/install.sh [--app <tên-ứng-dụng>]

set -e

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_SRC="$REPO_PATH/skills"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

SKILLS=("vibe-aiworkforce" "vibe-company-orchestrator")

# App → skills directory mapping
declare -A APP_DIRS
APP_DIRS[claude-code]="$HOME/.claude/skills"
APP_DIRS[antigravity]="$HOME/.antigravity/skills"
APP_DIRS[openclaw]="$HOME/.openclaw/skills"
APP_DIRS[codex]="$HOME/.codex/agents"
APP_DIRS[hermes]="$HOME/.hermes/skills"

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  AI Native Company — Community Edition Installer  ${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════${NC}"
echo ""

# Validate skills source
if [ ! -d "$SKILLS_SRC" ]; then
  echo -e "${RED}Lỗi: Không tìm thấy thư mục skills/ tại: $SKILLS_SRC${NC}"
  exit 1
fi

# Check available skills
FOUND_SKILLS=()
for skill in "${SKILLS[@]}"; do
  if [ -d "$SKILLS_SRC/$skill" ]; then
    FOUND_SKILLS+=("$skill")
  else
    echo -e "${YELLOW}Cảnh báo: Không tìm thấy $skill${NC}"
  fi
done

if [ ${#FOUND_SKILLS[@]} -eq 0 ]; then
  echo -e "${RED}Lỗi: Không tìm thấy skill nào để cài đặt.${NC}"
  exit 1
fi

echo -e "Tìm thấy ${#FOUND_SKILLS[@]} skills:"
for skill in "${FOUND_SKILLS[@]}"; do
  echo -e "  ${GREEN}✓${NC} $skill"
done
echo ""

# Parse arguments
SELECTED_APP=""
if [ "$1" = "--app" ] && [ -n "$2" ]; then
  SELECTED_APP="$2"
fi

# If no app specified, ask user
if [ -z "$SELECTED_APP" ]; then
  echo "Chọn ứng dụng cần cài đặt:"
  echo ""
  echo "  1) Claude Code"
  echo "  2) Antigravity"
  echo "  3) OpenClaw"
  echo "  4) Codex (OpenAI)"
  echo "  5) Hermes"
  echo "  6) Tất cả"
  echo ""
  read -p "Nhập lựa chọn [1-6]: " choice

  case $choice in
    1) SELECTED_APP="claude-code" ;;
    2) SELECTED_APP="antigravity" ;;
    3) SELECTED_APP="openclaw" ;;
    4) SELECTED_APP="codex" ;;
    5) SELECTED_APP="hermes" ;;
    6) SELECTED_APP="all" ;;
    *)
      echo -e "${RED}Lựa chọn không hợp lệ.${NC}"
      exit 1
      ;;
  esac
fi

# Install function
install_skills() {
  local app_name="$1"
  local dest_dir="$2"

  echo ""
  echo -e "${BLUE}→ Cài đặt cho $app_name...${NC}"
  echo -e "  Thư mục đích: $dest_dir"

  mkdir -p "$dest_dir"

  for skill in "${FOUND_SKILLS[@]}"; do
    rm -rf "$dest_dir/$skill"
    cp -r "$SKILLS_SRC/$skill" "$dest_dir/"
    echo -e "  ${GREEN}✓${NC} $skill"
  done

  echo -e "${GREEN}→ $app_name: Hoàn tất${NC}"
}

# Execute installation
if [ "$SELECTED_APP" = "all" ]; then
  for app in claude-code antigravity openclaw codex hermes; do
    install_skills "$app" "${APP_DIRS[$app]}"
  done
else
  if [ -z "${APP_DIRS[$SELECTED_APP]}" ]; then
    echo -e "${RED}Lỗi: Ứng dụng '$SELECTED_APP' không được hỗ trợ.${NC}"
    echo -e "Các ứng dụng hỗ trợ: claude-code, antigravity, openclaw, codex, hermes"
    exit 1
  fi
  install_skills "$SELECTED_APP" "${APP_DIRS[$SELECTED_APP]}"
fi

# Verify
echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  Xác minh cài đặt${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════${NC}"

if [ "$SELECTED_APP" = "all" ]; then
  VERIFY_APPS=("claude-code" "antigravity" "openclaw" "codex" "hermes")
else
  VERIFY_APPS=("$SELECTED_APP")
fi

ALL_OK=true
for app in "${VERIFY_APPS[@]}"; do
  dest_dir="${APP_DIRS[$app]}"
  echo ""
  echo "  $app:"
  for skill in "${FOUND_SKILLS[@]}"; do
    if [ -f "$dest_dir/$skill/SKILL.md" ]; then
      echo -e "    ${GREEN}✓${NC} $skill — SKILL.md OK"
    else
      echo -e "    ${RED}✗${NC} $skill — Thiếu SKILL.md!"
      ALL_OK=false
    fi
  done
done

echo ""
if [ "$ALL_OK" = true ]; then
  echo -e "${GREEN}Hoàn tất! Mở ứng dụng và gõ /vibe-company-orchestrator để bắt đầu.${NC}"
else
  echo -e "${YELLOW}Một số skill chưa được cài đúng. Kiểm tra lại đường dẫn.${NC}"
fi
