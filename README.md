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

Hai skill là **gói chuẩn `SKILL.md`** nên chạy được trên mọi ứng dụng hỗ trợ kỹ năng Claude: **Claude Code, Antigravity, Codex, OpenClaw, Hermes**… Cài đặt chỉ là copy thư mục skill vào đúng vị trí.

### Yêu cầu

| Yêu cầu | Chi tiết |
|---------|----------|
| Hệ điều hành | macOS 12+, Linux, hoặc Windows 10/11 (WSL2 / PowerShell) |
| Git | [cài git](https://git-scm.com/downloads) |
| Ứng dụng AI | Một trong: Claude Code, Antigravity, Codex, OpenClaw, Hermes |
| Mô hình | Khuyến nghị Claude Sonnet 4+ (hoặc mô hình tương đương có hỗ trợ tool use / skills) |

### Cài đặt nhanh (1 lệnh)

Repo đi kèm script tự động — hỏi bạn chọn ứng dụng rồi copy skills vào đúng thư mục.

**macOS / Linux:**

```bash
git clone https://github.com/hailoc12/ai_native_company.git
cd ai_native_company/community_version
bash src/install.sh                 # script hỏi bạn chọn ứng dụng
# hoặc cài thẳng cho 1 ứng dụng:
bash src/install.sh --app claude-code
```

**Windows (PowerShell):**

```powershell
git clone https://github.com/hailoc12/ai_native_company.git
cd ai_native_company\community_version
powershell -ExecutionPolicy Bypass -File src\install.ps1
powershell -ExecutionPolicy Bypass -File src\install.ps1 -App claude-code
```

### Cài đặt thủ công theo ứng dụng

Mỗi ứng dụng lưu skills ở một thư mục riêng. Copy cả 2 thư mục `skills/vibe-aiworkforce` và `skills/vibe-company-orchestrator` vào thư mục tương ứng:

| Ứng dụng | Thư mục skills (macOS/Linux) | Thư mục skills (Windows) |
|----------|------------------------------|--------------------------|
| **Claude Code** | `~/.claude/skills/` | `%USERPROFILE%\.claude\skills\` |
| **Antigravity** | `~/.antigravity/skills/` | `%USERPROFILE%\.antigravity\skills\` |
| **Codex (OpenAI)** | `~/.codex/agents/` | `%USERPROFILE%\.codex\agents\` |
| **OpenClaw** | `~/.openclaw/skills/` | `%USERPROFILE%\.openclaw\skills\` |
| **Hermes** | `~/.hermes/skills/` | `%USERPROFILE%\.hermes\skills\` |

Ví dụ Claude Code trên macOS/Linux:

```bash
mkdir -p ~/.claude/skills
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/
```

> **Lưu ý:** Một số ứng dụng (Antigravity, Hermes) có thể đổi vị trí thư mục theo phiên bản. Nếu skill không xuất hiện, xem hướng dẫn chi tiết tại [`docs/install-guide.md`](docs/install-guide.md).

### Xác minh cài đặt

```bash
# Phải thấy file SKILL.md trong cả 2 thư mục
ls ~/.claude/skills/vibe-*/SKILL.md
```

Sau đó khởi động lại ứng dụng AI, gõ:

```
/vibe-company-orchestrator
```

Nếu skill phản hồi → cài đặt thành công.

### Sử dụng đầu tiên

Hai skill dùng theo thứ tự: **thiết kế công ty trước, rồi mới xây nhân sự số cho từng phòng ban.**

**Bước 1 — Thiết kế công ty** (chạy trong folder trống):

```
/vibe-company-orchestrator
→ Mô tả công ty (ngành, quy mô, mục tiêu)
→ Skill sinh ra toàn bộ cấu trúc: phòng ban, charter, OKR, SOP, RACI, quality standards
```

**Bước 2 — Xây AI Workforce cho từng phòng ban:**

```
/vibe-aiworkforce
→ Chỉ định COMPANY_ROOT (folder công ty vừa tạo) + mô tả task
→ Skill thiết kế nhân sự số: folder KWSR, workflow, skills, rules & tests, SOP state machine
→ Tự động build và cài skill con vào Claude Code
```

**Bước 3 — Vận hành:**

Mỗi SOP giờ là một state machine (`template → input → processing → output → archive`). Giao việc vào `input/`, AI chạy ở `processing/`, kết quả ra `output/`, lưu trữ ở `archive/`. Con người chỉ giám sát qua execution log và review queue.

> Đầy đủ ví dụ thực tế (công ty mẫu AINS, second brain mẫu) nằm trong [`examples/`](examples/) và ebook [`docs/ebook/`](docs/ebook/).

---

## 2 Skill chính

> Từ **v1.2**, mỗi skill không chỉ là `SKILL.md` đơn lẻ mà là **package đầy đủ v2.0.0**: schema contract (`schema/`), validator + anonymizer (`script/`), hooks giảm hallucination (`hooks.json`), test suite (`test/`), sample data (`synthetic-data/`), và metadata machine-readable (`skill.json`). Xem [CHANGELOG.md](CHANGELOG.md) để biết chi tiết.

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

## Nguyên lý thiết kế

Hai skill không sinh ra để "generate template". Chúng được xây dựng xoay quanh một câu hỏi cốt lõi: **làm thế nào để AI Agent trở thành nhân sự số đáng tin cậy — kết quả lặp lại được, dễ kiểm soát, có thể audit?**

Câu trả lời nằm ở **harness engineering**: một tầng kỹ thuật bọc quanh LLM, ép nó làm việc theo quy tắc, không bịa, không tự ý ghi đè, và xin ý kiến người ở những điểm chạm quan trọng. Đó chính là trọng tâm nâng cấp của **v1.2**.

### vibe-company-orchestrator — 5 trụ cột

| Trụ | Ý nghĩa |
|-----|---------|
| **Trần sao âm vậy** | Sao chép tối đa mô hình công ty thực tế đã proven, không phát minh lại bánh xe (tham chiếu ISO 9001, COBIT, COSO, PMBOK) |
| **Explicit Thinking** | Mọi thứ tường minh — mục tiêu, input, output, quyết định, KPI, vai trò — không assumption ngầm |
| **IPO Value Chain (recursive)** | Công ty = chuỗi mắt xích `Input → Process → Output`. Mở rộng bằng **ICOM**: Input, Control, ràng buộc, Output, Mechanism. Phân rã đệ quy: Company → Department → Process → Task |
| **Archimate + Porter** | 3 lớp: Chiến lược / Vận hành / Hỗ trợ. Mỗi hoạt động là mắt xích chuỗi giá trị |
| **SOP-first** | Mọi quy trình đều có SOP markdown, liên kết chặt, dùng được ngay — giao cho team người hoặc AI workforce |

> Đầu ra: từ folder trống → sinh ra toàn bộ cấu trúc công ty + SOP, mỗi phòng ban có charter, OKR, RACI, và quality standards (SLI/SLO/SLA).

### vibe-aiworkforce — nguyên lý tổ chức nhân sự số

- **Mỗi skill = một nhân viên chuyên biệt** với role, responsibility, KPI rõ ràng
- **Orchestrator = Manager** — điều phối, không tự execute
- **Workflow = SOP** — quy trình chuẩn, audit được, cải tiến được
- **Rules = Company Policy** — không thương lượng, phải enforce
- **Tests = QA/HR Review** — tự động + thủ công, không skip

Mỗi nhân sự số có 4 lớp tổ chức (KWSR) và phải tuân thủ **8 thành phần bắt buộc**: `SKILL.md` + `skill.json` + `kb/` + `prompt/` + `schema/` + `script/` + `test/` + `synthetic-data/` (+ `hooks.json`).

### Harness layer (v1.2) — 7 cơ chế tin cậy

Đây là phần giúp "công ty số" vận hành **đáng tin cậy** thay vì chỉ "đẹp trên giấy":

| Cơ chế | Vấn đề giải quyết |
|--------|-------------------|
| **Schema cho mọi data I/O** | Ép output có cấu trúc cố định → AI không tùy tiện đổi format |
| **Evidence + confidence_score** | Mỗi khẳng định phải kèm bằng chứng trích nguyên văn + điểm tin cậy (ngưỡng 0.7) → chống bịa |
| **Validator (deterministic)** | Kiểm tra artifact theo schema bằng phương pháp tất định → giảm hallucination |
| **Execution log** | Ghi lại mọi action (`execution_log.jsonl`) → audit trail đầy đủ |
| **PII anonymizer** | Tự lọc thông tin nhạy cảm / API key trước khi dữ liệu đi vào AI |
| **HITL review queue** | Xin ý kiến người ở các điểm chạm quan trọng (`need_review`) |
| **Hooks bảo vệ** | Chặn AI ghi đè `template/` (chỉ đọc) và `archive/` (bất biến) |

Cùng với các ưu điểm truyền thống của v1 — vận hành theo **SOP State Machine**, quản lý chất lượng theo **SLI/SLO**, quản trị mục tiêu theo **OKR** — bộ khung này biến mỗi AI worker thành một "con người số" có vai trò, trách nhiệm, quy trình, chất lượng, kiến thức và mục tiêu rõ ràng: **SOP + SLI + KPI + Knowledge + Skill = Con người số.**

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
