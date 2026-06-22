# AI Native Company — Community Edition

> **Mô hình tự động hóa vận hành doanh nghiệp bằng A.I Workforce — tối ưu cho Solopreneur và SMEs.**

[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Made in Vietnam](https://img.shields.io/badge/Made%20in-Vietnam%20%E2%9C%94-red)](https://en.wikipedia.org/wiki/Vietnam)

---

## Giới thiệu

**AI Native Company** là mô hình vận hành doanh nghiệp mới, nơi:

- **1 người** có thể vận hành với năng lực tương đương **15–20 người**
- **AI Worker** không phải công cụ — mà là **nhân sự số** chuyên biệt
- **Chi phí vận hành giảm 97%** nhưng chất lượng đầu ra không giảm
- **SOP + SLI + KPI + Knowledge + Skill = Con người số** — mỗi AI worker có vai trò, trách nhiệm, quy trình, chất lượng, kiến thức, và mục tiêu rõ ràng

Dự án này cung cấp **công cụ và phương pháp** để bất kỳ Solopreneur hay SME nào cũng có thể:

1. Thiết kế toàn bộ cấu trúc công ty thành folder structure + SOP markdown
2. Xây dựng AI Workforce chuyên biệt cho từng phòng ban
3. Vận hành doanh nghiệp bằng AI 24/7 — con người chỉ giám sát và quyết định

---

## Người sáng tác

**Lộc Đặng** — người tiên phong trong mô hình One Person Company (OPC) tại Việt Nam.

- 3+ năm kinh nghiệm tư vấn chuyển đổi AI cho 250+ doanh nghiệp SMEs
- Sáng lập **AI Native Solutions (AINS)** — công ty OPC thực tế, vận hành bởi 1 người + 10 AI Workers
- Triết lý: *"Founder không làm việc — Founder thiết kế cách làm việc."*

---

## Thư mục chính

```
community_version/
├── README.md                    ← Bạn đang đọc
├── LICENSE                      ← CC BY-NC-SA 4.0
├── CONTRIBUTING.md              ← Hướng đóng góp
├── CHANGELOG.md                 ← Lịch sử thay đổi
├── CODE_OF_CONDUCT.md           ← Quy tắc ứng xử
├── skills/                      ← Claude Skills sẵn dùng (cấu trúc v2.0.0)
│   ├── vibe-aiworkforce/        ← Skill xây dựng AI Workforce
│   └── vibe-company-orchestrator/ ← Skill thiết kế toàn bộ công ty
│   └── (mỗi skill gồm: SKILL.md + skill.json + schema/ + script/ + test/ + kb/ + prompt/ + synthetic-data/)
├── docs/                        ← Ebook + tài liệu
│   ├── ebook/                   ← Ebook đầy đủ (markdown)
│   ├── docx/                    ← Bản DOCX
│   └── images/                  ← Hình ảnh minh họa
├── examples/                    ← Ví dụ thực tế
│   ├── sample-company/          ← Công ty mẫu AINS
│   └── sample-second-brain/     ← Second Brain mẫu
└── src/                         ← Scripts và công cụ
```

---

## Bắt đầu nhanh

### Yêu cầu

- **Claude Code** (CLI hoặc IDE extension) — [cài đặt tại đây](https://claude.ai/code)
- **Claude Pro/Max** hoặc API key có Claude Sonnet 4+ trở lên

### Cài đặt Skills

```bash
# 1. Clone repo
git clone https://github.com/your-org/ai_native_company.git
cd ai_native_company/community_version

# 2. Copy skills vào Claude Code skills folder
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/

# 3. Xác minh
ls ~/.claude/skills/vibe-*/SKILL.md
```

### Sử dụng đầu tiên

```
# Trong Claude Code, gõ:

/vibe-company-orchestrator
→ Mô tả công ty của bạn → Skill sẽ tạo toàn bộ folder structure + SOP

/vibe-aiworkforce
→ Mô tả task cần tự động hóa → Skill sẽ thiết kế AI Workforce
```

---

## 2 Skill chính

> Từ **v1.1.0**, mỗi skill không chỉ là `SKILL.md` đơn lẻ mà là **package đầy đủ v2.0.0**: schema contract (`schema/`), validator + anonymizer (`script/`), hooks giảm hallucination (`hooks.json`), test suite (`test/`), sample data (`synthetic-data/`), và metadata machine-readable (`skill.json`). Xem [CHANGELOG.md](CHANGELOG.md) để biết chi tiết.

### 1. vibe-company-orchestrator

**Thiết kế toàn bộ công ty thành hệ thống.**

- Triết lý "Trần sao âm vậy" — sao chép mô hình công ty thực tế
- 3 Layer Architecture: Chiến lược / Vận hành / Hỗ trợ
- Từ folder trống → sinh ra toàn bộ company structure + SOP markdown
- Tích hợp Porter Value Chain, Archimate, IPO, RACI
- **v2.0**: đồng bộ Schema & Guardrail contract với vibe-aiworkforce — emit `evidence/confidence/need_review` cho OKR + Quality Standards

### 2. vibe-aiworkforce

**Chuyển hóa task/workflow thành nhân sự số hoàn chỉnh.**

- KWSR Framework: Knowledge → Workflow → Skill → Rule
- 5 Deliverables: Folder Structure + Workflow + Skills + Rules & Tests + SOP State Machine
- Skill Quality Router: TEMPLATED / EXPERT-CLONE / GPS-ENHANCED
- Tự động build + install skills vào Claude Code
- **v2.0**: 7-substep build pipeline (schema → validator → skill.json → anonymizer preflight → hooks → execution log → evidence validation)

---

## Mô hình chuyển đổi A.I 1+1+N

```
Giai đoạn 1: AI như công cụ (Tool Adoption)
    ↓
Giai đoạn 2: AI workforce tự động hóa quy trình (Workflow Transformation)
    ↓
Giai đoạn 3: AI kết nối qua MCP/API (Process Integration)
    ↓
Giai đoạn 4: Công ty thiết kế cho AI từ đầu (AI-Native Company)
```

---

## KWSR Framework

Mỗi phòng ban có 4 lớp tổ chức chuẩn:

| Lớp | Thư mục | Nội dung |
|-----|---------|----------|
| **K**nowledge | `_knowledge/` | AI cần BIẾT gì — charter, KPI, domain reference |
| **W**orkflow | `_workflow/` | Công việc CHẠY thế nào — SOP index, dependencies |
| **S**kill | `_skills-agents/` | AI CÓ THỂ làm gì — worker roster, capability matrix |
| **R**ule | `_rules/` | AI KHÔNG ĐƯỢC làm gì — policies, quality gates, escalation |

---

## SOP State Machine

Mỗi SOP có 5 trạng thái chuẩn:

```
template/  →  input/  →  processing/  →  output/  →  archive/
(READ-ONLY)   (Queued)   (In-flight)     (Done)      (Immutable)
```

---

## Tài liệu

- **Ebook đầy đủ**: `docs/ebook/` — "Hướng dẫn vận hành OPC cùng A.I Workforce v1.2"
- **Bản DOCX**: `docs/docx/`
- **Công ty mẫu**: `examples/sample-company/`

---

## Đóng góp

Xem [CONTRIBUTING.md](CONTRIBUTING.md) để biết cách đóng góp.

---

## Giấy phép

Dự án này sử dụng giấy phép **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)**.

- **Cho phép**: Chia sẻ, sửa đổi, phân phát trong mọi môi trường
- **Điều kiện**: Ghi người sáng tác Lộc Đặng, không dùng mục đích thương mại, chia sẻ cùng giấy phép
- **Mục đích thương mại**: Liên hệ locdang.com để thỏa thuận giấy phép thương mại

Xem file [LICENSE](LICENSE) để biết thêm chi tiết.

---

## Liên hệ

- **Website**: [locdang.com](https://locdang.com)
- **Email**: Liên hệ qua website
- **GitHub Issues**: Để báo lỗi hoặc đề xuất cải thiện

---

*"Founder không làm việc — Founder thiết kế cách làm việc."*

*— Lộc Đặng*
