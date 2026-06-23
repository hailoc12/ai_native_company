# Cài đặt Skills — Hướng dẫn chi tiết

Skills trong folder này được thiết kế cho **Claude Code** — CLI tool của Anthropic.

---

## Yêu cầu

| Yêu cầu | Chi tiết |
|---------|----------|
| Claude Code | CLI hoặc IDE extension ([cài đặt](https://claude.ai/code)) |
| Subscription | Claude Pro/Max hoặc API key có Sonnet 4+ |
| OS | macOS, Linux, hoặc Windows (WSL) |

---

## Cài đặt nhanh

```bash
# 1. Clone repo
git clone https://github.com/hailoc12/ai_native_company.git
cd ai_native_company/community_version

# 2. Copy TẤT CẢ skills vào Claude Code
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/

# 3. Xác minh cài đặt
ls ~/.claude/skills/vibe-*/SKILL.md
# Phải thấy 2 file SKILL.md
```

---

## Cài đặt từng skill

### Chỉ cài đặt skill cần thiết:

```bash
# Chỉ thiết kế công ty
cp -r skills/vibe-company-orchestrator ~/.claude/skills/

# Chỉ xây AI workforce
cp -r skills/vibe-aiworkforce ~/.claude/skills/
```

---

## Xác minh

```bash
# Kiểm tra skill đã được nhận diện
ls -la ~/.claude/skills/

# Output kỳ vọng:
# vibe-aiworkforce/
# vibe-company-orchestrator/

# Kiểm tra mỗi skill có SKILL.md
for skill in ~/.claude/skills/vibe-*/; do
  if [ -f "$skill/SKILL.md" ]; then
    echo "OK: $(basename $skill)"
  else
    echo "LỖI: $(basename $skill) — thiếu SKILL.md"
  fi
done
```

---

## Sử dụng

Sau khi cài đặt, mở Claude Code và gõ:

```
# Thiết kế toàn bộ công ty
/vibe-company-orchestrator
→ Mô tả doanh nghiệp của bạn → Skill tạo folder structure + SOP

# Xây AI Workforce cho task cụ thể
/vibe-aiworkforce
→ Mô tả task cần tự động hóa → Skill thiết kế workforce
```

---

## Cấu trúc mỗi Skill

```
vibe-aiworkforce/
├── SKILL.md                    ← File chính — định nghĩa skill
├── 05-templates/               ← Mẫu cho workforce design
│   ├── workforce-analysis.md
│   ├── skills-spec-template.md
│   ├── rules-tests-template.md
│   └── workflow-template.md
├── 06-examples/                ← Ví dụ thực tế
│   └── example-content-marketing.md
└── resources/                  ← Tài liệu tham khảo
    └── description-anti-patterns.md

vibe-company-orchestrator/
└── SKILL.md                    ← File chính
```

---

## Cập nhật

```bash
# Cập nhật từ repo mới nhất
cd ai_native_company/community_version
git pull

# Copy lại skills
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/
```

---

## Vấn đề thường gặp

### Skill không xuất hiện trong danh sách

```bash
# Kiểm tra đường dẫn
ls ~/.claude/skills/vibe-*/SKILL.md

# Nếu không thấy → tạo thư mục
mkdir -p ~/.claude/skills
# Copy lại skills
```

### Skill trigger không đúng

Mỗi skill có phần "description" trong frontmatter SKILL.md. Claude Code sử dụng description để quyết định khi nào gọi skill. Nếu skill không trigger:

1. Đọc phần "When to Use" trong SKILL.md
2. Sử dụng đúng từ khóa mô tả task
3. Gõ tên skill trực tiếp: `/vibe-aiworkforce`

### Lỗi permission

```bash
# Đảm bảo quyền đọc viết
chmod -R 755 ~/.claude/skills/vibe-*/
```

---

## Skills cho company folder (COMPANY_ROOT)

**QUAN TRỌNG:** Khi build skills cho doanh nghiệp cụ thể, skills phải lưu TRONG company folder — không chỉ ở `~/.claude/skills/`.

```
# VỊ TRÍ CHÍNH (PRIMARY):
[your-company]/[department]/ai_workforce/[skill-name]/SKILL.md

# VỊ TRÍ GỌI TỪ CLI (SECONDARY — copy hoặc symlink):
~/.claude/skills/[skill-name]/SKILL.md
```

Skill `vibe-aiworkforce` sẽ tự động quản lý điều này khi bạn cung cấp `COMPANY_ROOT`.

---

## Cài đặt trên nhiều nền tảng

Xem hướng dẫn đầy đủ cho Claude Code, Antigravity, OpenClaw, Codex tại [docs/install-guide.md](../docs/install-guide.md).

Hoặc chạy script cài đặt tự động:

```bash
# macOS / Linux
bash src/install.sh

# Windows (PowerShell)
powershell -ExecutionPolicy Bypass -File src\install.ps1
```
