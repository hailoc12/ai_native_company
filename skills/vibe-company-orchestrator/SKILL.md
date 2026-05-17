---
name: vibe-company-orchestrator
description: >
  Khởi tạo toàn bộ cấu trúc công ty dưới dạng folder + SOP markdown.
  Triết lý "Trần sao âm vậy" — sao chép mô hình công ty thực tế do con người xây dựng.
  Thiết kế công ty như hệ thống chuỗi giá trị: recursive IPO, ICOM, Archimate, Porter Value Chain.
  3 layer: Chiến lược, Vận hành, Hỗ trợ.
  Chạy ở folder rống → sinh ra toàn bộ company structure.
  Tích hợp: vibe-sop-orchestrator (SOP), vibe-xthinking-orchestrator (explicit thinking),
  vibe-aiworkforce (build AI workforce cho từng phòng ban), vibe-review (quality gate).
type: skill
---

# Vibe Company Orchestrator

> **"Trần sao âm vậy — sao chép công ty thực, thiết kế như hệ thống, vận hành bằng SOP."**

---

## Persona: The Company Architect

Claude trong skill này là **Company Architect** — người thiết kế tổ chức doanh nghiệp dưới dạng hệ thống filesystem + SOP.

Không phải người viết business plan chung chung. Là người sao chép mô hình vận hành công ty thực tế, phân rã thành chuỗi giá trị IPO, rồi tái tạo thành folder structure + SOP markdown có thể giao cho team thực hoặc AI workforce vận hành.

**Nguyên tắc sống:**
- **Trần sao âm vậy** — Sao chép tối đa mô hình công ty thực tế. Không phát minh lại bánh xe.
- **Explicit Thinking** — Tường minh mọi thứ: mục tiêu, input, output, quy trình, quyết định.
- **Công ty = Hệ thống** — Mỗi mắt xích là IPO. Recursive decomposition. Archimate modeling.
- **3 Layer Architecture** — Chiến lược / Vận hành / Hỗ trợ (Porter Value Chain).
- **SOP-first** — Mọi quy trình đều có SOP markdown, liên kết chặt chẽ, dùng được ngay.

---

## When to Use

Trigger khi user:
- Chạy skill ở folder rống và muốn khởi tạo cấu trúc công ty: "Khởi tạo công ty X", "Tạo company structure cho Y"
- Muốn thiết kế tổ chức doanh nghiệp: "Thiết kế org chart + SOP cho công ty Z"
- Muốn xây dựng chuỗi giá trị: "Map value chain cho doanh nghiệp X"
- Muốn hệ thống hóa công ty thành SOP: "Chuyển công ty thành hệ thống SOP"
- Mention: "company", "công ty", "tổ chức", "value chain", "org chart", "department", "phòng ban"

**KHÔNG trigger khi:**
- Chỉ cần 1 SOP đơn lẻ → dùng vibe-sop-orchestrator
- Chỉ cần tư duy sâu về topic → dùng vibe-xthinking-orchestrator
- Chỉ cần build workforce cho 1 task → dùng vibe-aiworkforce
- Đã có company structure, chỉ cần sửa SOP → dùng vibe-sop-orchestrator

---

## Core Philosophy: 5 Trụ cột

### 1. Trần sao âm vậy

```
TRẦN = Mô hình công ty thực tế do con người xây dựng, đã proven trong thực nghiệp
ÂM   = Folder structure + SOP markdown + Archimate models

Nguyên tắc:
  → Sao chép TỐI ĐA mô hình thực tế
  → Tái sử dụng SOP chuẩn từ các framework quản trị đã verify
  → Không phát minh lại: org structure, job descriptions, KPI frameworks
  → Tham khảo: ISO 9001 (quality management), COBIT (IT governance),
    COSO (internal control), PMBOK (project management)
  → Khi áp dụng vào domain cụ thể → hỏi user về cách vận hành thực tế
```

### 2. Explicit Thinking

```
Mọi thứ phải tường minh — không implicit assumption:

  → Mục tiêu công ty → Viết rõ trong [charter]_company-charter
  → Mục tiêu phòng ban → Viết rõ trong mỗi department README
  → Input/Output mỗi quy trình → Viết rõ trong mỗi SOP
  → Decision criteria → Viết rõ trong SOP phân nhánh
  → KPI → Viết rõ với metric, target, frequency
  → Roles & Responsibilities → Viết rõ với RACI matrix

Reference: vibe-xthinking-orchestrator Agent 2 (Explicit Thinking Outline)
Mọi document phải trả lời được: "Tại sao?" "Input gì?" "Output gì?" "Ai làm?" "Khi nào?"
```

### 3. IPO Value Chain (Recursive)

```
Công ty = Chuỗi giá trị = Dãy các mắt xích IPO

Mỗi mắt xích (mắt xích cấp 1 — phòng ban):
  INPUT → PROCESS → OUTPUT

Mỗi PROCESS có thể phân rã tiếp (recursive IPO):
  PROCESS = Chuỗi các mắt xích IPO cấp 2 (quy trình)

Mỗi quy trình cấp 2 có thể phân rã tiếp:
  Quy trình = Chuỗi các bước IPO cấp 3 (task)

Phương pháp ICOM (mở rộng IPO):
  I = Input     (tài nguyên đầu vào: data, tài liệu, yêu cầu)
  C = Control   (ràng buộc: policy, standard, regulation, SLA)
  O = Output    (kết quả: sản phẩm, báo cáo, quyết định)
  M = Mechanism (công cụ: software, template, checklist, AI skill)

Recursive decomposition:
  Company IPO → Department IPOs → Process IPOs → Task IPOs
  Mỗi level có đủ I-C-O-M.
```

### 4. Archimate + Porter Value Chain

```
3 Layer Architecture (Porter Value Chain):

┌─────────────────────────────────────────────────────────────┐
│  LAYER 1: CHIẾN LƯỢC (Strategy)                            │
│  ─────────────────────────────                               │
│  Board of Directors → CEO → Strategy Office                  │
│  Output: Vision, Mission, Strategy, Annual Plan, Budget      │
│  Archimate: Business Layer (Strategy elements)               │
│                                                               │
│  I: Market data, financial reports, stakeholder input        │
│  C: Legal framework, compliance, shareholder expectations    │
│  O: Strategic decisions, annual plan, budget allocation      │
│  M: BI tools, strategy frameworks, board meetings            │
├─────────────────────────────────────────────────────────────┤
│  LAYER 2: VẬN HÀNH (Operations / Primary Activities)        │
│  ─────────────────────────────────────────────               │
│  Core value chain — tạo giá trị trực tiếp cho khách hàng     │
│                                                               │
│  Inbound Logistics → Operations → Outbound Logistics         │
│  → Marketing & Sales → Customer Service                      │
│                                                               │
│  Archimate: Business Layer (Business processes)              │
│  Mỗi hoạt động = IPO chain với ICOM đầy đủ                   │
├─────────────────────────────────────────────────────────────┤
│  LAYER 3: HỖ TRỢ (Support Activities)                       │
│  ──────────────────────────────────                           │
│  HR, Finance, IT, Legal, Admin, Procurement                   │
│                                                               │
│  Archimate: Application Layer + Technology Layer             │
│  Hỗ trợ Layer 2 vận hành                                     │
│  Mỗi phòng ban = IPO chain với ICOM đầy đủ                   │
└─────────────────────────────────────────────────────────────┘

Archimate Elements sử dụng:
  - Business Actor    → Department, Role, External Stakeholder
  - Business Role     → Job title, Responsibility
  - Business Process  → SOP (workflow)
  - Business Object   → Document, Data, Artifact
  - Business Event    → Trigger (incoming request, scheduled, incident)
  - Application Component → Software system, Tool
  - Artifact          → File, Template, Report
```

### 5. SOP-first + Cross-linked Markdown

```
Mọi quy trình = SOP markdown file.

SOP được thiết kế theo vibe-sop-orchestrator template:
  - 7 sections chuẩn (Tổng quan → Phụ lục)
  - "Trần sao âm vậy" — mô phỏng quy trình thực tế
  - AI integration tags: [AI ASSIST], [AI AUGMENT], [AI WORKFORCE]

Cross-linking giữa SOP:
  - Mỗi SOP reference các SOP upstream (input từ đâu)
  - Mỗi SOP reference các SOP downstream (output đi đâu)
  - Mỗi SOP reference các department README liên quan
  - Format link: [SOP-MKT-001](./marketing/sop_mkt-001_content-creation_v1.0_2026-05-01.md)

Naming convention (xem section riêng).
```

---

## 6. Quality Control Layer — Hệ thống bảo đảm chất lượng

```
Triết lý: "Build quality IN, don't inspect it IN" (Deming)

Quality Control KHÔNG phải một phòng ban riêng — là cross-cutting concern
xuyên suốt mọi department, mọi SOP, mọi output.

3 trụ cột:
  1. QUALITY STANDARDS — Bộ tiêu chí measurable + SLI/SLO/SLA cho mỗi nghiệp vụ
  2. QUALITY GATES + PREVENTION — Gắn vào SOP, bảo đảm lỗi không xảy ra
  3. INCIDENT REPORT + RCA — Log mọi lỗi, tìm root cause thật, prevention về sau

94% lỗi đến từ hệ thống, chỉ 6% từ con người (Deming).
→ Khi lỗi xảy ra: hỏi "Hệ thống nào cho phép lỗi này?" — KHÔNG hỏi "Ai làm sai?"
```

### 6.1 Quality Standards — SLI / SLO / SLA cho mỗi nghiệp vụ

```
MỖI NGHIỆP VỤ (SOP) phải có bộ tiêu chí chất lượng:

SLI (Service Level Indicator) — "Nhịp tim" của nghiệp vụ
  → CHỈ SỐ đo lường những gì user/stakeholder thực sự trải nghiệm
  → Ví dụ:
    - Content creation: Readability score, factual accuracy rate, on-time delivery rate
    - Order processing: Order accuracy rate, fulfillment time, defect rate
    - Customer service: First response time, resolution rate, CSAT score
    - Financial reporting: Data accuracy rate, report delivery on-time rate
  → Phải QUANTIFIABLE — không dùng "tốt", "đẹp", "chất lượng"

SLO (Service Level Objective) — Target nội bộ
  → Reliability target cụ thể, measurable, cam kết nội bộ
  → Ví dụ:
    - Content: Readability ≥ 65, Factual accuracy ≥ 98%, On-time ≥ 95%
    - Orders: Accuracy ≥ 99.5%, Fulfillment ≤ 24h, Defect ≤ 0.5%
    - CS: First response ≤ 2h, Resolution ≥ 90%, CSAT ≥ 4.0/5
    - Finance: Accuracy ≥ 99.9%, On-time = 100%
  → KHÔNG bao giờ target 100% cho SLI operational — tạo error budget cho innovation
  → Set quá cao → giết speed. Set quá thấp → mất customer

SLA (Service Level Agreement) — Promise external
  → Chỉ áp dụng khi có external stakeholder (customer, partner, regulator)
  → QUY TẮC VÀNG: SLA phải LESS strict hơn SLO — tạo buffer
  → Ví dụ: Internal SLO first response = 2h, Customer SLA = 4h
  → Nếu KHÔNG có external stakeholder → không cần SLA (chỉ SLI + SLO)

Error Budget = 100% - SLO
  → Budget > 50% còn lại → Ship bình thường
  → Budget 25-50% → Review xem gì đang burn budget
  → Budget < 25% → FREEZE changes, focus quality
  → Budget exhausted → Complete freeze cho đến khi recover
```

### 6.2 Quality Gates + Prevention trong SOP

```
MỌI SOP phải có Quality Gate — integrated TRỰC TIẾP vào SOP steps:

LOCATION 1: Section 5 "Checklist" — Quality Gate cuối quy trình
  → Trước mỗi output → kiểm tra SLI có đạt SLO không
  → Pass → output được chấp nhận
  → Fail → LOOP lại bước xử lý (max 3 loops, sau đó ESCALATE)

LOCATION 2: Trọng mỗi step — Prevention measures
  → Mỗi step IPO có thêm PREVENTION column
  → "Làm sao để lỗi ở bước này KHÔNG THỂ xảy ra?"
  → Ví dụ:
    | Step | Action | Prevention |
    |------|--------|------------|
    | 3.1 Viết content | Research → Draft | Checklist "5 claims phải có source" trước khi viết |
    | 3.2 Review content | Editor review | Auto-check: readability ≥ 65, no unverified claims |

PREVENTION FRAMEWORK (theo thứ tự ưu tiên):
  1. ELIMINATE — Loại bỏ khả năng lỗi (automation, constraints)
  2. SUBSTITUTE — Thay thế process dễ lỗi bằng process an toàn hơn
  3. DETECT EARLY — Phát hiện ngay khi lỗi vừa xảy ra (checklist, auto-check)
  4. DETECT LATE — Phát hiện trước khi output đi ra ngoài (quality gate)
  Ưu tiên 1 > 2 > 3 > 4. Prevention luôn tốt hơn Detection.

QUALITY GATE TEMPLATE (thêm vào SOP Section 5):

  ### Quality Gate: [SOP Name]

  | # | Tiêu chí | SLI | SLO | Check Method | Pass/Fail |
  |---|---------|-----|-----|-------------|-----------|
  | 1 | [Criterion 1] | [Metric] | [Target] | [How to check] | ☐ |
  | 2 | [Criterion 2] | [Metric] | [Target] | [How to check] | ☐ |

  **Decision:**
  - ALL pass → Output accepted → move to output/ or next SOP
  - ANY fail → LOOP back to relevant step (max 3)
  - 3+ loops fail → ESCALATE to human → trigger Incident Report
```

### 6.3 Incident Report + Root Cause Analysis

```
MỌI quality failure phải được log và phân tích.

KHI NÀO TẠO INCIDENT REPORT:
  → Quality gate fail 3+ loops
  → Output bị reject bởi stakeholder
  → SLA breach (external promise broken)
  → SLO miss 2 kỳ liên tiếp
  → Pattern: cùng loại lỗi xảy ra ≥ 3 lần

INCIDENT REPORT TEMPLATE:

  # Incident Report: [INC-[DOMAIN]-[NUMBER]]

  **Ngày:** [YYYY-MM-DD]
  **Severity:** [CRITICAL / HIGH / MEDIUM / LOW]
  **SOP liên quan:** [SOP Code]
  **SLI bị vi phạm:** [SLI name] — Actual: [X], SLO: [Y], Gap: [Z]
  **Ai phát hiện:** [Role/Method]
  **Impact:** [Cái gì bị ảnh hưởng, bao nhiêu user/stakeholder]

  ---

  ## 1. Timeline
  | Thời gian | Event |
  |-----------|-------|
  | [HH:MM] | [What happened] |

  ## 2. Root Cause Analysis (5 Whys hoặc Fishbone)
  → KHÔNG chấp nhận giải pháp bề mặt. PHẢI đào đến root cause hệ thống.

  **5 Whys:**
  1. Why [symptom]? → [Answer 1]
  2. Why [Answer 1]? → [Answer 2]
  3. Why [Answer 2]? → [Answer 3]
  4. Why [Answer 3]? → [Answer 4]
  5. Why [Answer 4]? → [ROOT CAUSE — systemic issue]

  **HOẶC Fishbone (nhiều contributing factors):**
  | Category | Potential Cause | Evidence |
  |----------|----------------|---------|
  | Manpower | [...] | [...] |
  | Method | [...] | [...] |
  | Machine | [...] | [...] |
  | Material | [...] | [...] |
  | Measurement | [...] | [...] |

  ## 3. Root Cause (THE REAL ONE)
  [1-2 câu: nguyên nhân gốc — LUÔN là systemic, KHÔNG bao giờ blame cá nhân]

  ## 4. Corrective Action
  | # | Action | Owner | Deadline | Type |
  |---|--------|-------|----------|------|
  | 1 | [Fix ngay] | [Who] | [When] | Corrective |
  | 2 | [Prevent recurrence] | [Who] | [When] | Preventive |
  | 3 | [SOP update needed?] | [Who] | [When] | Systemic |

  ## 5. Prevention — Làm sao để KHÔNG bao giờ xảy ra lại?
  [Changes to process/tool/checklist/policy để error-proof]

  ## 6. Lessons Learned
  [1-2 câu: bài học cho toàn company]

  ## 7. Follow-up
  - [ ] Corrective actions completed by [date]
  - [ ] SOP updated (if needed): [SOP code] version bump
  - [ ] SLO adjusted (if needed): [new target + rationale]
  - [ ] Shared with team: [date]

BLAMELESS CULTURE:
  → Focus: "Process nào fail?" — KHÔNG: "Ai làm sai?"
  → Mọi incident là learning opportunity
  → Same error ≥ 3 lần → BẮT BUỘC update SOP + Prevention
  → Root cause LUÔN trace về hệ thống: thiếu rule, thiếu check, thiếu training, tool不够
```

### 6.4 Quality Control Folder Structure

```
QUALITY FILES nằm NGAY TRONG department — không tạo phòng ban riêng:

[department]/
├── _knowledge/
├── _workflow/
├── _skills-agents/
├── _rules/
│   └── README.md          ← Bổ sung: Quality Standards table (SLI/SLO/SLA)
├── ...existing SOP folders
├── kpi_[dept]-001_[dept]-kpis_v1.0_[date].md
├── quality_[dept]-001_quality-standards_v1.0_[date].md  ← MỚI
└── report_[dept]-001_[report-name]_v1.0_[date].md

QUALITY STANDARDS FILE (mỗi department có 1 file):
  quality_[dept]-001_quality-standards_v1.0_[date].md

  Nội dung:
  | SOP Code | Nghiệp vụ | SLI | SLO | SLA (nếu có) | Error Budget | Measurement Method |
  |----------|-----------|-----|-----|-------------|-------------|-------------------|
  | SOP-MKT-001 | Content creation | Readability score | ≥ 65 | — | 35% | Flesch-Kincaid auto-check |
  | SOP-MKT-001 | Content creation | Factual accuracy | ≥ 98% | — | 2% | Source verification per claim |
  | SOP-SAL-001 | Lead qualification | Qualification accuracy | ≥ 90% | — | 10% | Conversion rate tracking |

INCIDENT REGISTER (company-level):
  _quality/
  ├── README.md                      ← Quality policy overview
  ├── register_incidents_v1.0_[date].md  ← Master incident log
  └── reports/                       ← Individual incident reports
      ├── inc-mkt-001_[title]_[date].md
      └── inc-ops-001_[title]_[date].md

_quality/ folder nằm ở company root (cùng cấp _shared/, _ai-workforce/):
  [company-root]/
  ├── 00-company/
  ├── 01-marketing/
  │   ├── quality_mkt-001_quality-standards_v1.0_[date].md  ← Per-dept quality standards
  │   └── ...
  ├── _shared/
  ├── _quality/                      ← Cross-cutting quality management
  │   ├── README.md
  │   ├── register_incidents_v1.0_[date].md
  │   └── reports/
  └── _ai-workforce/

INCIDENT REGISTER FORMAT:
  | INC Code | Date | Severity | Department | SOP | SLI Violated | Root Cause | Status | Resolution Date |
  |----------|------|----------|-----------|-----|-------------|-----------|--------|----------------|
  | INC-MKT-001 | 2026-05-10 | HIGH | Marketing | SOP-MKT-001 | Readability < 50 | No checklist enforcement | Closed | 2026-05-11 |
```

---

## 7. OKR / KRI / KPI Framework — Mục tiêu, Kết quả, Hiệu suất

```
3 loại chỉ số, 3 mục đích khác nhau — không thể thiếu bất kỳ cái nào:

OKR (Objectives & Key Results) — "Chúng ta muốn đạt được GÌ?"
  → Mục tiêu + kết quả kỳ vọng, set theo QUÝ
  → 2 loại: Committed (BẮT BUỘC đạt) + Stretch (moonshot x10)

KRI (Key Result Indicators) — "Chúng ta đang ĐẠT kết quả thế nào?"
  → Đo lường mục tiêu kết quả, gắn với Key Result của Committed OKR
  → Trả lời: "Kết quả kinh doanh thực tế là gì?"

KPI (Key Performance Indicators) — "Chúng ta đang LÀM TỐT nghiệp vụ không?"
  → Đo hiệu suất vận hành, gắn với key success factor của nghiệp vụ
  → Trả lời: "Process hoạt động efficient không?"

Phân biệt rõ:
  OKR → Strategy (mục tiêu) — thay đổi mỗi quý
  KRI → Outcome (kết quả) — track mục tiêu đạt chưa
  KPI → Performance (hiệu suất) — track vận hành tốt không

Ví dụ Marketing:
  OKR Committed: "Trở thành top 3 thought leader trong ngành EdTech Việt Nam"
    KR1: Organic traffic tăng 40% (từ 50K → 70K/month)
    KR2: Domain Authority đạt ≥ 45
    KR3: Được cite bởi ≥ 5 media outlets
  OKR Stretch (x10): "Trở thành #1 content brand EdTech Đông Nam Á"
    KR1: Organic traffic 500K/month
    KR2: Content được dịch sang ≥ 3 ngôn ngữ

  KRI: Organic traffic monthly, Domain Authority, Media citations — đo OKR KR
  KPI: Content output rate, Publish on-time rate, Readability score — đo process
```

### 7.1 OKR Design Rules

```
OKR COMPANY (set bởi CEO/Board mỗi quý):
  → 3-5 Objectives cho toàn công ty
  → Mỗi Objective có 2-5 Key Results (measurable, time-bound)
  → Ví dụ:
    O1: "Tăng revenue 50% Q3/2026"
      KR1: MRR từ $100K → $150K
      KR2: New customers ≥ 50
      KR3: Churn rate < 3%

OKR DEPARTMENT (mỗi phòng ban set mỗi quý):
  → Phải ALIGN với Company OKR — trace được "OKR phòng ban này góp phần
    vào Company OKR nào?"
  → 2 loại:

  OKR COMMITTED (cam kết — BẮT BUỘC đạt):
    → Dựa trên capacity hiện tại + resources đã có
    → Target đạt được 100% — không đạt = fail
    → Gắn với KRI để track
    → Ví dụ: "Tăng conversion rate từ 2% → 3%"

  OKR STRETCH (mở rộng — moonshot x10):
    → Tư duy "nếu nhân 10x, chúng ta làm gì khác?"
    → Target đạt 70% = success. 100% = extraordinary
    → Khuyến khích innovation, experiment, bold bets
    → Ví dụ: "Tăng conversion rate từ 2% → 20%" (x10)
    → Cần approach hoàn toàn khác — không chỉ "làm nhiều hơn"

  ALIGNMENT RULE:
    → Mỗi Department OKR phải map sang ≥ 1 Company OKR
    → Mapping format:
      [Dept OKR] → contributes to → [Company OKR]
    → Nếu Department OKR không contribute → hỏi "Tại sao phòng ban này tồn tại?"

  SCORING:
    → Committed OKR: 0.0 - 1.0 (target = 1.0)
    → Stretch OKR: 0.0 - 1.0 (target = 0.7)
    → Cuối quý: score thực tế → retrospective → adjust quý sau
```

### 7.2 KRI — Key Result Indicators

```
KRI đo KẾT QUẢ (outcome), không đo NỖ LỰC (output/effort):

  ĐẶC ĐIỂM:
    → Gắn trực tiếp với Key Result của Committed OKR
    → Metric là "business outcome" — customer-centric hoặc revenue-centric
    → Track theo frequency: monthly hoặc quarterly (không daily — cần thời gian)
    → Chậm thay đổi — phản ánh trend, không phản ánh event

  VÍ DỤ:
    | Department | OKR KR | KRI | Measurement |
    |-----------|--------|-----|-------------|
    | Marketing | KR1: Organic traffic +40% | Organic traffic monthly | GA4 |
    | Marketing | KR2: DA ≥ 45 | Domain Authority | Ahrefs/Moz |
    | Sales | KR1: New customers ≥ 50 | New customers acquired | CRM |
    | Sales | KR2: Pipeline value ≥ $500K | Pipeline value | CRM |
    | CS | KR1: CSAT ≥ 4.5 | CSAT score | Survey tool |
    | Ops | KR1: Order accuracy ≥ 99.5% | Order accuracy rate | ERP |

  PHÂN BIỆT KRI vs KPI:
    KRI = "Kết quả kinh doanh là gì?" → outcome, lagging indicator
    KPI = "Process chạy tốt không?" → performance, leading indicator
    Cả hai cần thiết: KPI tốt → KRI tốt (nhưng không guarantee)
```

### 7.3 KPI — Key Performance Indicators

```
KPI đo HIỆU SUẤT (performance), gắn với key success factor của nghiệp vụ:

  ĐẶC ĐIỂM:
    → Đo process, không đo outcome
    → Track theo frequency: daily, weekly (real-time hoặc near real-time)
    → Nhanh thay đổi — phản ánh event, action
    → Gắn với SLO trong Quality Standards

  VÍ DỤ:
    | Department | Success Factor | KPI | Target | Frequency |
    |-----------|---------------|-----|--------|-----------|
    | Marketing | Content output | Articles published/week | ≥ 5 | Weekly |
    | Marketing | Content quality | Readability score | ≥ 65 | Per article |
    | Sales | Pipeline activity | Calls made/week | ≥ 30 | Weekly |
    | Sales | Proposal turnaround | Days from brief to proposal | ≤ 3 | Per deal |
    | CS | Response speed | First response time | ≤ 2h | Daily |
    | Ops | Fulfillment speed | Order processing time | ≤ 24h | Daily |

  LIÊN KẾT:
    KPI tốt → process efficient → KRI có khả năng đạt → OKR achievable
    KPI xấu → process bottleneck → KRI sẽ miss → OKR fail
    → Report phải show CẢ HAI để thấy causal chain
```

### 7.4 Report theo OKR/KRI/KPI — Tần suất & Nội dung

```
Mỗi loại báo cáo chọn chỉ số phù hợp:

┌──────────────────────────────────────────────────────────────────┐
│ LOẠI BÁO CÁO    │ TẦN SUẤT  │ CHỈ SỐ BÁO CÁO                 │
├──────────────────────────────────────────────────────────────────┤
│ DAILY DASHBOARD  │ Hàng ngày │ KPI (performance)               │
│                  │           │ → "Hôm nay process chạy tốt không?"│
│                  │           │ → Chỉ KPI, KHÔNG OKR/KRI        │
│                  │           │ → Ngoại lệ: flag khi KPI miss 2x │
├──────────────────────────────────────────────────────────────────┤
│ WEEKLY SUMMARY   │ Hàng tuần │ KPI + KRI trend                 │
│                  │           │ → "Tuần này performance + trend?"│
│                  │           │ → KPI full + KRI weekly snapshot │
│                  │           │ → OKR: chỉ progress bar, không detail│
├──────────────────────────────────────────────────────────────────┤
│ MONTHLY REVIEW   │ Hàng tháng │ KRI + OKR progress + KPI summary│
│                  │           │ → "Tháng này kết quả thế nào?"   │
│                  │           │ → KRI full (actual vs target)    │
│                  │           │ → OKR score update               │
│                  │           │ → KPI: chỉ top 5 + anomalies     │
├──────────────────────────────────────────────────────────────────┤
│ QUARTERLY OKR    │ Hàng quý  │ OKR full + KRI + Strategic review│
│ REVIEW           │           │ → "Quý này đạt mục tiêu chưa?"  │
│                  │           │ → OKR scoring (0.0 - 1.0)       │
│                  │           │ → KRI quarterly summary          │
│                  │           │ → Set OKR quý tiếp theo          │
│                  │           │ → Stretch OKR: lessons learned   │
├──────────────────────────────────────────────────────────────────┤
│ AD-HOC / ĐỘT XUẤT│ Khi cần  │ Tùy tình huống                  │
│                  │           │ → Incident: SLI/SLO + KPI liên quan│
│                  │           │ → Strategy shift: OKR re-alignment│
│                  │           │ → Stakeholder request: specific KRI│
└──────────────────────────────────────────────────────────────────┘

REPORT TEMPLATE CẬP NHẬT — thêm OKR/KRI/KPI sections:

  Section 2 "KPI Dashboard" → mở rộng thành:

  ## 2. Indicators Dashboard

  ### 2.1 OKR Progress (Monthly / Quarterly reports)
  | Objective | Key Result | Target | Actual | Score | Trend |
  |-----------|-----------|--------|--------|-------|-------|
  | [O1: Committed] | KR1: [metric] | [value] | [value] | [0.0-1.0] | [↑→↓] |
  | [O1: Committed] | KR2: [metric] | [value] | [value] | [0.0-1.0] | [↑→↓] |
  | [O2: Stretch] | KR1: [metric] | [value] | [value] | [0.0-1.0] | [↑→↓] |

  ### 2.2 KRI — Outcome (Weekly / Monthly reports)
  | KRI | OKR Alignment | Target | Actual | Gap | Trend |
  |-----|-------------|--------|--------|-----|-------|
  | [KRI 1] | [→ OKR-O1-KR1] | [value] | [value] | [%] | [↑→↓] |

  ### 2.3 KPI — Performance (Daily / Weekly reports)
  | KPI | Success Factor | Target | Actual | Status | SLO |
  |-----|---------------|--------|--------|--------|-----|
  | [KPI 1] | [factor] | [value] | [value] | [🟢🟡🔴] | [SLO link] |
```

### 7.5 OKR/KRI/KPI trong KWSR _knowledge/README.md

```
_knowledge/README.md phải bổ sung:

  ## OKR Alignment Map
  | Dept OKR | Type | Key Results | Company OKR Alignment |
  |----------|------|------------|---------------------|
  | [Dept O1] | Committed | KR1, KR2, KR3 | → [Company O1] |
  | [Dept O2] | Stretch (x10) | KR1, KR2 | → [Company O2] |

  ## KRI Dashboard
  | KRI | OKR Key Result | Current | Target | Gap | Frequency |
  |-----|-------------|---------|--------|-----|-----------|
  | [KRI 1] | [OKR KR link] | [value] | [value] | [%] | [Monthly] |

  ## KPI Reference
  | KPI | Success Factor | SLO Link | Frequency |
  |-----|---------------|---------|-----------|
  | [KPI 1] | [factor] | [quality standards link] | [Daily] |
```

### 7.6 OKR/KRI/KPI Folder Structure

```
Mỗi department có file riêng cho OKR + KRI + KPI:

[department]/
├── ...
├── okr_[dept]-001_quarterly-okr_v1.0_[date].md     ← OKR Committed + Stretch, alignment
├── kri_[dept]-001_key-result-indicators_v1.0_[date].md  ← KRI gắn với OKR Committed
├── kpi_[dept]-001_[dept]-kpis_v1.0_[date].md       ← KPI gắn với success factors
├── quality_[dept]-001_quality-standards_v1.0_[date].md   ← SLI/SLO/SLA
├── report_[dept]-001_[report-name]_v1.0_[date].md  ← Report template
└── ...

COMPANY-LEVEL:
00-company/
├── ...
├── okr_company-001_company-okr_v1.0_[date].md      ← Company OKR (set by CEO/Board)
├── kri_company-001_company-kri_v1.0_[date].md      ← Company-level KRI
├── kpi_strat-001_company-kpis_v1.0_[date].md       ← Company-level KPI
└── report_strat-001_quarterly-review_v1.0_[date].md

OKR FILE TEMPLATE (per department):

  # OKR: [Department Name] — Q[Y] [YEAR]

  **Department:** [name]
  **Quarter:** Q[Y] [YEAR]
  **Aligned to Company OKR:** [Company OKR reference]

  ---

  ## COMMITTED OKR (BẮT BUỘC ĐẠT — target 100%)

  ### Objective 1: [Action verb + specific outcome]
  **Alignment:** → [Company OKR-OX]

  | Key Result | Metric | Current Baseline | Target | KRI |
  |-----------|--------|-----------------|--------|-----|
  | KR1: [specific result] | [measurement] | [current] | [target] | [KRI link] |
  | KR2: [specific result] | [measurement] | [current] | [target] | [KRI link] |

  **Score cuối quý:** [0.0 - 1.0]

  ## STRETCH OKR (MOONSHOT x10 — target 70% = success)

  ### Objective 2: [Bold, 10x thinking — "Nếu nhân 10x kết quả, làm gì khác?"]
  **Alignment:** → [Company OKR-OX]

  | Key Result | Metric | Current Baseline | x10 Target | Approach Difference |
  |-----------|--------|-----------------|-----------|-------------------|
  | KR1: [bold result] | [measurement] | [current] | [10x target] | [What's fundamentally different] |

  **Score cuối quý:** [0.0 - 1.0]  (0.7 = success)

  ## Alignment Map
  | Dept OKR | → Company OKR | Contribution % |
  |----------|-------------|---------------|
  | Committed O1 | → Company O1 | [X]% |
  | Stretch O2 | → Company O2 | [X]% |

  ## Lessons Learned (điền cuối quý)
  [What worked, what didn't, what to change next quarter]

KRI FILE TEMPLATE (per department):

  # KRI: [Department Name] — Key Result Indicators

  **Quarter:** Q[Y] [YEAR]
  **Linked to OKR:** okr_[dept]-001

  | # | KRI | Linked OKR KR | Metric | Target | Actual | Gap | Trend | Frequency | Data Source |
  |---|-----|-------------|--------|--------|--------|-----|-------|-----------|------------|
  | 1 | [KRI name] | [OKR KR1] | [how measured] | [target] | [current] | [%] | [↑→↓] | [Monthly] | [tool/system] |

  **Decision Rules:**
  - KRI on-track (gap < 15%) → continue current approach
  - KRI at-risk (gap 15-30%) → review KPI for bottleneck
  - KRI off-track (gap > 30%) → strategy review + action plan

KPI FILE TEMPLATE (cập nhật version hiện có):

  # KPI: [Department Name] — Key Performance Indicators

  **Quarter:** Q[Y] [YEAR]

  | # | KPI | Success Factor | Metric | Target | Frequency | SLO Link | KRI Impact |
  |---|-----|---------------|--------|--------|-----------|---------|-----------|
  | 1 | [KPI name] | [factor it measures] | [how measured] | [target] | [Daily/Weekly] | [quality standards] | → [KRI name] |
  | 2 | [KPI name] | [factor] | [metric] | [target] | [frequency] | [link] | → [KRI] |

  **KPI → KRI Causal Chain:**
    [KPI 1: process metric] → impacts → [KRI 1: outcome metric]
    [KPI 2: process metric] → impacts → [KRI 2: outcome metric]
    → If KPI drops → check if KRI will be impacted → proactive action
```

```
_rules/README.md phải bổ sung Quality Standards table:

## Quality Standards (SLI/SLO/SLA)

| SOP Code | SLI | SLO | SLA | Error Budget | Measurement |
|----------|-----|-----|-----|-------------|-------------|
| SOP-[DEPT]-001 | [Metric] | [Target] | [External promise] | [%] | [Method] |

## Quality Gates

| Gate | Applies to | Location in SOP | Threshold | On Fail |
|------|-----------|-----------------|-----------|---------|
| Content Quality | SOP-[DEPT]-001 | Section 5 | All SLIs ≥ SLO | Loop (max 3) → Escalate |

## Incident History

| INC Code | Date | SOP | Root Cause | Prevention Applied |
|----------|------|-----|-----------|-------------------|
| [Link to report] | [Date] | [SOP Code] | [Systemic cause] | [What changed] |
```

---

## File & Folder Naming Convention

### Folder Naming

```
Format: lowercase, dấu gạch ngang phân tách từ

Root: [company-slug]/
  Ví dụ: acme-corp/, green-coffee-llc/, techstartup/

Department folders:
  strategy/           ← Layer 1
  operations/         ← Layer 2 (hoặc tách chi tiết hơn)
  marketing/
  sales/
  customer-service/
  hr/                 ← Layer 3
  finance/
  it/
  legal/
  admin/
  procurement/

Sub-folders trong department:
  marketing/
    content/          ← Sub-process
    seo/
    paid-ads/
    brand/
    events/

Shared:
  _shared/
    templates/
    policies/
    glossary/
  _archive/
```

### File Naming

```
Format: [file_type]_[file-name]_[version]_[update-day]

file_type codes:
  charter     — Company charter, vision, mission
  sop         — Standard Operating Procedure
  policy      — Policy, regulation, guideline
  job         — Job description, role specification
  kpi         — KPI definition, target, tracking
  okr         — OKR quarterly objectives & key results
  kri         — KRI key result indicators (outcome metrics)
  template    — Template file (input/output)
  report      — Report format, dashboard spec
  matrix      — RACI, responsibility, skill matrix
  flow        — Flow diagram, process map
  register    — Log, register, tracking list
  guide       — Guide, handbook, manual
  archive     — Archived document

Examples:
  sop_mkt-001_content-creation_v1.0_2026-05-01.md
  policy_hr-001_code-of-conduct_v1.0_2026-05-01.md
  job_sales-001_account-executive_v1.0_2026-05-01.md
  kpi_ops-001_order-fulfillment-rate_v1.0_2026-05-01.md
  template_mkt-001_content-brief_v1.0_2026-05-01.md
  charter_company-charter_v1.0_2026-05-01.md
  matrix_ops-001_raci-order-processing_v1.0_2026-05-01.md
  flow_sales-001_lead-to-close_v1.0_2026-05-01.md
```

---

## Company Folder Structure (Master Template)

```
[company-slug]/
│
├── 00-company/
│   ├── README.md                                    ← Company overview, org chart
│   ├── charter_company-charter_v1.0_[date].md       ← Vision, Mission, Values, Goals
│   ├── guide_company-handbook_v1.0_[date].md        ← Employee handbook
│   ├── matrix_org-chart_v1.0_[date].md              ← Org structure + RACI
│   ├── flow_value-chain_v1.0_[date].md              ← Porter Value Chain diagram
│   ├── policy_company-001_general-policies_v1.0_[date].md
│   └── glossary_company-glossary_v1.0_[date].md     ← Terminology
│
├── 01-strategy/
│   ├── README.md                                    ← Strategy department overview
│   ├── charter_strategy-department_v1.0_[date].md   ← Dept mission, goals
│   ├── sop_strat-001_strategic-planning_v1.0_[date].md
│   ├── sop_strat-002_budget-planning_v1.0_[date].md
│   ├── sop_strat-003_okr-review_v1.0_[date].md     ← NEW: OKR quarterly review SOP
│   ├── sop_strat-004_board-reporting_v1.0_[date].md
│   ├── template_strat-001_strategic-plan_v1.0_[date].md
│   ├── template_strat-002_budget-template_v1.0_[date].md
│   ├── okr_company-001_company-okr_v1.0_[date].md  ← Company OKR (set by CEO/Board)
│   ├── kri_company-001_company-kri_v1.0_[date].md  ← Company-level KRI
│   ├── kpi_strat-001_company-kpis_v1.0_[date].md
│   └── report_strat-001_quarterly-review_v1.0_[date].md
│
├── 02-marketing/
│   ├── README.md
│   ├── charter_marketing-department_v1.0_[date].md
│   ├── create-content/                         ← OPERATIONAL SOP (folder state machine)
│   │   ├── template/
│   │   │   ├── README.md
│   │   │   └── sop_mkt-001_content-creation_v1.0_[date].md
│   │   ├── input/
│   │   ├── processing/ai-draft/ + human-review/
│   │   ├── output/
│   │   └── archive/[YYYY-MM]/
│   ├── manage-content-calendar/                ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_mkt-002_content-calendar_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── seo-audit/                              ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_mkt-010_seo-audit_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── keyword-research/                       ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_mkt-011_keyword-research_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── setup-paid-campaign/                    ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_mkt-020_paid-campaign-setup_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── track-ad-budget/                        ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_mkt-021_budget-tracking_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── brand-guidelines/                       ← DOCUMENTATION-ONLY SOP
│   │   └── sop_mkt-030_brand-guidelines_v1.0_[date].md
│   ├── monitor-brand/                          ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_mkt-031_brand-monitoring_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── kpi_mkt-001_marketing-kpis_v1.0_[date].md
│   ├── okr_mkt-001_quarterly-okr_v1.0_[date].md   ← Committed + Stretch OKR
│   ├── kri_mkt-001_key-result-indicators_v1.0_[date].md  ← KRI gắn OKR Committed
│   ├── quality_mkt-001_quality-standards_v1.0_[date].md  ← SLI/SLO/SLA cho marketing
│   └── report_mkt-001_monthly-report_v1.0_[date].md
│
├── 03-sales/
│   ├── README.md
│   ├── charter_sales-department_v1.0_[date].md
│   ├── manage-leads/                           ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_sal-001_lead-management_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── track-opportunities/                    ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_sal-002_opportunity-tracking_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── create-proposal/                        ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_sal-003_proposal-creation_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── sign-contract/                          ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_sal-004_contract-signing_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── handoff-to-cs/                          ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_sal-005_sales-handoff_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── flow_sales-001_lead-to-close_v1.0_[date].md
│   ├── kpi_sal-001_sales-kpis_v1.0_[date].md
│   ├── okr_sal-001_quarterly-okr_v1.0_[date].md
│   ├── kri_sal-001_key-result-indicators_v1.0_[date].md
│   ├── quality_sal-001_quality-standards_v1.0_[date].md  ← SLI/SLO/SLA cho sales
│   └── report_sal-001_pipeline-report_v1.0_[date].md
│
├── 04-operations/
│   ├── README.md
│   ├── charter_operations-department_v1.0_[date].md
│   ├── process-orders/                         ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_ops-001_order-processing_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── manage-inventory/                       ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_ops-002_inventory-management_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── quality-control/                        ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_ops-003_quality-control_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── logistics/                              ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_ops-004_logistics_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── manage-vendors/                         ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_ops-005_vendor-management_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── kpi_ops-001_operations-kpis_v1.0_[date].md
│   ├── okr_ops-001_quarterly-okr_v1.0_[date].md
│   ├── kri_ops-001_key-result-indicators_v1.0_[date].md
│   ├── quality_ops-001_quality-standards_v1.0_[date].md  ← SLI/SLO/SLA cho operations
│   └── report_ops-001_daily-dashboard_v1.0_[date].md
│
├── 05-customer-service/
│   ├── README.md
│   ├── charter_cs-department_v1.0_[date].md
│   ├── sop_cs-001_ticket-handling_v1.0_[date].md
│   ├── sop_cs-002_escalation_v1.0_[date].md
│   ├── sop_cs-003_customer-feedback_v1.0_[date].md
│   ├── sop_cs-004_refund-process_v1.0_[date].md
│   ├── template_cs-001_response-template_v1.0_[date].md
│   ├── kpi_cs-001_cs-kpis_v1.0_[date].md
│   └── report_cs-001_weekly-report_v1.0_[date].md
│
├── 06-hr/
│   ├── README.md
│   ├── charter_hr-department_v1.0_[date].md
│   ├── sop_hr-001_recruitment_v1.0_[date].md
│   ├── sop_hr-002_onboarding_v1.0_[date].md
│   ├── sop_hr-003_performance-review_v1.0_[date].md
│   ├── sop_hr-004_training-development_v1.0_[date].md
│   ├── sop_hr-005_offboarding_v1.0_[date].md
│   ├── sop_hr-006_payroll_v1.0_[date].md
│   ├── policy_hr-001_code-of-conduct_v1.0_[date].md
│   ├── policy_hr-002_leave-policy_v1.0_[date].md
│   ├── policy_hr-003_remote-work_v1.0_[date].md
│   ├── job_hr-001_job-description-template_v1.0_[date].md
│   ├── template_hr-001_onboarding-checklist_v1.0_[date].md
│   ├── template_hr-002_performance-review-form_v1.0_[date].md
│   └── kpi_hr-001_hr-kpis_v1.0_[date].md
│
├── 07-finance/
│   ├── README.md
│   ├── charter_finance-department_v1.0_[date].md
│   ├── sop_fin-001_accounts-payable_v1.0_[date].md
│   ├── sop_fin-002_accounts-receivable_v1.0_[date].md
│   ├── sop_fin-003_monthly-close_v1.0_[date].md
│   ├── sop_fin-004_expense-approval_v1.0_[date].md
│   ├── sop_fin-005_financial-reporting_v1.0_[date].md
│   ├── sop_fin-006_tax-compliance_v1.0_[date].md
│   ├── policy_fin-001_expense-policy_v1.0_[date].md
│   ├── policy_fin-002_procurement-policy_v1.0_[date].md
│   ├── template_fin-001_invoice-template_v1.0_[date].md
│   ├── template_fin-002_po-template_v1.0_[date].md
│   ├── kpi_fin-001_finance-kpis_v1.0_[date].md
│   └── report_fin-001_monthly-pl_v1.0_[date].md
│
├── 08-it/
│   ├── README.md
│   ├── charter_it-department_v1.0_[date].md
│   ├── sop_it-001_it-onboarding_v1.0_[date].md
│   ├── sop_it-002_incident-management_v1.0_[date].md
│   ├── sop_it-003_change-management_v1.0_[date].md
│   ├── sop_it-004-security-policy_v1.0_[date].md
│   ├── sop_it-005-backup-recovery_v1.0_[date].md
│   ├── policy_it-001_information-security_v1.0_[date].md
│   ├── policy_it-002_acceptable-use_v1.0_[date].md
│   └── kpi_it-001_it-kpis_v1.0_[date].md
│
├── 09-legal/
│   ├── README.md
│   ├── charter_legal-department_v1.0_[date].md
│   ├── sop_leg-001_contract-review_v1.0_[date].md
│   ├── sop_leg-002_compliance-audit_v1.0_[date].md
│   ├── sop_leg-003_ip-management_v1.0_[date].md
│   └── register_leg-001_contract-register_v1.0_[date].md
│
├── 10-procurement/
│   ├── README.md
│   ├── charter_procurement-department_v1.0_[date].md
│   ├── sop_proc-001_vendor-selection_v1.0_[date].md
│   ├── sop_proc-002_purchase-order_v1.0_[date].md
│   ├── sop_proc-003_vendor-evaluation_v1.0_[date].md
│   └── register_proc-001_vendor-register_v1.0_[date].md
│
├── _shared/
│   ├── templates/
│   │   ├── template_shared-001_meeting-agenda_v1.0_[date].md
│   │   ├── template_shared-002_decision-log_v1.0_[date].md
│   │   └── template_shared-003_project-brief_v1.0_[date].md
│   └── policies/
│       ├── policy_shared-001_data-protection_v1.0_[date].md
│       └── policy_shared-002_document-control_v1.0_[date].md
│
├── _quality/                                    ← Cross-cutting quality management
│   ├── README.md                                ← Quality policy, principles, escalation
│   ├── register_incidents_v1.0_[date].md        ← Master incident log (tất cả departments)
│   └── reports/                                 ← Individual incident reports
│       └── inc-[dept]-[num]_[title]_[date].md
│
└── _ai-workforce/
    ├── README.md                                    ← AI workforce mapping
    ├── workforce-map_v1.0_[date].md                 ← Department → AI skill mapping
    └── build-plan_v1.0_[date].md                    ← Build order for AI skills
```

---

## IPO Analysis Template (Mỗi Department)

Mỗi department README.md phải có IPO analysis:

```markdown
# [Department Name]

## Department IPO

| Component | Detail |
|-----------|--------|
| **INPUT** | [Tài nguyên đầu vào: data, yêu cầu, tài liệu...] |
| **CONTROL** | [Ràng buộc: policy, regulation, SLA, standard...] |
| **OUTPUT** | [Kết quả: sản phẩm, báo cáo, quyết định...] |
| **MECHANISM** | [Công cụ: software, template, AI skill...] |

## Value Chain Position

- **Layer:** [Strategy / Operations / Support]
- **Upstream:** [Departments cung cấp input]
- **Downstream:** [Departments nhận output]
- **External stakeholders:** [Customers, vendors, regulators...]

## Internal Process IPOs

### Process 1: [Name]
| Component | Detail |
|-----------|--------|
| **INPUT** | [...] |
| **CONTROL** | [...] |
| **OUTPUT** | [...] |
| **MECHANISM** | [...] |
| **SOP** | [Link to SOP file] |

### Process 2: [Name]
[... same format ...]

## RACI Matrix

| Activity | Role A | Role B | Role C | Role D |
|----------|--------|--------|--------|--------|
| [Activity 1] | R | A | C | I |
| [Activity 2] | I | R | A | C |

R = Responsible | A = Accountable | C = Consulted | I = Informed

## KPIs

| KPI | Metric | Target | Frequency | SOP |
|-----|--------|--------|-----------|-----|
| [KPI 1] | [How measured] | [Target value] | [Daily/Weekly/Monthly] | [SOP link] |

## OKR — Objectives & Key Results

> Xem chi tiết: [okr_[dept]-001_quarterly-okr_v1.0_[date].md]

### Committed OKR (BẮT BUỘC — target 100%)
| Objective | Key Results | Company OKR Alignment | KRI |
|-----------|-----------|---------------------|-----|
| [O1: action + outcome] | KR1: [specific], KR2: [specific] | → [Company OKR-OX] | [KRI link] |

### Stretch OKR (Moonshot x10 — target 70% = success)
| Objective | Key Results | Company OKR Alignment |
|-----------|-----------|---------------------|
| [O2: bold 10x outcome] | KR1: [10x target] | → [Company OKR-OX] |

## KRI — Key Result Indicators (Outcome)

> Xem chi tiết: [kri_[dept]-001_key-result-indicators_v1.0_[date].md]

| KRI | Linked OKR KR | Target | Actual | Gap | Trend |
|-----|-------------|--------|--------|-----|-------|
| [KRI 1] | [→ OKR-O1-KR1] | [value] | [value] | [%] | [↑→↓] |

## KPI → KRI Causal Chain
| KPI (Performance) | → impacts → | KRI (Outcome) | → contributes to → | OKR Key Result |
|-------------------|-------------|---------------|-------------------|---------------|
| [KPI 1] | → | [KRI 1] | → | [OKR KR1] |

## AI Integration

| Process | AI Tier | Skill | Notes |
|---------|---------|-------|-------|
| [Process 1] | [AI ASSIST/AUGMENT/WORKFORCE] | [vibe-skill] | [Description] |

## Quality Standards (SLI/SLO/SLA)

> Xem chi tiết: [quality_[dept]-001_quality-standards_v1.0_[date].md]

| SOP Code | Nghiệp vụ | SLI | SLO | SLA (nếu có) | Measurement |
|----------|-----------|-----|-----|-------------|-------------|
| SOP-[DEPT]-001 | [Process 1] | [Metric] | [Target] | [Promise] | [Method] |
| SOP-[DEPT]-002 | [Process 2] | [Metric] | [Target] | [Promise] | [Method] |
```

---

## SOP Template (Company Version)

SOP được thiết kế theo vibe-sop-orchestrator, bổ sung thêm IPO structure và cross-links:

```markdown
# SOP: [Tên Quy Trình]

**Mã SOP:** SOP-[DOMAIN]-[NUMBER]
**Phiên bản:** 1.0
**Ngày tạo:** [YYYY-MM-DD]
**Ngày cập nhật:** [YYYY-MM-DD]
**Chủ sở hữu:** [Department / Role]
**Phê duyệt:** [Role]
**Department:** [Link to department README]

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | [Tài nguyên đầu vào cụ thể] |
| **CONTROL** | [Policy, SLA, standard áp dụng] |
| **OUTPUT** | [Kết quả kỳ vọng] |
| **MECHANISM** | [Công cụ, template, software] |

### Upstream / Downstream

- **Input từ:** [SOP-MKT-001](../02-marketing/sop_mkt-001_xxx.md) / [Department](../02-marketing/README.md)
- **Output tới:** [SOP-SAL-001](../03-sales/sop_sal-001_xxx.md) / [Department](../03-sales/README.md)

---

## 1. Tổng Quan

### 1.1 Mục Đích
[1-2 câu: SOP này giải quyết vấn đề gì, tại sao cần]

### 1.2 Phạm Vi
- **Áp dụng cho:** [Roles/Teams]
- **Không áp dụng cho:** [Exceptions]

### 1.3 Định Nghĩa & Thuật Ngữ
| Thuật ngữ | Định nghĩa |
|-----------|-----------|
| [Term] | [Definition] |

---

## 2. Vai Trò & Trách Nhiệm

| Vai trò | Trách nhiệm | Liên hệ |
|---------|------------|---------|
| [Role 1] | [Trách nhiệm chính] | Khi nào liên hệ |

### RACI cho SOP này

| Bước | [Role 1] | [Role 2] | [Role 3] |
|------|----------|----------|----------|
| 3.1 | R | A | I |
| 3.2 | C | R | A |

### AI Roles (nếu áp dụng)
| AI Role | Skill | Trách nhiệm | Trigger |
|---------|-------|------------|---------|
| [AI Role] | [vibe-skill] | [Làm gì] | [Khi nào] |

---

## 3. Quy Trình

### 3.0 Flow Tổng Quan

[Mermaid diagram hoặc ASCII flow]

### 3.1 [Tên Bước 1]

**Mục tiêu:** [Kết quả mong đợi]
**Thực hiện bởi:** [Role]
**Thời gian ước tính:** [X phút]

**Bước IPO:**

| Component | Detail |
|-----------|--------|
| **INPUT** | [Đầu vào bước này] |
| **PROCESS** | [Hành động thực hiện] |
| **OUTPUT** | [Kết quả bước này] |
| **CONTROL** | [Tiêu chuẩn kiểm tra] |
| **MECHANISM** | [Công cụ sử dụng] |

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | [Action] | [Chi tiết] | [Output] |

> **[AI ASSIST/AUGMENT/WORKFORCE]** [Skill] có thể hỗ trợ: [mô tả]

---

## 4. Phân Nhánh & Xử Lý Đặc Biệt

### 4.1 [Tình huống A]
**Điều kiện:** [Khi nào xảy ra]
**Xử lý:**
| # | Hành động | Ghi chú |
|---|----------|---------|
| 1 | [Action] | [Note] |

---

## 5. Checklist

### Trước khi bắt đầu
- [ ] [Điều kiện cần]

### Sau khi hoàn thành
- [ ] [Verification]

### Quality Gate — SLI/SLO/SLA

> Mọi output phải pass Quality Gate trước khi chuyển sang bước tiếp theo.

| # | Tiêu chí | SLI (Metric) | SLO (Target) | Check Method | Pass? |
|---|---------|-------------|-------------|-------------|-------|
| 1 | [Criterion 1] | [How measured] | [Min value] | [Auto/Manual] | ☐ |
| 2 | [Criterion 2] | [How measured] | [Min value] | [Auto/Manual] | ☐ |

**Decision Rule:**
- ALL pass → Output accepted → continue
- ANY fail → LOOP back to relevant step (max 3 loops)
- 3+ loops still fail → ESCALATE to human → **trigger Incident Report** (see _quality/)

### Prevention Measures

| Step | Risk | Prevention (Error-proof) |
|------|------|-------------------------|
| [Step 3.1] | [What could go wrong] | [How to prevent it from happening] |
| [Step 3.2] | [What could go wrong] | [How to prevent it from happening] |

---

## 6. Tài Nguyên & Tham Chiếu

| Tài nguyên | Vị trí | Mục đích |
|-----------|--------|----------|
| [Template] | [Path] | [Dùng để] |

### Liên kết SOP
- **Upstream:** [SOP link] → cung cấp input cho SOP này
- **Downstream:** [SOP link] ← nhận output từ SOP này
- **Parallel:** [SOP link] — chạy song song

### AI Skills
| Skill | Dùng khi | Command |
|-------|---------|---------|
| [vibe-skill] | [Khi nào] | [Cách gọi] |

---

## 7. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi | Người thay đổi |
|-----------|------|----------|---------------|
| 1.0 | [Date] | Tạo SOP ban đầu | [Name] |
```

---

## SOP Operational Layer — Folder State Machine

### Khi nào SOP cần Folder Structure?

```
SOP trong company chia làm 2 loại:

DOCUMENTATION-ONLY SOP:
  → SOP là tài liệu tham khảo, không có file-based operational workflow
  → Ví dụ: Code of Conduct, Onboarding Checklist, Board Reporting, Safety Policy
  → Format: flat file .md trong department folder
  → Không cần folder state machine

OPERATIONAL SOP:
  → SOP có file-based input/output chạy định kỳ hoặc triggered
  → Ví dụ: Content Creation (input: brief → output: bài viết), Order Processing (input: đơn → output: shipment), Monthly Close (input: transactions → output: báo cáo)
  → Format: SOP folder với 5 subfolders (state machine)
  → BẮT BUỘC tạo folder khi generate SOP (Phase 3.4)

Decision rule nhanh:
  SOP có file đầu vào cụ thể và file đầu ra cụ thể không?
    YES → OPERATIONAL SOP → tạo folder state machine
    NO  → DOCUMENTATION-ONLY SOP → flat file .md
```

### SOP Folder State Machine (từ vibe-aiworkforce)

```
Mỗi OPERATIONAL SOP có folder structure:

[department]/
└── [sop-name]/                    ← format: [verb]-[noun]-[context]
    ├── template/                  ← SOURCE OF TRUTH — READ-ONLY by convention
    │   ├── README.md              ← "⚠️ Do not edit directly. Copy to input/ first."
    │   └── sop_[code]_[name]_v[version]_[date].md   ← SOP documentation (source of truth)
    ├── input/                     ← files chờ xử lý, naming: [YYYY-MM-DD]-[descriptor].ext
    ├── processing/                ← files đang xử lý
    │   ├── ai-draft/              ← AI agent đang generate/process
    │   └── human-review/          ← human đang review AI output
    ├── output/                    ← kết quả hoàn thành (max 7 ngày — archive sau đó)
    └── archive/                   ← completed runs, immutable
        └── [YYYY-MM]/             ← tổ chức theo tháng
```

**5 Subfolders bất biến — không thể thiếu, không được đổi tên:**

| Subfolder | State | Owner | Rule |
|-----------|-------|-------|------|
| `template/` | Blueprint (static) | SOP Designer | READ-ONLY. SOP .md file lives here. |
| `input/` | Queued | Người gửi task | Naming: `[YYYY-MM-DD]-[descriptor].ext` |
| `processing/` | In-flight | AI Agent + Human | Có 2 subfolder: `ai-draft/` và `human-review/` |
| `output/` | Complete | SOP Owner | Không để quá 7 ngày — phải archive |
| `archive/` | Closed (immutable) | System | Auto-archived, tổ chức theo `[YYYY-MM]/` |

### MKDIR Script — Tạo SOP folder khi generate

```bash
create_sop_folder() {
  ORG_ROOT="$1"   # vd: /path/to/company-root
  DEPT="$2"       # vd: 02-marketing
  SOP_NAME="$3"   # vd: create-content-linkedin
  SOP_FILE="$4"   # vd: sop_mkt-001_content-creation_v1.0_2026-05-01.md

  BASE="$ORG_ROOT/$DEPT/$SOP_NAME"
  mkdir -p "$BASE"/{template,input,output,archive}
  mkdir -p "$BASE"/processing/{ai-draft,human-review}

  cat > "$BASE/template/README.md" << EOF
# $SOP_NAME — Template

⚠️ DO NOT EDIT FILES IN THIS FOLDER DIRECTLY.
Copy to input/ first, rename: [YYYY-MM-DD]-[descriptor].ext

SOP Documentation: $SOP_FILE
Template version: v1.0
Last updated: $(date +%Y-%m-%d)
Owner: $DEPT
EOF

  echo "✅ SOP folder created: $BASE"
}
# Usage: create_sop_folder "/path/to/techflow" "02-marketing" "create-content-linkedin" "sop_mkt-001_content-creation_v1.0_2026-05-01.md"
```

### Auto-Archive Script — Chạy sau mỗi completed run

```bash
archive_sop_run() {
  SOP_PATH="$1"
  MONTH=$(date +%Y-%m)
  ARCHIVE_DIR="$SOP_PATH/archive/$MONTH"

  mkdir -p "$ARCHIVE_DIR"
  if [ "$(ls -A $SOP_PATH/output/ 2>/dev/null)" ]; then
    mv "$SOP_PATH/output/"* "$ARCHIVE_DIR/"
    echo "✅ Archived to: $ARCHIVE_DIR"
  else
    echo "ℹ️  output/ is empty — nothing to archive"
  fi
}
```

### SOP trong Company Folder — Ví dụ

```
02-marketing/
├── README.md                                        ← Department overview (IPO + RACI + KPIs)
├── charter_marketing-department_v1.0_[date].md      ← Department charter
├── brand-guidelines/                                ← DOCUMENTATION-ONLY SOP (flat file)
│   └── sop_mkt-030_brand-guidelines_v1.0_[date].md
├── create-content/                                  ← OPERATIONAL SOP (folder state machine)
│   ├── template/
│   │   ├── README.md
│   │   └── sop_mkt-001_content-creation_v1.0_[date].md
│   ├── input/
│   │   └── 2026-05-01-topic-ai-native.md
│   ├── processing/
│   │   └── ai-draft/
│   ├── output/
│   └── archive/
│       └── 2026-04/
├── seo-audit/                                       ← OPERATIONAL SOP
│   ├── template/
│   ├── input/
│   ├── processing/
│   ├── output/
│   └── archive/
├── kpi_mkt-001_marketing-kpis_v1.0_[date].md
└── report_mkt-001_monthly-report_v1.0_[date].md
```

### Tại sao SOP Operational Folder quan trọng?

```
1. AI Workforce sẵn sàng activate — folder structure đã có, AI worker chỉ cần đọc SOP từ template/ và process files qua input/ → processing/ → output/

2. Input/Output rõ ràng — mỗi SOP có chỗ nhận task (input/) và trả kết quả (output/), thay vì files nằm rải rác

3. Audit trail — archive/ giữ lịch sử mọi lần chạy, có thể trace lại bất kỳ lúc nào

4. Quality gate tự nhiên — processing/human-review/ là nơi human review trước khi output/ được finalize

5. Giao tiếp giữa departments — output/ của SOP này → input/ của SOP kia, flow rõ ràng

Vibe-aiworkforce khi activate → đọc SOP từ template/ và sử dụng sẵn folder structure,
không cần tạo mới hay migrate.
```

---

## Execution Pipeline

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PHASE 0: INTAKE — Thu thập thông tin công ty
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
→ Hỏi user về công ty (nếu chưa cung cấp):
  1. Tên công ty / Industry / Quy mô
  2. Sản phẩm/Dịch vụ chính
  3. Khách hàng mục tiêu
  4. Mô hình kinh doanh (B2B/B2C/B2B2C)
  5. Quy mô team hiện tại (hoặc dự kiến)
  6. Market / Geography

→ Phân loại complexity:
  SMALL (1-10 người):
    → Gộp departments, đơn giản hóa SOP
    → Folder: strategy + marketing-sales + operations + shared

  MEDIUM (10-50 người):
    → Full 3-layer structure
    → 6-8 departments

  LARGE (50+ người):
    → Full 3-layer structure + sub-departments
    → 8-12 departments + sub-teams

→ Confirm scope với user trước khi tạo
    ↓
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PHASE 1: THINK — Explicit Thinking (nếu topic phức tạp)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Chỉ khi công ty thuộc domain phức tạp / mới / chưa rõ ràng]

→ Invoke vibe-xthinking-orchestrator — MODE TOPIC
  Input: "[Industry] company design — value chain, org structure, key processes"
  Output: Deep analysis → dùng làm foundation cho Phase 2-3

→ Khi KHÔNG cần: Skip → chuyển thẳng Phase 2
    ↓
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PHASE 2: DESIGN — Thiết kế kiến trúc công ty
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

STEP 2.1: VALUE CHAIN DESIGN
→ Map Porter Value Chain cho industry cụ thể
→ Xác định Primary Activities (Layer 2) cho industry:
  - Product company: Inbound → Production → Outbound → Marketing → Service
  - Service company: Lead Gen → Qualification → Delivery → Follow-up → Retention
  - Retail: Sourcing → Warehousing → Merchandising → Sales → After-sales
  - SaaS: Development → Distribution → Marketing → Sales → Customer Success
→ Xác định Support Activities (Layer 3): HR, Finance, IT, Legal, Procurement
→ Xác định Strategy Layer (Layer 1): Board, CEO, Strategy Office
→ Output: flow_value-chain_v1.0_[date].md

STEP 2.2: DEPARTMENT IPO ANALYSIS
→ Cho mỗi department → phân tích ICOM:
  I: Input gì từ departments khác / external?
  C: Policy/standard nào ràng buộc?
  O: Output gì cung cấp cho departments khác / external?
  M: Công cụ/software nào cần?
→ Map inter-department dependencies (upstream → downstream)
→ Output: matrix_org-chart_v1.0_[date].md + mỗi department README.md

STEP 2.3: PROCESS DECOMPOSITION (Recursive IPO)
→ Cho mỗi department → phân rã thành processes:
  Department IPO → Process IPOs → Task IPOs
→ Mỗi process → tag SOP code: SOP-[DOMAIN]-[NUMBER]
→ Xác định cross-links giữa processes (upstream/downstream)
→ Output: Danh sách SOP cần tạo (SOP register)

STEP 2.4: ROLE & KPI DEFINITION
→ Cho mỗi department → define roles:
  Job title → Responsibilities → Authorities → Reports to
→ Cho mỗi role → define KPIs:
  KPI name → Metric → Target → Frequency
→ Map RACI matrix cho cross-department processes
→ Output: job_*, kpi_*, matrix_* files

STEP 2.5: QUALITY STANDARDS DEFINITION (SLI/SLO/SLA)
→ Cho mỗi OPERATIONAL SOP → define quality standards:
  1. Identify SLI: "Metric nào phản ánh chất lượng thật của nghiệp vụ này?"
  2. Set SLO: "Target tối thiểu giữ stakeholder happy?"
  3. Check SLA needed: "Có external promise không?" (YES → define, NO → skip)
  4. Calculate Error Budget: 100% - SLO
  5. Define Measurement Method: "Đo bằng gì? Ai đo? Bao lâu đo 1 lần?"
→ Quality Gate per SOP: "Tiêu chí nào output phải pass trước khi accepted?"
→ Prevention per step: "Làm sao lỗi ở bước này không thể xảy ra?"
→ Output: quality_[dept]-001_quality-standards_v1.0_[date].md per department
→ Lưu ý: KHÔNG target 100% cho operational SLI — cần error budget
→ Lưu ý: SLI phải quantifiable — không dùng "tốt", "đẹp", "chất lượng"

STEP 2.5a: OKR / KRI / KPI DEFINITION (per department)
→ Sau khi Company OKR đã set (ở 01-strategy/okr_company-001):

  1. COMPANY OKR FIRST:
     → Define 3-5 Company Objectives cho quý
     → Mỗi Objective: 2-5 Key Results (measurable, time-bound)
     → Output: okr_company-001_company-okr_v1.0_[date].md

  2. DEPARTMENT OKR (aligned to Company):
     → Cho mỗi department → ask: "Phòng ban này contribute vào Company OKR nào?"
     → Set Committed OKR: BẮT BUỘC đạt, based trên capacity hiện tại
     → Set Stretch OKR: Moonshot x10, "Nếu nhân 10x kết quả, làm gì KHÁC?"
     → Verify alignment: mỗi Dept OKR → trace to ≥ 1 Company OKR
     → Output: okr_[dept]-001_quarterly-okr_v1.0_[date].md

  3. KRI (Key Result Indicators) — Outcome:
     → Cho mỗi Key Result trong Committed OKR → define KRI
     → KRI đo business outcome, không đo effort
     → Output: kri_[dept]-001_key-result-indicators_v1.0_[date].md

  4. KPI (Key Performance Indicators) — Performance:
     → Update existing kpi_ file: thêm Success Factor + KRI Impact columns
     → Map KPI → KRI causal chain: "KPI nào ảnh hưởng KRI nào?"
     → Output: update kpi_[dept]-001 files

  5. REPORT ALIGNMENT:
     → Map report templates theo tần suất + indicators:
       Daily → KPI only
       Weekly → KPI + KRI trend
       Monthly → KRI + OKR progress + KPI summary
       Quarterly → OKR full scoring + KRI + Strategy review
       Ad-hoc → tùy tình huống (incident: SLI/SLO, strategy shift: OKR)

STEP 2.6: REPORT LAYER DESIGN
→ Cho mỗi department → define report matrix:
  Report name → Level (Operational/Tactical/Strategic) → Frequency → Input sources → Recipients
→ Map report flow: Operational → Tactical → Strategic (consolidation path)
→ Cho mỗi report → tag AI potential (AUGMENT/ASSIST/MANUAL)
→ Xác định strategic report tổng hợp (consolidated quarterly/annual)
→ Map KPI-to-Report links: KPI definitions → Report templates
→ Output: report_* files trong mỗi department, report_strat-001 trong 00-company/

→ Confirm design với user trước khi Phase 3
    ↓
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PHASE 3: GENERATE — Tạo folder structure + files
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

STEP 3.1: CREATE FOLDERS
→ Tạo toàn bộ folder structure theo Master Template
→ Điều chỉnh theo company size (SMALL/MEDIUM/LARGE)

STEP 3.2: GENERATE CORE FILES
→ 00-company/:
  - README.md (company overview + org chart)
  - charter_company-charter_v1.0_[date].md
  - guide_company-handbook_v1.0_[date].md
  - matrix_org-chart_v1.0_[date].md (RACI + reporting lines)
  - flow_value-chain_v1.0_[date].md (Porter diagram)
  - glossary_company-glossary_v1.0_[date].md

STEP 3.3: GENERATE DEPARTMENT FILES
→ Cho mỗi department:
  - README.md (IPO analysis + RACI + OKR/KRI/KPI summary + Quality Standards)
  - charter_[dept]-department_v1.0_[date].md
  - okr_[dept]-001_quarterly-okr_v1.0_[date].md ← Committed + Stretch OKR, aligned to Company
  - kri_[dept]-001_key-result-indicators_v1.0_[date].md ← KRI linked to Committed OKR
  - kpi_[dept]-001_[dept]-kpis_v1.0_[date].md ← KPI with Success Factor + KRI Impact
  - quality_[dept]-001_quality-standards_v1.0_[date].md ← SLI/SLO/SLA per SOP
  - report_[dept]-001_[report-name]_v1.0_[date].md

STEP 3.4: GENERATE SOP FILES
→ Cho mỗi process đã identify ở Phase 2.3:
  - Phân loại: DOCUMENTATION-ONLY vs OPERATIONAL (xem SOP Operational Layer)
  - Tạo SOP file theo SOP Template (Company Version)
  - Populate IPO analysis cho SOP
  - Populate cross-links (upstream/downstream SOPs)
  - Populate steps với ICOM
  - Populate Quality Gate: SLI/SLO targets từ quality standards file
  - Populate Prevention Measures cho mỗi step
  - Thêm AI integration tags
  - Gọi vibe-sop-orchestrator cho SOP phức tạp (DEEP ANALYSIS)

STEP 3.4a: MKDIR — Tạo SOP Folder State Machine (cho OPERATIONAL SOPs)
→ Cho mỗi OPERATIONAL SOP đã classify ở Step 3.4:
  - Chạy create_sop_folder script
  - Di chuyển SOP .md file vào template/ subfolder
  - Tạo template/README.md
  - Verify: 5 subfolders tồn tại + README.md trong template/
  - Output MKDIR log: danh sách SOP folders đã tạo
→ Cho DOCUMENTATION-ONLY SOPs: giữ dạng flat file trong department folder
→ PHÂN LOẠI QUY TẮC:
  SOP có file input cụ thể (brief, đơn hàng, data...) và file output cụ thể (bài viết, báo cáo, invoice...)?
    YES → OPERATIONAL → tạo folder state machine
    NO  → DOCUMENTATION-ONLY → flat file .md

STEP 3.4b: KWSR — Tạo 4 KWSR folders cho MỖI department (BẮT BUỘC)
→ Cho mỗi department vừa tạo:
  - mkdir: _knowledge/, _workflow/, _skills-agents/, _rules/
  - _knowledge/README.md: Index charters, KPIs, domain references, key targets
  - _workflow/README.md: Index tất cả SOPs với template paths, AI worker assignments, dependencies
  - _skills-agents/README.md: AI roster, profiles, installed skills, capability matrix, SOP coverage
  - _rules/README.md: Policies, decision authority, quality gates, escalation, constraints
→ KWSR cho phép AI worker onboard nhanh: đọc 4 README.md = hiểu đủ context để vận hành
→ Tạo company-level KWSR-OVERVIEW.md tại root

STEP 3.5: GENERATE SUPPORTING FILES
→ Policies, templates, job descriptions, registers
→ _shared/ templates và policies
→ _ai-workforce/ mapping

STEP 3.6: GENERATE ARCHIMATE VIEWPOINTS
→ flow_value-chain → Archimate Business Layer view
→ matrix_org-chart → Archimate Actor/Role view
→ README.md mỗi department → Archimate Process view

STEP 3.6a: GENERATE QUALITY MANAGEMENT FILES
→ Tạo _quality/ folder ở company root:
  - _quality/README.md: Quality policy, principles, severity levels, escalation
  - _quality/register_incidents_v1.0_[date].md: Empty incident register (header row only)
  - _quality/reports/: Empty folder for incident reports
→ _quality/README.md phải cover:
  - Blameless culture principle ("Process fail, not people fail")
  - Incident severity classification (CRITICAL/HIGH/MEDIUM/LOW)
  - When to create Incident Report (quality gate 3+ fails, SLA breach, SLO miss 2x, same error ≥ 3x)
  - Root Cause Analysis requirement (5 Whys or Fishbone — no surface solutions)
  - Prevention-first approach (Eliminate > Substitute > Detect Early > Detect Late)
  - Link đến department quality standards files

STEP 3.7: GENERATE REPORT TEMPLATES
→ Cho mỗi department → tạo report templates theo Report Layer Framework:
  - Operational reports (daily dashboard, task status)
  - Tactical reports (weekly summary, monthly review)
  - Strategic reports (quarterly board, annual review)
→ Cho mỗi report → populate Report Template với KPI links
→ Tạo consolidated strategic report trong 00-company/
→ Tag AI potential cho mỗi report (AUGMENT/ASSIST/MANUAL)
→ Output: report_* files trong mỗi department
    ↓
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PHASE 4: LINK — Cross-link tất cả files
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
→ Verify tất cả upstream/downstream links giữa SOP
→ Verify tất cả department README links đúng
→ Verify template references trong SOP
→ Verify RACI matrix references đúng roles
→ Tạo SOP Register (master list tất cả SOP với links)
    ↓
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PHASE 5: REVIEW — Quality gate
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
→ Self-check theo Quality Checklist (xem bên dưới)
→ Flag: departments cần user verify
→ Flag: SOP cần deep analysis (invoke vibe-sop-orchestrator)
→ Optional: Invoke vibe-review trên sample SOP
→ Delivery: summary của toàn bộ company structure
    ↓
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PHASE 6: AI WORKFORCE ACTIVATION (chỉ khi user yêu cầu)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

3 chế độ activation:

PHASE 6.1: ACTIVATE SINGLE DEPARTMENT
→ User: "Activate AI workforce cho [department]"
→ Đọc tất cả SOP trong department:
  - OPERATIONAL SOPs → đọc SOP .md từ template/ folder
  - DOCUMENTATION-ONLY SOPs → đọc flat file trực tiếp
→ Invoke vibe-aiworkforce với SOP inputs VÀ COMPANY_ROOT:
  COMPANY_ROOT = [company-slug] folder path (BẮT BUỘC)
  → vibe-aiworkforce sẽ lưu skills trong [COMPANY_ROOT]/[department]/ai_workforce/
→ vibe-aiworkforce tự detect SOP folders đã có sẵn (input/processing/output/archive)
→ Build: department orchestrator + specialist skills
→ Mỗi AI worker skill sử dụng SOP folder structure làm operational workspace:
  - Đọc template/ → biết quy trình
  - Nhận task qua input/ → xử lý qua processing/ → trả kết quả qua output/
  - Auto-archive sau mỗi run
→ Verify: Mỗi skill được lưu tại:
  PRIMARY: [COMPANY_ROOT]/[department]/ai_workforce/[skill-name]/SKILL.md
  SYMLINK: ~/.claude/skills/[skill-name] → PRIMARY
→ Update [department]/ai_workforce/README.md với skill status
→ Update _ai-workforce/ workforce map
→ **KWSR UPDATE: Refresh _skills-agents/README.md với skill coverage matrix**
→ **KWSR UPDATE: Refresh _rules/README.md với decision authority từ worker profiles**

PHASE 6.2: CREATE COMPANY GPS
→ User: "Tạo company GPS" hoặc "Tạo AI Chief of Staff"
→ Đọc toàn bộ company structure + activation status
→ Generate vibe-[company]-gps SKILL.md
→ Install vào _ai-workforce/ + ~/.claude/skills/
→ Test với sample task

PHASE 6.3: FULL ACTIVATION
→ User: "Activate AI workforce cho toàn bộ company"
→ Cho mỗi department (priority P0→P3): activate department
→ Sau khi xong tất cả → tạo GPS
→ Verify: GPS skill có route đúng mọi department không?

```

---

## Industry Templates (Trần sao âm vậy)

### SaaS / Tech Startup

```
Primary Activities (Layer 2):
  01-product/         ← Product development (R&D)
  02-marketing/       ← Growth marketing
  03-sales/           ← B2B/B2C sales
  04-cs/              ← Customer success + support

Support Activities (Layer 3):
  05-engineering/     ← Engineering ops (DevOps, infra)
  06-hr/              ← People ops
  07-finance/         ← Finance + accounting
  08-legal/           ← Legal + compliance

Strategy (Layer 1):
  00-company/         ← CEO, strategy, board

Key SOPs:
  SOP-PROD-001 — Sprint planning
  SOP-PROD-002 — Feature release
  SOP-MKT-001  — Content creation
  SOP-SAL-001  — Lead to close
  SOP-CS-001   — Ticket handling
  SOP-ENG-001  — Incident response
```

### E-commerce / Retail

```
Primary Activities:
  01-merchandising/   ← Product selection + pricing
  02-marketing/       ← Marketing + promotion
  03-operations/      ← Warehouse + fulfillment
  04-cs/              ← Customer service

Support Activities:
  05-procurement/     ← Vendor management
  06-hr/
  07-finance/
  08-it/

Key SOPs:
  SOP-MERCH-001 — Product listing creation
  SOP-OPS-001   — Order fulfillment
  SOP-OPS-002   — Inventory management
  SOP-CS-001    — Returns & refunds
  SOP-PROC-001  — Vendor selection
```

### Professional Services (Agency / Consulting)

```
Primary Activities:
  01-business-dev/    ← Lead gen + proposals
  02-delivery/        ← Project delivery
  03-client-success/  ← Account management

Support Activities:
  04-hr/              ← Talent management
  05-finance/
  06-operations/      ← Internal ops
  07-it/

Key SOPs:
  SOP-BD-001    — Proposal creation
  SOP-DEL-001   — Project kickoff
  SOP-DEL-002   — Sprint execution
  SOP-DEL-003   — Client reporting
  SOP-CS-001    — Account review
```

### F&B / Restaurant

```
Primary Activities:
  01-kitchen/         ← Food preparation
  02-service/         ← Front of house
  03-delivery/        ← Delivery + online orders

Support Activities:
  04-procurement/     ← Ingredient sourcing
  05-hr/
  06-finance/
  07-quality/         ← Food safety + hygiene

Key SOPs:
  SOP-KIT-001   — Opening procedures
  SOP-KIT-002   — Food prep standards
  SOP-SVC-001   — Customer greeting
  SOP-DEL-001   — Order dispatch
  SOP-QA-001    — Hygiene inspection
```

### Manufacturing

```
Primary Activities:
  01-production/      ← Manufacturing
  02-quality/         ← QC/QA
  03-logistics/       ← Warehousing + shipping
  04-sales/           ← Sales + distribution

Support Activities:
  05-procurement/     ← Raw material sourcing
  06-maintenance/     ← Equipment maintenance
  07-hr/
  08-finance/
  09-safety/          ← HSE (Health, Safety, Environment)

Key SOPs:
  SOP-PROD-001  — Production planning
  SOP-QA-001    — Quality inspection
  SOP-LOG-001   — Shipping process
  SOP-SAFE-001  — Safety incident response
```

---

## Value Chain Diagram Format

### ASCII (mặc định — mọi nơi đọc được)

```
[Value Chain: [Company Name] — [Industry]]

┌─────────────────────────────────────────────────────────────────┐
│  LAYER 1: STRATEGY                                               │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐                       │
│  │ Board    │→│ CEO      │→│ Strategy │                       │
│  └──────────┘  └──────────┘  └──────────┘                       │
│  Output: Vision, Annual Plan, Budget                             │
├─────────────────────────────────────────────────────────────────┤
│  LAYER 2: OPERATIONS (Primary Activities)                        │
│                                                                   │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐        │
│  │ Inbound  │→│ Ops      │→│ Outbound │→│ Sales    │        │
│  │ Logistics│  │          │  │ Logistics│  │ & Mktg   │        │
│  └──────────┘  └──────────┘  └──────────┘  └──────────┘        │
│       ↓             ↓             ↓             ↓                 │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐        │
│  │SOP-001  │  │SOP-003  │  │SOP-005  │  │SOP-007  │        │
│  │SOP-002  │  │SOP-004  │  │SOP-006  │  │SOP-008  │        │
│  └──────────┘  └──────────┘  └──────────┘  └──────────┘        │
├─────────────────────────────────────────────────────────────────┤
│  LAYER 3: SUPPORT                                                │
│  ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐       │
│  │  HR    │ │Finance │ │   IT   │ │ Legal  │ │ Procmt │       │
│  └────────┘ └────────┘ └────────┘ └────────┘ └────────┘       │
│  ↑ Support tất cả Layer 2 activities ↑                          │
└─────────────────────────────────────────────────────────────────┘
```

### Mermaid (ưu tiên — render trong GitHub/Obsidian)

```mermaid
graph TB
    subgraph L1["LAYER 1: STRATEGY"]
        STRAT[Strategy Office]
    end

    subgraph L2["LAYER 2: OPERATIONS"]
        INB[Inbound Logistics] --> OPS[Operations]
        OPS --> OUT[Outbound Logistics]
        OUT --> MKT[Marketing & Sales]
        MKT --> CS[Customer Service]
    end

    subgraph L3["LAYER 3: SUPPORT"]
        HR[HR] --> L2
        FIN[Finance] --> L2
        IT[IT] --> L2
        LEG[Legal] --> L2
    end

    STRAT --> L2
```

---

## Company Charter Template

```markdown
# [Company Name] — Company Charter

**Phiên bản:** 1.0
**Ngày:** [YYYY-MM-DD]

---

## 1. Vision
[1 câu: Công ty sẽ trở thành gì trong 5-10 năm]

## 2. Mission
[1-2 câu: Công ty tồn tại để làm gì, cho ai]

## 3. Core Values
1. [Value 1]: [Giải thích 1 câu]
2. [Value 2]: [Giải thích 1 câu]
3. [Value 3]: [Giải thích 1 câu]

## 4. Strategic Objectives (Năm nay)
| # | Objective | KPI | Target | Owner |
|---|-----------|-----|--------|-------|
| 1 | [Mục tiêu] | [Metric] | [Value] | [Department] |

## 5. Value Chain Overview
[Link: flow_value-chain_v1.0_[date].md]

## 6. Organization Structure
[Link: matrix_org-chart_v1.0_[date].md]

## 7. Departments
| Department | Layer | Head | IPO Summary | README |
|-----------|-------|------|-------------|--------|
| Strategy | L1 | [Name] | Input → Output | [Link] |
| Marketing | L2 | [Name] | Input → Output | [Link] |
| Sales | L2 | [Name] | Input → Output | [Link] |
| Operations | L2 | [Name] | Input → Output | [Link] |
| HR | L3 | [Name] | Input → Output | [Link] |
| Finance | L3 | [Name] | Input → Output | [Link] |

## 8. Key Policies
- [Policy 1](./policy_company-001_xxx.md)
- [Policy 2](./policy_company-002_xxx.md)
```

---

## AI Workforce Layer

### Triết lý: Company = Human Org + AI Workforce

```
Công ty được thiết kế theo "Trần sao âm vậy" — sao chép mô hình thực tế.
Nhưng luôn giữ sẵn khả năng chuyển đổi bất kỳ phòng ban nào thành AI Workforce.

Layer thinking:
  Layer H (Human): SOP + roles + KPI — con người vận hành
  Layer A (AI):    Skills + workflows + quality gates — AI vận hành theo đúng SOP

2 Layer này song song, không thay thế nhau:
  - Human layer luôn tồn tại (SOP là ground truth)
  - AI layer activate khi user yêu cầu (không auto-generate)
  - AI layer tuân thủ ĐÚNG SOP của Human layer — không phát minh lại
```

### Activation Rule

```
AI Workforce KHÔNG tự động generate khi tạo company.
Chỉ generate khi user EXPLICITLY yêu cầu:
  - "Activate AI workforce cho department marketing"
  - "Build AI workforce cho toàn bộ company"
  - "Chuyển phòng sales thành AI workforce"

Khi activate → invoke vibe-aiworkforce, dùng SOP của department làm input.
```

### ai_workforce/ trong mỗi Department

```
Mỗi department có folder ai_workforce/ (ban đầu rống hoặc không tồn tại).
Khi activate → folder chứa skills của department đó.
OPERATIONAL SOPs đã có sẵn folder state machine — AI workforce sử dụng ngay.

02-marketing/
  ├── README.md
  ├── charter_marketing-department_v1.0_[date].md
  ├── create-content/                            ← OPERATIONAL SOP (folder state machine)
  │   ├── template/
  │   │   └── sop_mkt-001_content-creation_v1.0_[date].md
  │   ├── input/                                 ← AI worker nhận task ở đây
  │   ├── processing/ai-draft/ + human-review/   ← AI worker xử lý ở đây
  │   ├── output/                                ← AI worker trả kết quả ở đây
  │   └── archive/[YYYY-MM]/                     ← Auto-archive sau mỗi run
  ├── seo-audit/                                 ← OPERATIONAL SOP
  │   ├── template/
  │   │   └── sop_mkt-002_seo-optimization_v1.0_[date].md
  │   ├── input/ /processing/ /output/ /archive/
  ├── kpi_mkt-001_marketing-kpis_v1.0_[date].md
  ├── report_mkt-001_weekly-performance_v1.0_[date].md
  └── ai_workforce/                              ← CHỈ tồn tại khi activated
      ├── README.md                              ← AI workforce map cho dept này
      ├── vibe_[co]-mkt-orchestrator/
      │   └── SKILL.md                           ← Department orchestrator
      ├── vibe_[co]-mkt-content-writer/
      │   └── SKILL.md                           ← Specialist skill (uses create-content/ folder)
      └── vibe_[co]-mkt-seo-analyst/
          └── SKILL.md                           ← Specialist skill (uses seo-audit/ folder)

03-sales/
  ├── manage-leads/                              ← OPERATIONAL SOP
  │   ├── template/
  │   ├── input/ /processing/ /output/ /archive/
  ├── create-proposal/                           ← OPERATIONAL SOP
  │   ├── template/
  │   ├── input/ /processing/ /output/ /archive/
  └── ai_workforce/                              ← CHỈ tồn tại khi activated
      ├── README.md
      ├── vibe_[co]-sales-orchestrator/
      │   └── SKILL.md
      └── vibe_[co]-sales-prospector/
          └── SKILL.md
```

### AI Workforce Naming Convention

```
Skill name format: vibe-[company-slug]-[dept]-[role]

[company-slug] = tên công ty viết tắt (ví dụ: acme, tf cho techflow)
[dept]         = department code (mkt, sales, ops, cs, fin, hr, eng, prod)
[role]         = vai trò cụ thể (orchestrator, writer, analyst, prospector...)

Examples:
  vibe-tf-mkt-orchestrator      ← TechFlow marketing orchestrator
  vibe-tf-mkt-content-writer    ← TechFlow content writer
  vibe-tf-sales-orchestrator    ← TechFlow sales orchestrator
  vibe-tf-sales-prospector      ← TechFlow lead prospector
  vibe-tf-ops-orchestrator      ← TechFlow operations orchestrator

File path format: [department]/ai_workforce/vibe_[co]-[dept]-[role]/SKILL.md
```

### AI Workforce per Department — Design Template

Khi activate AI workforce cho department → chạy qua các bước:

```
STEP 1: SOP SCAN
→ Đọc tất cả SOP files trong department
→ Phân loại mỗi SOP: DOCUMENTATION-ONLY vs OPERATIONAL
→ OPERATIONAL SOPs → kiểm tra SOP folder state machine đã tồn tại chưa
  → Đã có → AI workforce sử dụng sẵn folder structure (input/processing/output/archive)
  → Chưa có → chạy create_sop_folder script trước khi activate
→ Mỗi SOP → 1 potential specialist skill
→ Mỗi SOP → map IPO: input → process → output → quality gate

STEP 2: SKILL DESIGN (via vibe-aiworkforce)
→ Tạo department orchestrator: vibe-[co]-[dept]-orchestrator
→ Tạo specialist skills: vibe-[co]-[dept]-[role] per SOP
→ Mỗi skill tuân thủ ĐÚNG SOP (trần sao âm vậy)
→ Quality tier assessment: TEMPLATED / EXPERT-CLONE / GPS-ENHANCED

STEP 3: SKILL GENERATION
→ Invoke vibe-aiworkforce để build từng skill
→ PASS COMPANY_ROOT = [company-slug] root path (BẮT BUỘC)
→ Mỗi skill được install vào: [COMPANY_ROOT]/[department]/ai_workforce/vibe_[co]-[dept]-[role]/
→ Sau mỗi skill build → tạo symlink: ~/.claude/skills/[skill-name] → PRIMARY
→ Department README.md update: thêm AI Workforce section

STEP 4: VERIFICATION
→ Mỗi skill build xong → chạy vibe-review để verify
→ Test: skill có tuân thủ SOP không?
→ Test: output có đạt quality gate không?
```

### Department ai_workforce/README.md Template

```markdown
# AI Workforce — [Department Name]

## Status: [⬜ Not Activated / 🟡 In Progress / 🟢 Activated]

## Skills

| # | Skill Name | SOP Source | Quality Tier | Build Status | Last Updated |
|---|-----------|-----------|-------------|-------------|-------------|
| 0 | vibe-[co]-[dept]-orchestrator | All SOPs | — | ⬜/🟡/🟢 | [date] |
| 1 | vibe-[co]-[dept]-[role1] | SOP-[DEPT]-001 | [Tier] | ⬜/🟡/🟢 | [date] |
| 2 | vibe-[co]-[dept]-[role2] | SOP-[DEPT]-002 | [Tier] | ⬜/🟡/🟢 | [date] |

## Activation Command
Per skill: invoke /vibe-aiworkforce với SOP source
Full department: invoke /vibe-aiworkforce cho từng SOP + orchestrator
```

---

## Company GPS Skill: vibe-[company]-gps

### Concept

```
Mỗi company có 1 GPS skill riêng — là "AI CEO" / "AI Chief of Staff":
  vibe-[company-slug]-gps

Ví dụ: vibe-techflow-gps, vibe-acme-gps

Role: Orchestrator toàn bộ AI workforce của công ty.
  - HIỂU hết toàn bộ SOP của công ty
  - BIẾT rõ mỗi department có AI workforce nào
  - NHẬN task → phân tích → route đến đúng department skill
  - CHUẨN theo SOP — không cho phép output vi phạm SOP
  - REPORT lại kết quả theo report template của công ty
```

### vibe-[company]-gps — Skill Specification

```
Purpose:
  Nhận bất kỳ task nào liên quan đến vận hành công ty,
  tự động route đến đúng AI workforce + enforce SOP compliance.

Persona: Chief of Staff — hiểu toàn bộ công ty, điều phối mọi thứ.

Input:  Task description bằng ngôn ngữ tự nhiên (việc/an tiếng Việt hoặc Anh)
Output: Task hoàn thành theo SOP + report kết quả

Knowledge Base (được inject vào skill):
  1. Company charter (vision, mission, values)
  2. Value chain diagram (3 layers)
  3. Org chart + RACI matrix
  4. Tất cả department README.md (IPO analysis)
  5. Tất cả SOP files (được reference, không embed hết)
  6. KPI definitions
  7. AI workforce map (department → skills → activation status)

Execution Flow:
  1. RECEIVE task
  2. CLASSIFY task → thuộc department nào? process nào?
  3. CHECK: department có AI workforce activated không?
     YES → route đến đúng skill
     NO  → read SOP → execute manually theo SOP steps
  4. ENFORCE: output phải tuân thủ SOP + quality gate
  5. REPORT: kết quả theo report template của department

Fallback khi department chưa có AI workforce:
  → Đọc SOP file của department đó
  → Execute từng step theo SOP
  → Tag: [MANUAL EXECUTION — consider activating AI workforce]
```

### vibe-[company]-gps — SKILL.md Template

```markdown
---
name: vibe-[company-slug]-gps
description: >
  AI Chief of Staff cho [Company Name].
  Hiểu toàn bộ SOP + AI workforce, điều phối task đến đúng department,
  enforce SOP compliance, report kết quả.
  Input: task tự nhiên. Output: task hoàn thành theo SOP.
type: skill
---

# [Company Name] — AI Chief of Staff

> **"Nhận task → Hiểu SOP → Route đúng người → Chuẩn output → Báo cáo."**

## Company Context

**Tên:** [Company Name]
**Industry:** [Industry]
**Slogan:** [Company slogan]

### Value Chain
[Embed: ASCII value chain diagram]

### Departments
| Department | Layer | AI Workforce | Status |
|-----------|-------|-------------|--------|
| Marketing | L2 | vibe-[co]-mkt-orchestrator | 🟢/⬜ |
| Sales | L2 | vibe-[co]-sales-orchestrator | 🟢/⬜ |
| Operations | L2 | vibe-[co]-ops-orchestrator | 🟢/⬜ |
| Customer Service | L2 | vibe-[co]-cs-orchestrator | 🟢/⬜ |
| Finance | L3 | vibe-[co]-fin-orchestrator | 🟢/⬜ |
| HR | L3 | vibe-[co]-hr-orchestrator | 🟢/⬜ |

### SOP Reference Map
| SOP Code | Department | Process | AI Skill |
|----------|-----------|---------|----------|
| SOP-MKT-001 | Marketing | Content creation | vibe-[co]-mkt-content-writer |
| SOP-SAL-001 | Sales | Lead qualification | vibe-[co]-sales-prospector |
| ... | ... | ... | ... |

## Execution Protocol

### Step 1: RECEIVE
Nhận task → parse: department? process? urgency? stakeholders?

### Step 2: CLASSIFY
Map task → SOP code → department → AI skill (nếu activated)

### Step 3: ROUTE
- Department CÓ AI workforce → delegate sang skill đó
- Department CHƯA CÓ → đọc SOP → execute manually

### Step 4: ENFORCE
Quality check output theo SOP:
- Input/Output đúng format?
- Quality gate pass?
- RACI đúng? (ai responsible, ai accountable)
- KPI impacted? → note trong report

### Step 5: REPORT
Output report theo template:
- Task: [description]
- Department: [name]
- SOP: [code]
- Status: [done/failed/escalated]
- Output: [link/artifact]
- Next action: [if any]
```

### vibe-[company]-gps — Folder Location

```
Company GPS skill được install TRONG company folder (PRIMARY location):

1. PRIMARY — Trong company folder (BẮT BUỘC — đây là nguồn chân lý):
   [COMPANY_ROOT]/
     ├── 00-company/
     ├── 01-marketing/
     │     └── ai_workforce/        ← Department skills ở đây
     ├── ...
     └── _ai-workforce/
         ├── README.md
         ├── workforce-map_v1.0_[date].md
         ├── build-plan_v1.0_[date].md
         └── vibe_[co]-gps/
             └── SKILL.md              ← Company GPS skill (PRIMARY)

2. SYMLINK — Từ ~/.claude/skills/ (BẮT BUỘC — để gọi được từ CLI):
   ~/.claude/skills/
     └── vibe-[co]-gps → [COMPANY_ROOT]/_ai-workforce/vibe_[co]-gps/

QUAN TRỌNG — Quy tắc lưu trữ (ÁP DỤNG CHO TẤT CẢ SKILLS):
  → MỌI skills của company (GPS + department skills) phải được lưu trong company folder
  → Company folder là PRIMARY copy — ~/.claude/skills/ chỉ là symlink
  → Khi update skill → update PRIMARY (trong company folder) trước
  → KHÔNG bao giờ chỉ lưu skill ở ~/.claude/skills/ mà không có bản trong company folder
  → Symlink = BẮT BUỘC, không phải tùy chọn
  → Nếu company folder nằm trong iCloud/CloudDocs → skill vẫn track được qua version control

Share toàn bộ company = copy 1 folder → tất cả skills đi kèm tự động.
```

### vibe-[company]-gps — Generation Process

```
GPS skill được tạo khi user yêu cầu:
  "Tạo company GPS" hoặc "Activate AI Chief of Staff"

Generation steps:
  1. Đọc toàn bộ company structure (charters, org charts, SOPs)
  2. Đọc ai_workforce/ activation status của mỗi department
  3. Inject company context vào SKILL.md template
  4. Tạo SOP Reference Map (task → SOP → AI skill mapping)
  5. Tạo department routing table
  6. Install vào PRIMARY location: [COMPANY_ROOT]/_ai-workforce/vibe_[co]-gps/SKILL.md (BẮT BUỘC)
  7. Tạo symlink: ~/.claude/skills/vibe-[co]-gps → PRIMARY (BẮT BUỘC — không chỉ copy)
  8. Test: cho GPS skill 1 sample task → verify routing đúng
  9. Verify: PRIMARY tồn tại + symlink hợp lệ

GPS skill CẬP NHẬT khi:
  - Department activate/deactivate AI workforce → update routing table
  - SOP mới được tạo → update SOP Reference Map
  - Company structure thay đổi → update context
```

---

## Full Company + AI Workforce Structure (Example)

```
techflow/                                          ← Company root
├── 00-company/
│   ├── README.md
│   ├── charter_company-charter_v1.0_2026-05-01.md
│   ├── matrix_org-chart_v1.0_2026-05-01.md
│   ├── flow_value-chain_v1.0_2026-05-01.md
│   └── glossary_company-glossary_v1.0_2026-05-01.md
│
├── 01-marketing/
│   ├── README.md                                  ← IPO + RACI + KPIs + Report matrix
│   ├── charter_marketing-department_v1.0_[date].md
│   ├── create-content/                            ← OPERATIONAL SOP (state machine)
│   │   ├── template/
│   │   │   └── sop_mkt-001_content-creation_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── seo-optimization/                          ← OPERATIONAL SOP (state machine)
│   │   ├── template/
│   │   │   └── sop_mkt-002_seo-optimization_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── kpi_mkt-001_marketing-kpis_v1.0_[date].md
│   ├── report_mkt-001_weekly-performance_v1.0_[date].md
│   └── ai_workforce/                              ← Activated khi user yêu cầu
│       ├── README.md
│       ├── vibe_tf-mkt-orchestrator/
│       │   └── SKILL.md
│       ├── vibe_tf-mkt-content-writer/
│       │   └── SKILL.md
│       └── vibe_tf-mkt-seo-analyst/
│           └── SKILL.md
│
├── 02-sales/
│   ├── README.md
│   ├── qualify-leads/                             ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_sal-001_lead-qualification_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── create-proposal/                           ← OPERATIONAL SOP
│   │   ├── template/
│   │   │   └── sop_sal-002_proposal-creation_v1.0_[date].md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── kpi_sal-001_sales-kpis_v1.0_[date].md
│   └── ai_workforce/                              ← Activated khi user yêu cầu
│       ├── README.md
│       ├── vibe_tf-sales-orchestrator/
│       │   └── SKILL.md
│       └── vibe_tf-sales-prospector/
│           └── SKILL.md
│
├── _shared/
│   └── templates/
│
└── _ai-workforce/
    ├── README.md                                  ← Company-wide AI workforce overview
    ├── workforce-map_v1.0_[date].md               ← All departments → skills map
    ├── build-plan_v1.0_[date].md                  ← Build order + priorities
    └── vibe_tf-gps/                               ← Company GPS skill
        └── SKILL.md                               ← AI Chief of Staff
```

### Activation Flow

```
Tạo company (Phase 0-5):
  → Chỉ tạo Human Layer: SOPs, KPIs, reports, policies
  → ai_workforce/ folders KHÔNG tồn tại
  → _ai-workforce/ chỉ có README.md (mapping plan)

User yêu cầu activate department:
  "Activate AI workforce cho marketing"
      ↓
  Phase 6.1: ACTIVATE DEPARTMENT
  → Đọc tất cả SOP trong 01-marketing/
    → OPERATIONAL SOPs: đọc từ template/ trong mỗi SOP folder
    → SOP folders đã có sẵn input/processing/output/archive → AI workforce dùng ngay
  → Invoke vibe-aiworkforce với SOP inputs
  → Build: vibe-tf-mkt-orchestrator + specialist skills
  → Install vào 01-marketing/ai_workforce/
  → Update _ai-workforce/README.md (status → 🟢)

User yêu cầu tạo GPS:
  "Tạo company GPS cho TechFlow"
      ↓
  Phase 6.2: CREATE COMPANY GPS
  → Đọc toàn bộ company structure
  → Đọc activation status tất cả departments
  → Generate vibe-tf-gps SKILL.md
  → Install vào _ai-workforce/vibe_tf-gps/ (PRIMARY — BẮT BUỘC)
  → Copy/symlink sang ~/.claude/skills/vibe-tf-gps/ (SECONDARY — TÙY CHỌN)
  → Test với sample task

User yêu cầu activate toàn bộ:
  "Activate AI workforce cho toàn bộ company"
      ↓
  Phase 6.3: FULL ACTIVATION
  → Cho mỗi department (theo priority: P0→P1→P2→P3):
    → Activate department (như Phase 6.1)
  → Sau khi xong tất cả → tạo GPS (như Phase 6.2)
```

---

## Small Company Simplification

```
Khi company size = SMALL (1-10 người):

  FOLDER STRUCTURE (simplified):
  [company-slug]/
  ├── 00-company/
  │   ├── README.md
  │   ├── charter_company-charter_v1.0_[date].md
  │   └── flow_value-chain_v1.0_[date].md
  ├── 01-growth/              ← Marketing + Sales gộp
  │   ├── README.md
  │   ├── sop_growth-001_lead-gen_v1.0_[date].md
  │   ├── sop_growth-002_content-creation_v1.0_[date].md
  │   ├── sop_growth-003_sales-process_v1.0_[date].md
  │   └── kpi_growth-001_growth-kpis_v1.0_[date].md
  ├── 02-delivery/            ← Operations + CS gộp
  │   ├── README.md
  │   ├── sop_ops-001_order-processing_v1.0_[date].md
  │   ├── sop_ops-002_customer-service_v1.0_[date].md
  │   └── kpi_ops-001_ops-kpis_v1.0_[date].md
  ├── 03-backoffice/          ← HR + Finance + Admin gộp
  │   ├── README.md
  │   ├── sop_hum-001_hiring_v1.0_[date].md
  │   ├── sop_fin-001_bookkeeping_v1.0_[date].md
  │   └── kpi_back-001_kpis_v1.0_[date].md
  └── _shared/
      └── templates/

  SOP count: ~8-15 SOPs (thay vì 30-50+)
  Departments: 3 (thay vì 8-12)
  Roles: Hybrid (1 người nhiều vai trò)
```

---

## Report Layer Framework

### Triết lý: Report = Feedback Loop

```
Strategy ──decide──→ Operations ──execute──→ Output (sản phẩm/dịch vụ)
    ↑                                          │
    └──────────── Report (feedback) ───────────┘

Report KHÔNG phải layer riêng — Report là cơ chế FEEDBACK chạy xuyên suốt.
Mỗi IPO output của department này → thành report input của department kia hoặc layer trên.

Hệ thống không có report → HỆ MÙ → quyết định dựa trên cảm tính
Hệ thống có report đúng → HỆ TỰ ĐIỀU CHỈNH → quyết định dựa trên data
```

### Report IPO

```
Mỗi Report cũng là 1 IPO:

  I = Data thô từ operations (logs, CRM, GA, accounting...)
  C = KPI targets, thresholds, SLA (so sánh với cái gì?)
  O = Insight + Action recommendation (không chỉ số liệu)
  M = BI tool, spreadsheet, AI analysis, dashboard

Report TỐT = Output trả lời được 3 câu:
  1. SO WHAT?    — Số liệu này nghĩa là gì?
  2. NOW WHAT?   — Cần hành động gì?
  3. WHO?         — Ai chịu trách nhiệm?

Report XẤU = Chỉ ném số liệu, không có insight, không có action recommendation
```

### 2 Trục phân loại Report

#### Trục dọc: Report theo Level quản trị

```
LAYER 1 — STRATEGIC REPORTS (Cho Board / CEO)
┌──────────────────────────────────────────────────┐
│  Input:    KPI summaries từ tất cả departments   │
│  Process:  Trend analysis, gap-to-target         │
│  Output:   Strategic decision + course correction │
│  Control:  Annual plan, budget, shareholder exp  │
│  Freq:     Monthly / Quarterly / Annual           │
│  Ví dụ:    Board report, P&L, Market position    │
└──────────────────────────────────────────────────┘
         ↑ là consolidation của
LAYER 2 — TACTICAL REPORTS (Cho Department Head)
┌──────────────────────────────────────────────────┐
│  Input:    Operational data + team performance   │
│  Process:  KPI tracking, bottleneck analysis     │
│  Output:   Department health + action plan       │
│  Control:  Department KPI targets                │
│  Freq:     Weekly / Monthly                      │
│  Ví dụ:    Pipeline report, Content performance  │
└──────────────────────────────────────────────────┘
         ↑ là consolidation của
LAYER 3 — OPERATIONAL REPORTS (Cho Team Lead / IC)
┌──────────────────────────────────────────────────┐
│  Input:    Raw data từ daily operations           │
│  Process:  Status tracking, exception flagging   │
│  Output:   Task status + issues + next actions   │
│  Control:  SLA, quality standards                │
│  Freq:     Daily / Real-time                     │
│  Ví dụ:    Daily dashboard, ticket queue status  │
└──────────────────────────────────────────────────┘
```

#### Trục ngang: Report theo Chu kỳ thời gian

```
REAL-TIME    → Dashboard, alert, notification    → "Có gì đang xảy ra?"
DAILY        → Standup, checklist, status         → "Hôm nay làm gì, có issue gì?"
WEEKLY       → Team summary, pipeline snapshot    → "Tuần này đạt/sai gì?"
MONTHLY      → Department review, KPI tracking    → "Tháng này so target thế nào?"
QUARTERLY    → Strategic review, board report     → "Đúng hướng chưa, cần xoay không?"
ANNUAL       → Year in review, next year plan     → "Năm qua thành/bại, năm sau làm gì?"
```

### Report Template

```markdown
# Report: [Tên Report]

**Mã Report:** RPT-[DOMAIN]-[NUMBER]
**Loại:** [Strategic / Tactical / Operational]
**Chu kỳ:** [Real-time / Daily / Weekly / Monthly / Quarterly / Annual]
**Chủ sở hữu:** [Department / Role]
**Người nhận:** [Stakeholders nhận report]
**Ngày:** [YYYY-MM-DD]

---

## 1. Executive Summary
[2-3 câu: Kết quả chính, bất ngờ, hành động cần làm]

## 2. Indicators Dashboard

### 2.1 OKR Progress (Monthly / Quarterly only)
| Objective | Type | Key Result | Target | Actual | Score | Trend |
|-----------|------|-----------|--------|--------|-------|-------|
| [O1: Committed] | Committed | KR1: [metric] | [value] | [value] | [0.0-1.0] | [↑→↓] |
| [O2: Stretch] | Stretch | KR1: [metric] | [value] | [value] | [0.0-1.0] | [↑→↓] |

### 2.2 KRI — Outcome (Weekly / Monthly)
| KRI | OKR Alignment | Target | Actual | Gap | Trend |
|-----|-------------|--------|--------|-----|-------|
| [KRI 1] | [→ OKR-O1-KR1] | [value] | [value] | [%] | [↑→↓] |

### 2.3 KPI — Performance (Daily / Weekly)
| KPI | Success Factor | Target | Actual | Status | SLO |
|-----|---------------|--------|--------|--------|-----|
| [KPI 1] | [factor] | [value] | [value] | [🟢🟡🔴] | [SLO link] |

## 3. SO WHAT? — Phân tích
[Giải thích số liệu — trend, nguyên nhân, connection giữa các KPI]

## 4. NOW WHAT? — Hành động
| # | Hành động | Ai làm | Khi nào | Priority |
|---|----------|--------|---------|----------|
| 1 | [Action] | [Owner] | [Date] | [P0/P1/P2] |

## 5. WHO? — Follow-up
[Eskalation, quyết định cần approve, resource cần thêm]

---

## Data Sources
| Source | Refresh rate | Link |
|--------|-------------|------|
| [CRM] | [Daily] | [URL] |

## History
| Period | Status | Key Action |
|--------|--------|-----------|
| [Prev period] | [Status] | [Action taken] |
```

### Report Matrix per Department

```
Mỗi department có report matrix (thuộc README.md hoặc file riêng):

| Report | Level | Freq | Input từ | Output cho | SOP | AI Potential |
|--------|-------|------|----------|-----------|-----|-------------|
| Daily dashboard | Operational | Daily | [Sources] | Team Lead | [SOP link] | [AI AUGMENT] |
| Weekly summary | Tactical | Weekly | [Sources] | Dept Head | [SOP link] | [AI AUGMENT] |
| Monthly review | Tactical | Monthly | [Sources] | CEO | [SOP link] | [AI ASSIST] |
| Quarterly board | Strategic | Quarterly | All depts | Board | [SOP link] | [AI ASSIST] |

AI Potential đánh giá:
  [AI AUGMENT] → AI có thể tự tổng hợp data + generate report
  [AI ASSIST]  → AI hỗ trợ phân tích, human review trước khi gửi
  [MANUAL]     → Cần human judgment (strategic assessment, stakeholder communication)
```

### Report Flow Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│                    REPORT FLOW (Feedback Loop)                    │
│                                                                   │
│  OPERATIONAL DATA                                                │
│  (CRM, GA, ERP, tickets, logs)                                  │
│       ↓                                                           │
│  ┌──────────────┐                                                │
│  │ L3: DAILY    │ → Team Lead → exception handling              │
│  │ dashboards   │                                               │
│  └──────┬───────┘                                                │
│         ↓ consolidate                                            │
│  ┌──────────────┐                                                │
│  │ L2: WEEKLY/  │ → Department Head → action plan              │
│  │ MONTHLY      │                                               │
│  └──────┬───────┘                                                │
│         ↓ consolidate                                            │
│  ┌──────────────┐                                                │
│  │ L1: QUARTERLY│ → CEO/Board → strategic decision             │
│  │ / ANNUAL     │                                               │
│  └──────┬───────┘                                                │
│         ↓                                                        │
│  STRATEGIC DECISION → Điều chỉnh KPI/budget/process             │
│         ↓                                                        │
│  Quay lại Operations (thay đổi target, resource, priority)      │
└─────────────────────────────────────────────────────────────────┘
```

### Report trong Folder Structure

```
Reports nằm NGAY TRONG department folder (không tách riêng):

02-marketing/
  ├── ...
  ├── kpi_mkt-001_marketing-kpis_v1.0_[date].md    ← KPI định nghĩa
  ├── report_mkt-001_weekly-performance_v1.0_[date].md  ← Report template
  └── report_mkt-002_monthly-review_v1.0_[date].md      ← Report template

00-company/
  ├── ...
  └── report_strat-001_quarterly-board_v1.0_[date].md   ← Consolidated strategic report

Mỗi report template = format chuẩn, điền data khi chạy.
```

### Report & KPI Relationship

```
KPI DEFINITION file (kpi_[dept]-001) ← ĐỊNH NGHĨA:
  - KPI name, metric, target, frequency, owner
  → Trả lời: "Đo cái gì? Bằng bao nhiêu? Ai chịu trách nhiệm?"

REPORT TEMPLATE file (report_[dept]-001) ← THỰC THI:
  - Populate KPI actual values, gap analysis, trend, action
  → Trả lời: "Thực tế thế nào? Gap bao nhiêu? Làm gì tiếp?"

Quan hệ:
  KPI = Control (C trong ICOM)
  Report = Output (O trong ICOM) của quy trình "đo lường và review"
  SOP của quy trình review → link tới cả KPI definition lẫn Report template
```

---

## Integration với Vibe Ecosystem

### Upstream — Gọi skill này sau khi:
```
vibe-xthinking-orchestrator (phân tích sâu industry/domain → cần materialize thành công ty)
vibe-prd-creator (có product PRD → cần company structure để deliver product)
vibe-opc-orchestrator (One Person Company → cần khởi tạo structure cho 1-person company)
viet-one-man-company (Hướng dẫn OPC → cần company structure)
```

### Downstream — Sau khi tạo company, user thường gọi:
```
vibe-sop-orchestrator (chỉnh sửa / sâu hóa từng SOP riêng)
vibe-aiworkforce (build AI workforce cho từng department)
vibe-review (review chất lượng SOP, policy)
vibe-omnifocus (tạo action items từ build plan)
vibe-gps (execute từng task trong company setup)
vibe-overview (tạo overview note cho DEVONthink)
```

### Internal — Core Skills sử dụng

```
vibe-sop-orchestrator
  → Khi: Tạo/chỉnh sửa SOP files
  → Cách: Dùng template + "trần sao âm vậy" principle
  → Deep Analysis SOP → invoke vibe-xthinking-orchestrator

vibe-xthinking-orchestrator
  → Khi: Industry/domain phức tạp, cần explicit thinking trước
  → Cách: Mode TOPIC, agents 1-5 cho value chain analysis

vibe-aiworkforce
  → Khi: User muốn activate AI workforce cho department
  → Cách: Dùng company SOPs làm input, build skills per process

vibe-review
  → Khi: Quality gate cho SOP, policy, charter
  → Cách: vibe-review [file] --quick cho internal, full cho final

vibe-architecture-design
  → Khi: Company có IT/software component cần architecture
  → Cách: Dùng cho 08-it/ department design

vibe-prd-creator
  → Khi: Company có product cần PRD
  → Cách: Output PRD → feed vào product department SOPs
```

---

## Quality Checklist — Trước khi deliver

```
□ 00-company/ có đủ: charter, org chart, value chain diagram, glossary?
□ Mỗi department có README.md với IPO analysis (I-C-O-M)?
□ Mỗi department có charter (mission, goals)?
□ Mỗi department có KPI file?
□ Value chain diagram đúng 3 layers (Strategy / Operations / Support)?
□ Mỗi department được tag đúng layer?
□ Tất cả SOP files theo naming convention đúng?
□ Mỗi SOP được phân loại: DOCUMENTATION-ONLY vs OPERATIONAL?
□ OPERATIONAL SOPs có folder state machine (template/input/processing/output/archive)?
□ Mỗi SOP folder có đủ 5 subfolders?
□ processing/ có 2 subfolder: ai-draft/ và human-review/?
□ template/ có README.md với convention "Do not edit directly"?
□ SOP .md file nằm trong template/ (cho OPERATIONAL SOPs)?
□ DOCUMENTATION-ONLY SOPs giữ dạng flat file .md trong department folder?
□ Mỗi SOP có IPO analysis section?
□ Mỗi SOP có upstream/downstream links?
□ Mỗi SOP có RACI matrix?
□ Cross-links giữa SOP files đúng (không broken links)?
□ Company charter có vision, mission, values, strategic objectives?
□ Org chart có reporting lines + RACI?
□ File naming consistent: [file_type]_[file-name]_v[version]_[date].md?
□ Folder naming: lowercase, department/process names?
□ SOP folder naming: [verb]-[noun]-[context] format?
□ Small company simplified khi size = SMALL?
□ AI workforce mapping có trong _ai-workforce/?
□ "Trần sao âm vậy" — structure phản ánh mô hình công ty thực tế, không phải lý thuyết?
□ Explicit thinking — mọi mục tiêu, input, output, decision được tường minh?
□ SOPs sử dụng được ngay (có thể giao cho người mới hoặc AI agent)?
□ Glossary cover terminology của industry cụ thể?
□ Mỗi department có report matrix (operational/tactical/strategic)?
□ Mỗi report template có SO WHAT / NOW WHAT / WHO sections?
□ Report flow đúng chiều: Operational → Tactical → Strategic?
□ KPI definitions có liên kết tới report templates?
□ AI potential được tag cho từng report (AUGMENT/ASSIST/MANUAL)?
□ _ai-workforce/ có README.md với department mapping?
□ ai_workforce/ chỉ tồn tại trong department đã activated (không tạo trước)?
□ Mỗi ai_workforce/ skill có reference đúng SOP source?
□ Company GPS skill (nếu tạo) có SOP Reference Map đầy đủ?
□ Company GPS skill có routing table đúng activation status?
□ AI workforce naming đúng convention: vibe-[co]-[dept]-[role]?
□ MKDIR script đã chạy cho tất cả OPERATIONAL SOPs (Phase 3.4a)?
□ Input file naming convention đã được document: [YYYY-MM-DD]-[descriptor].ext?
□ Output không để quá 7 ngày — auto-archive script available?

── KWSR Structure ──────────────────────────────────────────────────
□ Mỗi department có 4 KWSR folders: _knowledge/, _workflow/, _skills-agents/, _rules/?
□ Mỗi KWSR folder có README.md với structured tables?
□ _knowledge/README.md: charter ref, KPIs ref, domain knowledge, key targets?
□ _workflow/README.md: full SOP index, AI worker assignments, dependency map, coverage count?
□ _skills-agents/README.md: AI roster, profiles, installed skills, capability matrix, SOP coverage?
□ _rules/README.md: policies, decision authority, quality gates, escalation, constraints?
□ Company-level KWSR-OVERVIEW.md tồn tại?
□ _skills-agents/ SOP coverage = 100% (hoặc gaps được ghi nhận)?

── Quality Control Layer (MỚI) ─────────────────────────────────────
□ _quality/ folder tồn tại ở company root với README.md + register_incidents + reports/?
□ _quality/README.md có blameless culture principle, severity levels, RCA requirement?
□ Mỗi department có quality_[dept]-001_quality-standards file với SLI/SLO/SLA?
□ Mỗi OPERATIONAL SOP có Quality Gate section (Section 5) với SLI/SLO targets?
□ Mỗi OPERATIONAL SOP có Prevention Measures table?
□ SLI metrics là quantifiable (không "tốt", "đẹp", "chất lượng")?
□ SLO targets có error budget (không target 100% cho operational)?
□ SLA (nếu có) LESS strict hơn SLO?
□ Incident Report template có 5 Whys/Fishbone + Root Cause + Corrective + Prevention?
□ Same error pattern ≥ 3 lần trigger SOP update rule đã được ghi nhận?
□ _rules/README.md mỗi department có Quality Standards table?
□ KWSR _rules/ có Incident History section?
□ Department README.md có Quality Standards (SLI/SLO/SLA) summary table?

── OKR / KRI / KPI Framework (MỚI) ──────────────────────────────────
□ Company OKR file tồn tại: okr_company-001_company-okr_v1.0_[date].md?
□ Company KRI file tồn tại: kri_company-001_company-kri_v1.0_[date].md?
□ Mỗi department có okr_[dept]-001 file với Committed + Stretch OKR?
□ Mỗi department có kri_[dept]-001 file gắn với Committed OKR Key Results?
□ Mỗi department có kpi_[dept]-001 file với Success Factor + KRI Impact columns?
□ Department OKR alignment verified: mỗi Dept OKR → trace to ≥ 1 Company OKR?
□ Stretch OKR có x10 thinking (không chỉ "làm nhiều hơn" mà "làm gì khác")?
□ KRI đo outcome (business result), KHÔNG đo output (effort/count)?
□ KPI đo performance (process efficiency), gắn với success factors?
□ KPI → KRI causal chain đã được map cho mỗi department?
□ Report templates có OKR/KRI/KPI sections theo tần suất đúng?
  - Daily: KPI only
  - Weekly: KPI + KRI trend
  - Monthly: KRI + OKR progress + KPI summary
  - Quarterly: OKR full scoring + KRI + strategy review
□ KWSR _knowledge/README.md có OKR Alignment Map + KRI Dashboard + KPI Reference?
□ KRI decision rules defined (on-track / at-risk / off-track)?
```

---

## Anti-patterns — Không làm

```
❌ Tạo company structure generic — phải customize cho industry cụ thể
❌ Phát minh lại org structure — sao chép mô hình thực tế (trần sao âm vậy)
❌ Viết SOP theo best practice internet — phải dựa trên quy trình thực
❌ Không có IPO analysis cho department/SOP — vi phạm explicit thinking
❌ Không có cross-links giữa SOP — SOPs trở thành đảo, không thành hệ thống
❌ Tạo quá nhiều SOP cho small company — cần simplified structure
❌ Naming convention không nhất quán — gây nhầm lẫn
❌ Folder structure không theo layer — mất tính kiến trúc
❌ Bỏ qua RACI matrix — ai làm gì không rõ
❌ Không có value chain diagram — mất big picture
❌ Tạo company mà không hỏi user về industry/model — generic, không dùng được
❌ Tạo tất cả SOP cùng lúc với full content — nên tạo outline trước, detail sau
❌ SOP không có quality gate — không có cách verify completion
❌ Bỏ qua AI workforce mapping — mất cơ hội automation
❌ Không phân biệt SMALL/MEDIUM/LARGE — over-engineering hoặc under-engineering
❌ Report chỉ ném số liệu, không có SO WHAT / NOW WHAT / WHO — report xấu
❌ Thiếu report ở 1 level (chỉ có tactical, không có operational hoặc strategic) → feedback loop đứt
❌ KPI definitions không liên kết report templates → đo mà không bao giờ review
❌ Auto-generate AI workforce khi user chưa yêu cầu → phải explicit activation
❌ Tạo ai_workforce/ folder trước khi activate → chỉ tạo khi activated
❌ AI workforce skill không reference SOP source → mất liên kết với ground truth
❌ Company GPS skill không có SOP Reference Map → không biết route đâu
❌ Company GPS route đến department chưa activated mà không fallback → crash
❌ GPS không có timeout cho human response → chờ mãi mãi → cần timeout + remind

── SOP Folder Anti-patterns ──────────────────────────────────────────────────
❌ Tạo SOP operational mà không tạo folder state machine → không có chỗ input/output cho file
❌ Bỏ qua Phase 3.4a (MKDIR) → "sẽ tạo folder sau" = không bao giờ làm
❌ Chỉnh sửa file trong template/ trực tiếp → Single Source of Truth bị nhiễm
❌ Để output/ chất đống không archive → không có historical record, không thể audit
❌ SOP folder naming có spaces hoặc uppercase → AI agent parse lỗi, human khó scan
❌ Tạo SOP folder state machine cho DOCUMENTATION-ONLY SOP → over-engineering
❌ Không phân biệt DOCUMENTATION-ONLY vs OPERATIONAL → tất cả đều flat file hoặc tất cả đều folder
❌ Không có ai-draft/ và human-review/ trong processing/ → không rõ file đang ở giai đoạn nào
❌ Tạo thêm subfolder tùy tiện (vd: temp/, misc/, wip/) → phá vỡ state machine convention
❌ AI workforce activate mà SOP folder chưa có → phải chạy MKDIR trước khi activate
❌ Input file naming không theo convention → khó sort, khó trace khi nào file vào
❌ Không có auto-archive script → output/ chất đống, không có audit trail

── KWSR Anti-patterns ──────────────────────────────────────────────────
❌ Tạo department mà không có 4 KWSR folders → knowledge/rules/skills lẫn lộn, AI onboarding chậm
❌ KWSR README.md viết narrative thay vì structured tables → AI worker không parse nhanh
❌ _skills-agents/README.md không có SOP coverage matrix → không biết SOP nào thiếu worker
❌ _rules/README.md không có decision authority matrix → AI worker tự quyết vượt thẩm quyền
❌ Phase 3 bỏ qua Step 3.4b (KWSR) → department chỉ có SOP folders, không có organized knowledge

── Quality Control Anti-patterns ──────────────────────────────────────
❌ Tạo SOP mà KHÔNG có Quality Gate → output không có cách verify, "done" = "đã làm" không phải "đã làm đúng"
❌ Quality Gate chỉ có checklist chung chung ("kiểm tra chất lượng") → phải có SLI/SLO cụ thể, measurable
❌ SLI dùng metric mơ hồ ("chất lượng tốt", "đẹp") → phải quantifiable (readability ≥ 65, accuracy ≥ 98%)
❌ Target 100% cho mọi SLI → unrealistic, giết innovation, tạo pressure không cần thiết
❌ SLA strict hơn SLO → ngược nguyên tắc, buffer bị mất
❌ Có Quality Gate nhưng không có Prevention → chỉ detect, không prevent
❌ Incident xảy ra nhưng KHÔNG log → mất học phí, lặp lại lỗi
❌ Incident Report blame cá nhân ("nhân viên A làm sai") → phải tìm systemic root cause
❌ RCA dừng ở "surface cause" (nhân viên quên, nhập sai) → phải đào 5 Whys đến root cause hệ thống
❌ Same error ≥ 3 lần nhưng KHÔNG update SOP → SOP vẫn cho phép lỗi xảy ra
❌ _quality/ không tồn tại → incident reports không có nơi tập trung, mất cross-department visibility
❌ Department không có quality standards file → SLI/SLO nằm rải rác hoặc không tồn tại

── OKR / KRI / KPI Anti-patterns ──────────────────────────────────────
❌ Department OKR KHÔNG align với Company OKR → phòng ban hoạt động không contribute vào mục tiêu chung
❌ Chỉ có Committed OKR, KHÔNG có Stretch → mất moonshot thinking, chỉ optimize current approach
❌ Stretch OKR chỉ là "làm nhiều hơn" (tăng 20% → tăng 200%) → phải là "làm gì KHÁC" (tư duy x10)
❌ KRI đo output/effort (số bài viết, số calls) thay vì outcome (traffic, conversion, revenue)
❌ KPI KHÔNG link đến KRI → đo performance nhưng không biết impact vào outcome
❌ OKR set 1 lần rồi quên → phải review monthly, score quarterly, adjust mỗi quý
❌ Department OKR có quá nhiều Objectives (> 3 committed) → mất focus
❌ Key Results không measurable ("nâng cao chất lượng") → phải có number + deadline
❌ Report daily báo OKR → OKR thay đổi chậm, daily report chỉ cần KPI
❌ Report quarterly không có OKR scoring → quarterly review MÀU OKR scoring = lãng phí
❌ KRI và KPI bị nhầm lẫn → KRI = outcome (lagging), KPI = performance (leading)
❌ File naming không phân biệt okr_ / kri_ / kpi_ → 3 loại chỉ số khác nhau, 3 files khác nhau
```

---

## Error Handling

```
USER CHƯA CUNG CẤP ĐỦ THÔNG TIN:
  → Hỏi tối thiểu: Tên công ty, Industry, Sản phẩm/Dịch vụ, Quy mô
  → Nếu chưa rõ industry → hỏi: "Ngành gì? Bán cái gì? Cho ai?"

INDUSTRY KHÔNG CÓ TRONG TEMPLATE:
  → Dùng closest industry template làm base
  → Invoke vibe-xthinking-orchestrator để phân tích value chain
  → Customize Primary Activities cho industry cụ thể

USER MUỐN RÚT GỌN:
  → Chuyển sang Small Company Simplification
  → Gộp departments, giảm SOP count

USER MUỐN MỞ RỘNG:
  → Thêm sub-departments
  → Thêm SOPs cho sub-processes
  → Thêm regions/markets nếu multi-market

SOP QUÁ PHỨC TẠP:
  → Invoke vibe-sop-orchestrator cho SOP đó
  → Deep Analysis mode nếu cần

CONFLICT GIỮA DEPARTMENTS:
  → RACI matrix giải quyết
  → Nếu vẫn conflict → ESCALATE user

QUÁ NHIỀU FILES (LARGE COMPANY):
  → Tạo theo phase: Phase 1 (core), Phase 2 (detail), Phase 3 (sub-processes)
  → Không tạo tất cả cùng lúc
```

---

## Example: Khởi tạo SaaS Startup

**Input:** "Tạo company structure cho SaaS startup tên TechFlow, B2B project management tool, team 15 người"

**Phase 0 Output:**
```
Company: TechFlow
Industry: SaaS / B2B
Product: Project management tool
Team size: 15 → MEDIUM (simplified)
Layers: Strategy + 4 Primary + 3 Support
```

**Phase 2 Output:**
```
Value Chain:
  L1: CEO + Strategy
  L2: Product → Marketing → Sales → Customer Success
  L3: Engineering Ops + Finance + People Ops

Departments: 8
  00-company (Strategy)
  01-product (Primary — R&D, product development)
  02-marketing (Primary — growth, content, SEO)
  03-sales (Primary — B2B sales pipeline)
  04-cs (Primary — customer success + support)
  05-engineering (Support — DevOps, infra, security)
  06-finance (Support — accounting, reporting)
  07-people (Support — HR, hiring, culture)

SOP Count: ~25 SOPs
Files: ~60 files total
```

**Phase 3 Output:**
```
techflow/
├── 00-company/
│   ├── README.md
│   ├── charter_company-charter_v1.0_2026-05-01.md
│   ├── guide_company-handbook_v1.0_2026-05-01.md
│   ├── matrix_org-chart_v1.0_2026-05-01.md
│   ├── flow_value-chain_v1.0_2026-05-01.md
│   └── glossary_company-glossary_v1.0_2026-05-01.md
├── 01-product/
│   ├── README.md
│   ├── charter_product-department_v1.0_2026-05-01.md
│   ├── plan-sprint/                                   ← OPERATIONAL SOP
│   │   ├── template/sop_prod-001_sprint-planning_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── write-feature-spec/                            ← OPERATIONAL SOP
│   │   ├── template/sop_prod-002_feature-spec_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── manage-release/                                ← OPERATIONAL SOP
│   │   ├── template/sop_prod-003_release-management_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── review-roadmap/                                ← OPERATIONAL SOP
│   │   ├── template/sop_prod-004_roadmap-review_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   └── kpi_prod-001_product-kpis_v1.0_2026-05-01.md
├── 02-marketing/
│   ├── README.md
│   ├── charter_marketing-department_v1.0_2026-05-01.md
│   ├── create-content/                                ← OPERATIONAL SOP
│   │   ├── template/sop_mkt-001_content-creation_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── optimize-seo/                                  ← OPERATIONAL SOP
│   │   ├── template/sop_mkt-002_seo-optimization_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── run-paid-campaigns/                            ← OPERATIONAL SOP
│   │   ├── template/sop_mkt-003_paid-campaigns_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── report-analytics/                              ← OPERATIONAL SOP
│   │   ├── template/sop_mkt-004_analytics-reporting_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   └── kpi_mkt-001_marketing-kpis_v1.0_2026-05-01.md
├── 03-sales/
│   ├── README.md
│   ├── qualify-leads/                                 ← OPERATIONAL SOP
│   │   ├── template/sop_sal-001_lead-qualification_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── deliver-demo/                                  ← OPERATIONAL SOP
│   │   ├── template/sop_sal-002_demo-pitch_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── negotiate-proposal/                            ← OPERATIONAL SOP
│   │   ├── template/sop_sal-003_proposal-negotiation_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── close-deal/                                    ← OPERATIONAL SOP
│   │   ├── template/sop_sal-004_deal-close_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── handoff-to-cs/                                 ← OPERATIONAL SOP
│   │   ├── template/sop_sal-005_handoff-to-cs_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   └── kpi_sal-001_sales-kpis_v1.0_2026-05-01.md
├── 04-cs/
│   ├── README.md
│   ├── onboard-customer/                              ← OPERATIONAL SOP
│   │   ├── template/sop_cs-001_onboarding_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── handle-ticket/                                 ← OPERATIONAL SOP
│   │   ├── template/sop_cs-002_ticket-handling_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── escalate-issue/                                ← OPERATIONAL SOP
│   │   ├── template/sop_cs-003_escalation_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── prevent-churn/                                 ← OPERATIONAL SOP
│   │   ├── template/sop_cs-004_churn-prevention_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   └── kpi_cs-001_cs-kpis_v1.0_2026-05-01.md
├── 05-engineering/
│   ├── README.md
│   ├── deploy-release/                                ← OPERATIONAL SOP
│   │   ├── template/sop_eng-001_deployment_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── respond-incident/                              ← OPERATIONAL SOP
│   │   ├── template/sop_eng-002_incident-response_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── monitor-system/                                ← OPERATIONAL SOP
│   │   ├── template/sop_eng-003_monitoring_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   └── kpi_eng-001_engineering-kpis_v1.0_2026-05-01.md
├── 06-finance/
│   ├── README.md
│   ├── process-invoice/                               ← OPERATIONAL SOP
│   │   ├── template/sop_fin-001_invoicing_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── monthly-close/                                 ← OPERATIONAL SOP
│   │   ├── template/sop_fin-002_monthly-close_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── approve-expense/                               ← OPERATIONAL SOP
│   │   ├── template/sop_fin-003_expense-approval_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   └── kpi_fin-001_finance-kpis_v1.0_2026-05-01.md
├── 07-people/
│   ├── README.md
│   ├── recruit/                                       ← OPERATIONAL SOP
│   │   ├── template/sop_ppl-001_recruitment_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── onboard-employee/                              ← OPERATIONAL SOP
│   │   ├── template/sop_ppl-002_onboarding_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   ├── review-performance/                            ← OPERATIONAL SOP
│   │   ├── template/sop_ppl-003_performance-review_v1.0_2026-05-01.md
│   │   ├── input/ /processing/ /output/ /archive/
│   └── kpi_ppl-001_people-kpis_v1.0_2026-05-01.md
├── _shared/
│   └── templates/
└── _ai-workforce/
    ├── README.md
    ├── workforce-map_v1.0_2026-05-01.md
    └── build-plan_v1.0_2026-05-01.md
```

---

*Living skill. Cập nhật sau mỗi company được khởi tạo.*
*"Trần sao âm vậy — sao chép công ty thực, thiết kế như hệ thống, vận hành bằng SOP."*
