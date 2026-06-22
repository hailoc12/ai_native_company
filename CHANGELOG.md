# Changelog

Tất cả thay đổi quan trọng của dự án sẽ được ghi lại tại đây.

Format dựa trên [Keep a Changelog](https://keepachangelog.com/vi/),
và [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.1.0] — 2026-06-22

Bản nâng cấp **skills lên cấu trúc v2.0.0** — từ SKILL.md đơn lẻ sang package đầy đủ: schema contract, validator, hooks giảm hallucination, synthetic data và test suite.

### Thêm mới
- **Cấu trúc hỗ trợ đầy đủ** cho cả 2 skill — mỗi skill giờ gồm:
  - `skill.json` — metadata machine-readable (phases, dependencies, quality gates)
  - `hooks.json` + `script/install_hooks.sh` — PreToolUse/PostToolUse bảo vệ `template/` và `archive/`
  - `schema/` — JSON Schema cho mọi artifact (workforce-analysis, workflow-design, skill-spec, company-okr, quality-standards, handoff-brief, execution-log)
  - `script/validator.py` — validate artifact chống schema drift
  - `script/anonymizer.py` — strip thông tin cá nhân / API keys khỏi output
  - `script/log_helper.py` + `script/review_queue.py` — execution log + review queue
  - `test/` — smoke test, trigger validation, schema-validation test suite
  - `synthetic-data/` — sample inputs/outputs để chạy thử
  - `kb/`, `prompt/`, `resources/` — knowledge base + reusable prompts
- **vibe-aiworkforce** bổ sung `05-templates/` (4 template) và `06-examples/`

### Cải thiện
- **vibe-company-orchestrator v2.0** — đồng bộ **Schema & Guardrail contract** với vibe-aiworkforce: emit `evidence/confidence/need_review` cho OKR + Quality Standards, handoff-brief schema khi giao việc cho AI Workforce
- **vibe-aiworkforce v2.0** — 7 substep build pipeline (schema → validator → skill.json → anonymizer preflight → hooks → execution log → evidence validation), quality gates với `min_confidence: 0.7`
- Cả hai skill dùng chung `execution-log-entry.schema.json` → log format thống nhất

### Loại bỏ
- Các file `SKILL.md.backup-*` (snapshot trung gian) — không đưa vào repo

---

## [1.0.3] — 2026-05-17

### Thêm mới
- **Hướng dẫn cài đặt đa nền tảng** — hỗ trợ macOS và Windows
- **Script cài đặt tự động** cho Claude Code, Antigravity, OpenClaw, Codex
- **Install guide chi tiết** (`docs/install-guide.md`) — hướng dẫn từng bước cho từng ứng dụng

### Cải thiện
- **README.md** — viết lại toàn bộ bằng tiếng Việt có dấu, chuyên nghiệp
- **vibe-aiworkforce** bổ sung hệ thống quản lý chất lượng hoàn chỉnh:
  - **SOP State Machine** — quản lý quy trình với 5 trạng thái chuẩn (template → input → processing → output → archive)
  - **SLI/SLO/SLA** — quản lý chất lượng đầu ra của AI Worker (Service Level Indicator / Objective / Agreement)
  - **KRI/KPI/OKR** — quản lý mục tiêu và báo cáo hiệu suất (Key Result Indicator / Key Performance Indicator / Objectives and Key Results)
  - **Error Budget & Incident Management** — xử lý khi chất lượng không đạt SLO
- **vibe-company-orchestrator** tích hợp Porter Value Chain, Archimate, IPO, RACI

### Loại bỏ
- **vibe-aiworkforce-gps** — skill riêng cho Alobase, không phù hợp bản community. Chức năng điều phối đã tích hợp trong `vibe-aiworkforce`

---

## [1.2.0] — 2026-05-17

### Thêm mới
- **vibe-aiworkforce** skill — Xây dựng AI Workforce chuyên biệt cho doanh nghiệp
- **vibe-company-orchestrator** skill — Thiết kế toàn bộ công ty thành hệ thống SOP
- **vibe-aiworkforce-gps** skill — AI Chief of Staff điều phối task
- **KWSR Framework** — 4 lớp tổ chức: Knowledge → Workflow → Skill → Rule
- **SOP State Machine** — 5 trạng thái chuẩn cho mỗi SOP
- **Ebook** "Hướng dẫn vận hành OPC cùng A.I Workforce v1.2" (markdown + docx)
- **Sample company** AINS — công ty mẫu OPC thực tế
- **Sample second brain** — cấu trúc Second Brain cho doanh nghiệp
- README, LICENSE, CONTRIBUTING, CODE_OF_CONDUCT
- Scripts: SOP folder creation, auto-archive, migration

---

## [1.0.0] — 2026-05-01

### Thêm mới
- Mô hình AI Native Company ban đầu
- 7 Trụ cột OPC
- Mô hình chuyển đổi A.I 1+1+N
- Tài liệu khoa học AI Workforce cho SMB
