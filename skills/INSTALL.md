# Cai dat Skills — Huong dan chi tiet

Skills trong folder nay duoc thiet ke cho **Claude Code** — CLI tool cua Anthropic.

---

## Yeu cau

| Yeu cau | Chi tiet |
|---------|----------|
| Claude Code | CLI hoac IDE extension ([cai dat](https://claude.ai/code)) |
| Subscription | Claude Pro/Max hoac API key co Sonnet 4+ |
| OS | macOS, Linux, hoac Windows (WSL) |

---

## Cai dat nhanh

```bash
# 1. Clone repo
git clone https://github.com/your-org/ai_native_company.git
cd ai_native_company/community_version

# 2. Copy TAT CA skills vao Claude Code
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/
cp -r skills/vibe-aiworkforce-gps ~/.claude/skills/

# 3. Verify cai dat
ls ~/.claude/skills/vibe-*/SKILL.md
# Phai thay 3 file SKILL.md
```

---

## Cai dat tung skill

### Chi cai dat skill can thiet:

```bash
# Chi thiet ke cong ty
cp -r skills/vibe-company-orchestrator ~/.claude/skills/

# Chi xay AI workforce
cp -r skills/vibe-aiworkforce ~/.claude/skills/

# Chi dieu phoi task
cp -r skills/vibe-aiworkforce-gps ~/.claude/skills/
```

---

## Verify

```bash
# Kiem tra skill da duoc nhan dien
ls -la ~/.claude/skills/

# Output ky vong:
# vibe-aiworkforce/
# vibe-company-orchestrator/
# vibe-aiworkforce-gps/

# Kiem tra moi skill co SKILL.md
for skill in ~/.claude/skills/vibe-*/; do
  if [ -f "$skill/SKILL.md" ]; then
    echo "OK: $(basename $skill)"
  else
    echo "LOI: $(basename $skill) — thieu SKILL.md"
  fi
done
```

---

## Su dung

Sau khi cai dat, mo Claude Code va go:

```
# Thiet ke toan bo cong ty
/vibe-company-orchestrator
→ Mo ta doanh nghiep cua ban → Skill tao folder structure + SOP

# Xay AI Workforce cho task cu the
/vibe-aiworkforce
→ Mo ta task can tu dong hoa → Skill thiet ke workforce

# Dieu phoi task den dung nguoi
/vibe-aiworkforce-gps
→ Nhan task tu nhien → Route den dung department + SOP
```

---

## Cau truc moi Skill

```
vibe-aiworkforce/
├── SKILL.md                    ← File chinh — dinh nghia skill
├── 05-templates/               ← Mau cho workforce design
│   ├── workforce-analysis.md
│   ├── skills-spec-template.md
│   ├── rules-tests-template.md
│   └── workflow-template.md
├── 06-examples/                ← Vi du thuc te
│   └── example-content-marketing.md
└── resources/                  ← Tai lieu tham khao
    └── description-anti-patterns.md

vibe-company-orchestrator/
└── SKILL.md                    ← File chinh

vibe-aiworkforce-gps/
└── SKILL.md                    ← File chinh
```

---

## Cap nhat

```bash
# Cap nhat tu repo moi nhat
cd ai_native_company/community_version
git pull

# Copy lai skills
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/
cp -r skills/vibe-aiworkforce-gps ~/.claude/skills/
```

---

## Van de thuong gap

### Skill khong xuat hien trong danh sach

```bash
# Kiem tra duong dan
ls ~/.claude/skills/vibe-*/SKILL.md

# Neu khong thay → tao thu muc
mkdir -p ~/.claude/skills
# Copy lai skills
```

### Skill trigger khong dung

Moi skill co phan "description" trong frontmatter SKILL.md. Claude Code su dung description de quyet dinh khi nao goi skill. Neu skill khong trigger:

1. Doc phan "When to Use" trong SKILL.md
2. Su dung dung tu khoa mo ta task
3. Go ten skill truc tiep: `/vibe-aiworkforce`

### Loi permission

```bash
# Dam bao quyen doc viet
chmod -R 755 ~/.claude/skills/vibe-*/
```

---

## Skills cho company folder (COMPANY_ROOT)

**QUAN TRONG:** Khi build skills cho doanh nghiep cu the, skills phai luu TRONG company folder — khong chi o `~/.claude/skills/`.

```
# VI TRI CHINH (PRIMARY):
[your-company]/[department]/ai_workforce/[skill-name]/SKILL.md

# VI TRI GOI TU CLI (SECONDARY — copy hoac symlink):
~/.claude/skills/[skill-name]/SKILL.md
```

Skill `vibe-aiworkforce` se tu dong quan ly dieu nay khi ban cung cap `COMPANY_ROOT`.
