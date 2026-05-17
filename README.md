# AI Native Company — Community Edition

> **Mo hinh tu dong hoa van hanh doanh nghiep bang A.I Workforce — toi uu cho Solopreneur va SMEs.**

[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Made in Vietnam](https://img.shields.io/badge/Made%20in-Vietnam%20%E2%9C%94-red)](https://en.wikipedia.org/wiki/Vietnam)

---

## Giới thiệu

**AI Native Company** la mo hinh van hanh doanh nghiep moi, noi:

- **1 nguoi** co the van hanh voi nang luc tuong duong **15-20 nguoi**
- **AI Worker** khong phai cong cu — ma la **nhan su so** chuyen biet
- **Chi phi van hanh giam 97%** nhung chat luong dau ra khong giam
- **SOP + Skill = Con nguoi so** — moi AI worker co vai tro, trach nhiem, va KPI ro rang

Du an nay cung cap **cong cu va phuong phap** de bat cu Solopreneur hay SME nao cung co the:

1. Thiet ke toan bo cau truc cong ty thanh folder structure + SOP markdown
2. Xay dung AI Workforce chuyen biet cho tung phong ban
3. Van hanh doanh nghiep bang AI 24/7 — con nguoi chi giam sat va quyet dinh

---

## Nguoi sang tac

**LOC DANG** — nguoi tien phong trong mo hinh One Person Company (OPC) tai Viet Nam.

- 3+ nam kinh nghiem tu van chuyen doi AI cho 250+ doanh nghiep SMEs
- Sang lap **AI Native Solutions (AINS)** — cong ty OPC thuc te, van hanh boi 1 nguoi + 10 AI Workers
- Triet ly: *"Founder khong lam viec — Founder thiet ke cach lam viec."*

---

## Thu muc chinh

```
community_version/
├── README.md                    ← Ban dang doc
├── LICENSE                      ← CC BY-NC-SA 4.0
├── CONTRIBUTING.md              ← Huong dong gop
├── CHANGELOG.md                 ← Lich su thay doi
├── CODE_OF_CONDUCT.md           ← Quy tac ung xu
├── skills/                      ← Claude Skills san dung
│   ├── vibe-aiworkforce/        ← Skill xay dung AI Workforce
│   ├── vibe-company-orchestrator/ ← Skill thiet ke toan bo cong ty
│   └── vibe-aiworkforce-gps/    ← Skill AI Chief of Staff
├── docs/                        ← Ebook + tai lieu
│   ├── ebook/                   ← Ebook day du (markdown)
│   ├── docx/                    ← Ban DOCX
│   └── images/                  ← Hinh anh minh hoa
├── examples/                    ← Vi du thuc te
│   ├── sample-company/          ← Cong ty mau AINS
│   └── sample-second-brain/     ← Second Brain mau
└── src/                         ← Scripts va cong cu
```

---

## Bat dau nhanh

### Yeu cau

- **Claude Code** (CLI hoac IDE extension) — [cai dat tai day](https://claude.ai/code)
- **Claude Pro/Max** hoac API key co Claude Sonnet 4+ tro len

### Cai dat Skills

```bash
# 1. Clone repo
git clone https://github.com/your-org/ai_native_company.git
cd ai_native_company/community_version

# 2. Copy skills vao Claude Code skills folder
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/
cp -r skills/vibe-aiworkforce-gps ~/.claude/skills/

# 3. Verify
ls ~/.claude/skills/vibe-*/SKILL.md
```

### Su dung dau tien

```
# Trong Claude Code, go:

/vibe-company-orchestrator
→ Mo ta cong ty cua ban → Skill se tao toan bo folder structure + SOP

/vibe-aiworkforce
→ Mo ta task can tu dong hoa → Skill se thiet ke AI Workforce

/vibe-aiworkforce-gps
→ Nhan bat ky task nao → Skill se route den dung department + SOP
```

---

## 3 Skill chinh

### 1. vibe-company-orchestrator

**Thiet ke toan bo cong ty thanh he thong.**

- Triet ly "Tran sao am vay" — sao chep mo hinh cong ty thuc te
- 3 Layer Architecture: Chien luoc / Van hanh / Ho tro
- Tu folder trong → sinh ra toan bo company structure + SOP markdown
- Tich hop Porter Value Chain, Archimate, IPO, RACI

### 2. vibe-aiworkforce

**Chuyen hoa task/workflow thanh nhan su so hoan chinh.**

- KWSR Framework: Knowledge → Workflow → Skill → Rule
- 5 Deliverables: Folder Structure + Workflow + Skills + Rules & Tests + SOP State Machine
- Skill Quality Router: TEMPLATED / EXPERT-CLONE / GPS-ENHANCED
- Tu dong build + install skills vao Claude Code

### 3. vibe-aiworkforce-gps

**AI Chief of Staff — dieu phoi task den dung nguoi.**

- Nhan task tu nhien (Viet/Anh) → route den dung department
- Enforce SOP compliance
- Report ket qua theo template chuan

---

## Mo hinh chuyen doi A.I 1+1+N

```
Giai doan 1: AI nhu cong cu (Tool Adoption)
    ↓
Giai doan 2: AI workforce tu dong hoa quy trinh (Workflow Transformation)
    ↓
Giai doan 3: AI ket noi qua MCP/API (Process Integration)
    ↓
Giai doan 4: Cong ty thiet ke cho AI tu dau (AI-Native Company)
```

---

## KWSR Framework

Moi phong ban co 4 lop to chuc chuan:

| Lop | Thu muc | Noi dung |
|-----|---------|----------|
| **K**nowledge | `_knowledge/` | AI can BIET gi — charter, KPI, domain reference |
| **W**orkflow | `_workflow/` | Cong viec CHAY the nao — SOP index, dependencies |
| **S**kill | `_skills-agents/` | AI CO THE lam gi — worker roster, capability matrix |
| **R**ule | `_rules/` | AI KHONG DUOC lam gi — policies, quality gates, escalation |

---

## SOP State Machine

Moi SOP co 5 trang thai chuan:

```
template/  →  input/  →  processing/  →  output/  →  archive/
(READ-ONLY)   (Queued)   (In-flight)     (Done)      (Immutable)
```

---

## Tai lieu

- **Ebook day du**: `docs/ebook/` — "Huong dan van hanh OPC cung A.I Workforce v1.2"
- **Ban DOCX**: `docs/docx/`
- **Cong ty mau**: `examples/sample-company/`

---

## Dong gop

Xem [CONTRIBUTING.md](CONTRIBUTING.md) de biet cach dong gop.

---

## Giay phep

Du an nay su dung giay phep **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)**.

- **Cho phep**: Chia se, sua doi, phan phat trong moi moi truong
- **Dieu kien**: Ghi nguoi sang tac LOC DANG, khong dung muc dich thuong mai, chia se cung giay phep
- **Muc dich thuong mai**: Lien he locdang.com de thoa thuan giay phep thuong mai

Xem file [LICENSE](LICENSE) de biet them chi tiet.

---

## Lien he

- **Website**: [locdang.com](https://locdang.com)
- **Email**: Lien he qua website
- **GitHub Issues**: De bao loi hoac de xuat cai thien

---

*"Founder khong lam viec — Founder thiet ke cach lam viec."*

*— LOC DANG*
