# Chương 3: Hướng dẫn thiết kế từng phòng ban

> "Một phòng ban OPC không cần nhiều người — nó cần đúng quy trình, đúng AI workers, và đúng điểm chạm con người."
> — LOC DANG

---

## 3.1 Giới thiệu

Chương 2 đã cho bạn bức tranh tổng thể về mô hình OPC: 3 phòng ban, 10 AI Workers, 30 SOPs, và Founder chỉ cần 20-25 giờ mỗi tuần. Vẫn ở mức khung. Bạn biết *cái gì*, chưa biết *làm thế nào*.

Chương này sẽ đi vào chi tiết từng phòng ban. Mỗi phòng ban, bạn sẽ thấy:

- **AI Workers** cụ thể làm gì, công cụ gì, output kỳ vọng ra sao
- **SOPs** được viết theo cấu trúc IPO (Input-Process-Output) với state machine rõ ràng
- **KPIs** có target cụ thể theo từng giai đoạn phát triển
- **Ví dụ file thực tế** từ hệ thống AINS đang vận hành — tôi sẽ trích dẫn trực tiếp từ các file output, hóa đơn, báo cáo tài chính, và leads pipeline

Đọc xong chương này, bạn sẽ có đủ thông tin để thiết kế từng phòng ban cho OPC của riêng mình — bất kể ngành nghề nào.

---

## 3.2 Growth Department (Marketing + Sales)

### 3.2.1 Tổng quan

Growth Department là "phổi" của OPC. Nó chịu trách nhiệm toàn bộ chuỗi giá trị: thu hút khách hàng tiềm năng, chuyển đổi, giữ chân. Trong doanh nghiệp truyền thống, bạn cần ít nhất 5-7 người cho chức năng này: Content Writer, Social Media Manager, SEO Specialist, Sales Rep, Account Manager, v.v. OPC thay bằng 4 AI Workers.

**Mục tiêu:** Generate revenue $3,000-15,000/tháng tùy giai đoạn.

**4 AI Workers:**

| AI Worker | Vai trò chính | SOP Owner |
|-----------|--------------|-----------|
| Marketing AI | Content creation, social media, email marketing | SOP-GROW-001, 002, 003 |
| SEO AI | SEO optimization, keyword research, content SEO audit | Hỗ trợ SOP-GROW-001 |
| Sales AI | Lead gen, qualification, CRM, sales process, proposals | SOP-GROW-004, 005, 008, 009, 010 |
| Analytics AI | Performance tracking, reporting, data analysis | SOP-GROW-006 |

**Human involvement: ~10h/tuần** (strategy review, content approval, close key deals, performance review).

**IPO Department-Level:**

| Element | Mô tả |
|---------|-------|
| **Input** | Market intelligence, brand guidelines, product roadmap, budget allocation |
| **Process** | Content creation, social media, email automation, lead gen, sales, CRM, reporting |
| **Output** | Marketing content (20+/tháng), qualified leads (50-100/tháng), closed deals, performance reports |

**Mẹo:** Trong giai đoạn đầu (tháng 1-3), Founder có thể cần 15h/tuần cho Growth. Khi SOPs đã mature và AI Workers đã học brand voice, giảm xuống 8-10h/tuần.

### 3.2.2 AI Workers — Chi tiết từng vai trò

#### Marketing AI — "Cỗ máy nội dung"

**Khả năng:**
- Viết blog posts (800-2,000 từ), social media posts, email newsletters, video scripts
- Nghiên cứu topic, phân tích competitor content
- Tạo content brief, content calendar
- Format content cho nhiều kênh (WordPress, LinkedIn, Facebook, Email HTML)

**Công cụ sử dụng:**
- Claude/ChatGPT cho draft generation
- SEO tools (Ahrefs/Semrush API) cho keyword research
- Canva/Unsplash cho visual assets
- Buffer/Hootsuite cho scheduling

**Output kỳ vọng:**
- 4 blog posts/tháng
- 12 social media posts/tháng
- 2 newsletters/tháng
- 2 video scripts/tháng
- Content calendar cập nhật hàng tuần

#### SEO AI — "Bộ tối ưu lưu lượng"

**Khả năng:**
- Keyword research và opportunity identification
- On-page SEO audit cho mọi content piece
- Competitive analysis (đánh giá content strategy của đối thủ)
- Technical SEO monitoring
- Internal linking strategy

**Công cụ sử dụng:**
- Google Search Console API
- Ahrefs/Semrush cho keyword tracking
- Screaming Frog cho technical audit

**Output kỳ vọng:**
- Weekly keyword opportunity report
- SEO score >= 80 cho mọi content piece
- Monthly organic traffic growth report (+10% MoM target)

#### Sales AI — "Máy tạo doanh thu"

**Khả năng:**
- Lead generation qua LinkedIn, Facebook, email outreach
- Lead scoring và qualification tự động
- CRM management (HubSpot/Pipedrive)
- Proposal và báo giá creation
- Follow-up automation

**Công cụ sử dụng:**
- LinkedIn Sales Navigator
- CRM platform (HubSpot/Pipedrive)
- Email automation (Mailchimp/ConvertKit)
- Proposal templates

**Output kỳ vọng:**
- 50-100 new leads/tháng
- Lead qualification với scoring model
- Proposals cho mọi qualified opportunity
- CRM luôn cập nhật

#### Analytics AI — "Cỗ máy quyết định"

**Khả năng:**
- Thu thập data từ mọi channel (website, social, email, CRM)
- Tạo performance reports (weekly, monthly)
- Phân tích trends, identify opportunities
- A/B test analysis
- Budget optimization recommendations

**Công cụ sử dụng:**
- Google Analytics 4
- Platform APIs (LinkedIn, Facebook, Email tools)
- Data visualization tools

**Output kỳ vọng:**
- Weekly performance dashboard
- Monthly comprehensive report
- Real-time alerts khi metrics vượt ngưỡng
- Optimization recommendations

### 3.2.3 SOPs — 10 quy trình cốt lõi

Growth Department vận hành 10 SOPs. Danh sách đầy đủ:

| Mã SOP | Tên | Loại | AI Worker Owner |
|--------|-----|------|-----------------|
| SOP-GROW-001 | Tạo nội dung marketing | Operational | Marketing AI |
| SOP-GROW-002 | Quản lý social media | Operational | Marketing AI |
| SOP-GROW-003 | Email marketing automation | Operational | Marketing AI |
| SOP-GROW-004 | Lead generation & qualification | Operational | Sales AI |
| SOP-GROW-005 | Quản lý CRM | Operational | Sales AI |
| SOP-GROW-006 | Báo cáo hiệu suất marketing | Operational | Analytics AI |
| SOP-GROW-007 | Chính sách thương hiệu | Documentation | Marketing AI |
| SOP-GROW-008 | Quy trình bán hàng | Operational | Sales AI |
| SOP-GROW-009 | Tạo proposal & báo giá | Operational | Sales AI |
| SOP-GROW-010 | Quản lý khách hàng hiện tại | Operational | Sales AI |

Bây giờ, chúng ta sẽ đi sâu vào 2 SOP quan trọng nhất.

---

#### Deep Dive: SOP-GROW-001 "Tạo nội dung marketing"

SOP này chạy nhiều nhất — 20+ lần mỗi tháng. File thực tế nằm tại:

`opc-ains/01-growth/marketing/create-content/template/sop_create-content_v1.0.md`

**Cấu trúc SOP gồm 10 sections:**

1. Mục đích — Tại sao SOP này tồn tại
2. Phạm vi — In-scope và Out-of-scope
3. Vai trò (RACI) — Ai làm gì
4. IPO Analysis — Input, Process, Output
5. Quy trình chi tiết (Step by Step) — State machine
6. Template & Checklist
7. KPIs & Metrics
8. AI Integration Points
9. Upstream/Downstream SOPs
10. Version History

**State Machine Flow:**

```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

Mỗi state có folder tương ứng trong cấu trúc thư mục. Marketing AI tạo draft, đẩy sang `processing/human-review/`. Founder review trong vòng 24h (SLA). Nếu approve thì chuyển sang `output/` để publish.

**IPO cụ thể:**

- **Input:** Content calendar, keyword research report (từ SEO AI), Brand Policy (SOP-GROW-007), performance data tháng trước
- **Process:** 6 bước — Content planning → Draft → Human review → Revision (nếu cần) → Final output → Archive
- **Output:** Blog posts published, social media posts scheduled, email content ready, content calendar updated

**Điểm chính:** Founder chỉ tham gia ở bước 3 (Human Review). Mất khoảng 15 phút mỗi bài. Marketing AI làm toàn bộ phần nặng — research, draft, formatting. Vì thế OPC produce 20+ content pieces/tháng với chỉ 1 người review.

**Ví dụ output thực tế** — bài blog do Marketing AI tạo:

`opc-ains/01-growth/marketing/create-content/output/blog_post_ai-chuyen-doi-so-sme_2026-05-05.md`

Trích đoạn từ bài viết thực tế:

> ## Bạn có biết: 67% SME Việt Nam vẫn quản lý vận hành bằng Excel và giấy tờ?
>
> Trong khi các tập đoàn lớn đang đổ hàng triệu đô vào AI, phần lớn doanh nghiệp vừa và nhỏ (SME) ở Việt Nam vẫn đang chật vật với những quy trình thủ công cơ bản. Không phải vì không muốn thay đổi. Song họ không biết bắt đầu từ đâu, và sợ chi phí quá lớn.
>
> Bài viết này sẽ giúp bạn hiểu rõ: AI không phải là đặc quyền của doanh nghiệp lớn. Với cách tiếp cận đúng, SME hoàn toàn có thể bắt đầu hành trình chuyển đổi số bằng AI với ngân sách hợp lý.

Bài viết dài khoảng 1,800 từ, bao gồm data table so sánh chi phí giải pháp truyền thống vs AI-first, case study cụ thể, và CTA rõ ràng. Đây là standard output quality mà Marketing AI produce mỗi tuần.

---

### Full Walk-through: SOP-GROW-001 "Tạo nội dung marketing"

Phần trên đã giải thích cấu trúc SOP. Nhưng cấu trúc alone không đủ — bạn cần thấy **toàn bộ flow chạy như thế nào**, từ lúc nhận brief đến lúc content live trên website. Dưới đây là walk-through từng bước, dùng dữ liệu thật.

**STEP 1: INPUT — Content Brief arrives**

File: `01-growth/marketing/create-content/input/content-brief_2026-05-06.md`

Nội dung content brief:
- Topic: "5 sai lầm khi chuyển đổi số cho SMEs"
- Keywords: chuyển đổi số SME, AI cho doanh nghiệp nhỏ
- Target: CEO/founder doanh nghiệp 10-50 người
- Tone: Chuyên nghiệp nhưng gần gũi, như tư vấn 1-1
- Length: 1,500-2,000 từ
- CTA: Download checklist miễn phí
- Deadline: 2 ngày

AI Worker nhận brief → Move sang processing/

---

**STEP 2: PROCESSING/ai-draft — Marketing AI viết bài**

Marketing AI (Claude) nhận brief + brand voice guide từ `knowledge/03-ai-ready/brand-voice-guide.md` + SOP template.

AI tạo draft trong ~5 phút. Output:
- Tiêu đề: 5 variants → chọn top 3
- Body: Full draft ~1,800 từ
- Meta description: SEO-optimized
- Social snippets: 3 variants cho LinkedIn, Facebook, Email

File output: `processing/ai-draft/blog_draft_5-sai-lam-chuyen-doi-so_2026-05-06.md`

---

**STEP 3: PROCESSING/human-review — CEO review**

CEO nhận notification. Mở file draft. Review checklist:
- [x] Tiêu đề thu hút?
- [x] Giọng văn đúng brand?
- [x] Data/claims chính xác?
- [ ] CTA rõ ràng? → Cần cụ thể hơn
- [x] SEO keywords tự nhiên?

CEO comment: "CTA cần thêm incentive cụ thể — thay 'download checklist' bằng 'download checklist 15 mục cho SMEs'. Approved after fix."

Marketing AI fix CTA trong 2 phút. Move sang output/.

---

**STEP 4: OUTPUT — Published content**

File: `01-growth/marketing/create-content/output/blog_post_5-sai-lam-chuyen-doi-so_2026-05-06.md`

Nội dung final — approved, SEO-optimized, ready to publish trên WordPress/LinkedIn.

AI tự động:
- Schedule publish trên content calendar
- Tạo social media snippets cho bài này
- Add vào email newsletter queue
- Log vào analytics tracking

---

**STEP 5: ARCHIVE — Sau 7 ngày**

File tự động move từ output/ sang `archive/2026-05/`

Tại sao archive? Giữ output/ folder sạch. Nhưng file vẫn available trong archive để reference sau.

---

#### Deep Dive: SOP-GROW-004 "Lead generation & qualification"

SOP-GROW-004 là "bơm máu" cho doanh thu. Sales AI chạy quy trình này liên tục — tìm leads, chấm điểm, phân loại, và trigger hành động tiếp theo.

**Lead Scoring Model:**

Sales AI sử dụng scoring model 0-100 dựa trên:
- **Firmographic fit** (0-25): Ngành nghề, quy mô công ty có phù hợp ideal customer profile không
- **Engagement level** (0-25): Tương tác với content, website visits, email opens
- **Intent signals** (0-25): Download resources, request demo, submit form
- **Timing indicators** (0-25): Budget signals, urgent needs, referral từ existing client

**Phân loại:**

| Phân loại | Score | Hành động |
|---------------|-------|-----------|
| **Hot** | 75+ | Immediate outreach, Founder tham gia close |
| **SQL** (Sales Qualified) | 60-74 | Sales AI outreach, schedule discovery call |
| **MQL** (Marketing Qualified) | 40-59 | Nurture sequence, thêm vào email campaign |
| **Cold** | < 40 | Nurture nhẹ, ежемесячно review lại |

**Ví dụ data thực tế** — leads pipeline từ AINS:

`opc-ains/01-growth/sales/lead-generation/output/leads-pipeline_2026-05-07.csv`

```
lead_id,first_name,last_name,email,company,title,lead_score,classification,status,next_action
LD-2026-0501,Minh,Trần,minh.tran@techstartup.vn,TechStartup JSC,CEO,78,SQL,Contacted,Demo call scheduled
LD-2026-0505,Tuấn,Võ,tuan.vo@retailpro.vn,RetailPro Vietnam,VP Sales,82,Hot,Discovery Call Done,Proposal in progress
LD-2026-0507,Quang,Đặng,quang.dang@manufactech.vn,ManufacTech,Plant Manager,35,Cold,Nurture,Add to email nurture sequence
LD-2026-0508,Chi,Bùi,chi.bui@fintechsolutions.vn,FinTech Solutions,Head of Ops,60,SQL,Qualifying,Send case study + schedule call
```

**Dữ liệu:** Trong file thực tế có 10 leads. 1 Hot (đang làm proposal), 4 SQL (đang contact/qualify), 4 MQL (đang nurture), 1 Cold (email nurture). Sales AI tự động update status và next_action cho từng lead.

**Note quan trọng về lead LD-2026-0505 (Tuấn Võ, RetailPro):** Lead này score 82 (Hot) vì có clear budget ($3-5K), urgent timeline, và request demo qua website form. Sales AI đã flag cho Founder — đây là deal cần Founder tham gia close.

### 3.2.4 Bảng theo dõi KPI

| KPI | Target hàng tháng | Phase 1 (Tháng 1-3) | Phase 2 (Tháng 4-6) | Phase 3 (Tháng 7-12) |
|-----|-------------------|---------------------|---------------------|----------------------|
| Leads mới | 50-100 | 20-40 | 50-80 | 80-120 |
| Conversion Rate | 5-10% | 3-5% | 5-8% | 8-12% |
| Revenue | $3,000-8,000 | $1,000-3,000 | $3,000-6,000 | $5,000-15,000 |
| Content published | 20+ | 10-15 | 15-20 | 20-30 |
| Social engagement rate | > 3% | > 1.5% | > 2.5% | > 3.5% |
| Email open rate | > 25% | > 15% | > 20% | > 25% |
| SEO organic growth | +10% MoM | Baseline | +5-8% MoM | +10-15% MoM |
| Proposal win rate | > 30% | > 20% | > 25% | > 35% |
| Client retention | > 85% | N/A | > 80% | > 90% |
| Cost per lead (CPL) | < $15 | < $25 | < $20 | < $12 |

**Lưu ý:** Phase 1 targets thấp hơn vì đang build foundation — content library, SEO authority, và brand awareness cần 2-3 tháng để phát huy hiệu quả. Đừng nản nếu tháng đầu chỉ có 5-10 leads.

### 3.2.5 Cấu trúc thư mục thực tế

Cấu trúc thư mục thực tế của Growth Department, lấy trực tiếp từ hệ thống AINS:

```
01-growth/
├── README.md                    ← Department overview, KPIs, AI Workers
├── _knowledge/                  ← K: charter, KPIs, domain references
├── _workflow/                   ← W: SOP index, dependencies, state machine
├── _skills-agents/              ← S: AI roster, capability matrix, SOP coverage
├── _rules/                      ← R: policies, decision authority, quality gates
├── charter/                     ← Department charter (nhiệm vụ, giới hạn)
├── kpi/                         ← KPI definitions & tracking
├── ai-workers/                  ← AI worker profiles & configs
├── marketing/                   ← Marketing SOPs & outputs
│   ├── create-content/          ← SOP-GROW-001
│   │   ├── template/            ← SOP template, content brief template
│   │   ├── input/               ← Content briefs, keyword reports
│   │   ├── processing/          ← Drafts đang xử lý
│   │   │   ├── ai-draft/        ← AI-generated drafts
│   │   │   └── human-review/    ← Drafts chờ Founder review
│   │   ├── output/              ← Published content
│   │   └── archive/             ← Content cũ
│   ├── manage-social-media/     ← SOP-GROW-002
│   └── email-marketing/         ← SOP-GROW-003
├── sales/                       ← Sales SOPs & outputs
│   ├── lead-generation/         ← SOP-GROW-004
│   │   ├── template/
│   │   ├── output/              ← Leads pipeline CSV
│   │   └── archive/
│   ├── crm-management/          ← SOP-GROW-005
│   ├── sales-process/           ← SOP-GROW-008
│   ├── proposal-creation/       ← SOP-GROW-009
│   └── client-management/       ← SOP-GROW-010
├── analytics/                   ← Analytics SOPs & outputs
│   └── marketing-reporting/     ← SOP-GROW-006
├── policies/                    ← Brand policy (SOP-GROW-007)
└── reports/                     ← Department reports
    ├── weekly/
    └── monthly/
```

**Mẹo:** Mỗi SOP folder có cấu trúc `template/ → input/ → processing/ → output/ → archive/`. Chính là state machine được materialize thành folder structure. AI Worker đọc từ `input/`, xử lý trong `processing/`, xuất kết quả ra `output/`. Cuối tháng move sang `archive/`. Nhất quán across toàn bộ OPC.

---

## 3.3 Delivery Department (Operations + Customer Service)

### 3.3.1 Tổng quan

Nếu Growth Department mang khách hàng vào, thì Delivery Department giữ họ ở lại. Phòng này chịu trách nhiệm vận hành toàn bộ quy trình giao nhận dự án, đảm bảo chất lượng, và hỗ trợ khách hàng. Bình thường bạn phải thuê Project Manager, QA Engineer, Customer Success Manager, cả một support team. 3 AI Workers lo hết.

**Mục tiêu:** On-time delivery >= 95%, CSAT >= 4.5/5.

**3 AI Workers:**

| Vai trò | Loại | Nhiệm vụ chính |
|---------|------|---------------|
| Project AI | AI Worker | Quản lý dự án, lập kế hoạch, theo dõi tiến độ |
| QA AI | AI Worker | Đảm bảo chất lượng, review deliverable, kiểm thử |
| CS AI | AI Worker | Hỗ trợ khách hàng, xử lý ticket, quản lý knowledge base |

**Human involvement: 7h/tuần** (quality gate review, exception handling, client meetings).

### 3.3.2 AI Workers — Chi tiết từng vai trò

#### Project AI — "Điều phối viên dự án"

**Khả năng:**
- Tạo project plan chi tiết với milestones, sprints, và resource allocation
- Theo dõi tiến độ real-time, flag risks sớm
- Tạo status reports, sprint reviews
- Phân bổ tasks cho các AI Workers khác
- Quản lý project documentation

**Công cụ sử dụng:**
- Project management tools (Notion/Linear/Asana)
- Gantt chart generation
- Risk assessment frameworks
- Communication tools integration

**Output kỳ vọng:**
- Project plan cho mọi engagement
- Weekly status updates
- Sprint plans và reviews
- Risk register luôn cập nhật

#### QA AI — "Người gác cổng chất lượng"

**Khả năng:**
- Review mọi deliverable trước khi giao cho khách hàng
- Kiểm tra accuracy, completeness, formatting
- So sánh với project requirements và success criteria
- Track defects và đảm bảo resolution
- Maintain quality checklist cho từng loại deliverable

**Công cụ sử dụng:**
- Quality check templates
- Automated comparison tools
- Defect tracking system

**Output kỳ vọng:**
- QA report cho mọi deliverable (pass/fail/conditional)
- Defect log luôn cập nhật
- Quality score >= 90% cho tất cả deliverables

#### CS AI — "Quán quân khách hàng"

**Khả năng:**
- Tiếp nhận và xử lý support tickets qua nhiều kênh (email, Zalo, Slack)
- Phân loại ticket theo priority (P0-P3)
- Resolve tickets loại #how-to và #billing tự động
- Tạo và maintain knowledge base
- Forward complex issues cho Human Owner
- Track CSAT scores

**Công cụ sử dụng:**
- Ticket management system
- Knowledge base platform
- Multi-channel communication tools

**Output kỳ vọng:**
- Average response time < 2 giờ
- First Contact Resolution (FCR) >= 60%
- CSAT >= 4.5/5
- Knowledge base luôn cập nhật

### 3.3.3 SOPs — 8 quy trình cốt lõi

| Mã SOP | Tên | AI Worker Owner |
|--------|-----|-----------------|
| SOP-DEL-001 | Quản lý dự án | Project AI |
| SOP-DEL-002 | Đảm bảo chất lượng (QA) | QA AI |
| SOP-DEL-003 | Hỗ trợ khách hàng | CS AI |
| SOP-DEL-004 | Customer onboarding | Project AI + CS AI |
| SOP-DEL-005 | Change management | Project AI |
| SOP-DEL-006 | Đánh giá dự án (post-mortem) | Project AI |
| SOP-DEL-007 | Xử lý khiếu nại | CS AI |
| SOP-DEL-008 | Chính sách vận hành | Documentation |

Hai SOP đáng chú ý nhất trong danh sách:

---

#### Deep Dive: SOP-DEL-001 "Quản lý dự án"

Trong OPC context, project management khác biệt so với doanh nghiệp truyền thống ở một điểm quan trọng: **Project AI làm 80% công việc coordination.** Human Owner chỉ tham gia ở các milestone gate.

**Project lifecycle trong OPC:**

```
Kickoff → Discovery & Assessment → Strategy Development → Implementation →
Training & Stabilization → Closure
```

Mỗi phase được chia thành 2-week sprints. Project AI tạo sprint plan, phân bổ tasks, theo dõi progress, và alert khi có risk.

**Ví dụ project plan thực tế:**

`opc-ains/02-delivery/project-management/output/project-plan_techcorp-consulting_2026-05.md`

Đây là project plan cho TechCorp Vietnam — hợp đồng consulting 3 tháng, giá trị 115,000,000 VND (~$4,600). Project AI đã tạo plan với 7 milestones:

| Milestone | Deliverable | Target Date |
|-----------|------------|-------------|
| M1: Kickoff | Kickoff meeting, project charter | 2026-05-12 |
| M2: Assessment Complete | AI Readiness Report | 2026-05-30 |
| M3: Strategy Delivery | AI Strategy Document | 2026-06-20 |
| M4: Pilot Design | Technical design + UX mockup | 2026-07-04 |
| M5: Pilot Deploy | Pilot live in production | 2026-07-25 |
| M6: Training Complete | Training materials + certification | 2026-08-08 |
| M7: Closure | Final report + handover | 2026-08-22 |

Resource allocation cho toàn bộ project:

| Resource | Total Hours | Weekly Avg |
|----------|-----------|-----------|
| Project AI | 55h | ~3.5h/week |
| QA AI | 10h | ~0.6h/week |
| CS AI | 8h | ~0.5h/week |
| Human Owner | 28h | ~1.8h/week |
| **Total** | **101h** | **~6.4h/week** |

**Điểm chính:** Human Owner chỉ dành 1.8h/tuần cho project này. Chủ yếu là client meetings, milestone reviews, quality gates. Project AI lo toàn bộ phần coordination, documentation, tracking. Gross margin cho project này đạt 69.6% — rất cao nhờ chi phí nhân sự thấp.

---

#### Deep Dive: SOP-DEL-003 "Hỗ trợ khách hàng"

CS AI vận hành support system với 4-tier SLA:

| Priority | Mô tả | SLA Response | SLA Resolution |
|----------|-------|-------------|----------------|
| **P0** | System down, data loss | 30 phút | 4 giờ |
| **P1** | High impact, workaround tồn tại | 2 giờ | 8 giờ |
| **P2** | Medium impact | 4 giờ | 24 giờ |
| **P3** | Low impact, feature request | 8 giờ | 72 giờ |

CS AI tự động resolve khoảng 60-70% tickets (FCR — First Contact Resolution), chủ yếu là loại #how-to và #billing. Tickets phức tạp hơn (#technical, #feature-request) được escalation cho Human Owner.

**Ví dụ tickets thực tế** — Week 18/2026:

`opc-ains/02-delivery/customer-support/output/support-tickets_2026-05-W18.md`

Tuần 18 có 5 tickets, CS AI resolved 4/5 tự động:

| Ticket | Customer | Priority | Category | Resolution Time | CSAT |
|--------|----------|----------|----------|----------------|------|
| TK-20260428-001 | TechCorp Vietnam | P2 | #how-to | 2h 15m | 5/5 |
| TK-20260429-002 | GreenStart Co. | P1 | #technical | 1h 45m | 5/5 |
| TK-20260430-003 | MekongDigital | P2 | #billing | 1h 30m | N/A |
| TK-20260501-004 | TechCorp Vietnam | P3 | #feature-request | 17h 30m* | 4/5 |
| TK-20260503-005 | GreenStart Co. | P2 | #how-to | In Progress | — |

*(*TK-004 gửi cuối tuần, resolve ngày làm việc tiếp theo)*

Trích đoạn chi tiết một ticket:

> **TK-20260429-002** — GreenStart Co.
>
> **Subject:** Training session recording không phát được
>
> **Description:** Lê Thu Hà (GreenStart Ops Manager) báo rằng recording của Session 1 (AI Fundamentals) không phát được trên browser. Error: "Format not supported".
>
> **Resolution:** CS AI phát hiện recording được save ở .webm format, không compatible với Safari browser. Đã convert sang .mp4 và re-upload. Add KB article: "Supported video formats for training recordings".

**Lưu ý:** CS AI không chỉ resolve ticket — nó còn tự động update knowledge base. Sau mỗi ticket, CS AI đánh giá xem có cần tạo hoặc cập nhật KB article không. TK-002 dẫn đến KB article mới; TK-001 dẫn đến update article hiện tại. Theo thời gian, knowledge base ngày càng đầy đủ, giúp FCR rate tăng lên.

### 3.3.4 Bảng theo dõi KPI

| KPI | Target | Phase 1 (Tháng 1-3) | Phase 2 (Tháng 4-6) | Phase 3 (Tháng 7-12) |
|-----|--------|---------------------|---------------------|----------------------|
| On-time Delivery | >= 95% | >= 85% | >= 90% | >= 95% |
| CSAT | >= 4.5/5 | >= 4.0/5 | >= 4.3/5 | >= 4.5/5 |
| Quality Score | >= 90% | >= 80% | >= 85% | >= 92% |
| Support Response Time | < 2h | < 4h | < 3h | < 2h |
| First Contact Resolution | >= 60% | >= 40% | >= 50% | >= 65% |
| Support tickets/week | Variable | 2-5 | 5-10 | 8-15 |
| Knowledge base articles | Growing | 10-20 | 30-50 | 50-100 |

### 3.3.5 Cấu trúc thư mục thực tế

```
02-delivery/
├── README.md                    ← Department overview
├── _knowledge/                  ← K: charter, KPIs, domain references
├── _workflow/                   ← W: SOP index, dependencies, state machine
├── _skills-agents/              ← S: AI roster, capability matrix, SOP coverage
├── _rules/                      ← R: policies, decision authority, quality gates
├── charter/                     ← Department charter
├── kpi/                         ← KPI definitions & tracking
├── ai-workers/                  ← AI worker profiles
├── project-management/          ← SOP-DEL-001
│   ├── template/                ← Project plan template, sprint template
│   ├── input/                   ← Project briefs, client requirements
│   ├── processing/              ← Active projects
│   ├── output/                  ← Project plans, status reports
│   └── archive/                 ← Completed projects
├── quality-assurance/           ← SOP-DEL-002
├── customer-support/            ← SOP-DEL-003
│   ├── template/                ← Ticket template, KB article template
│   ├── output/                  ← Weekly ticket summaries
│   └── knowledge-base/          ← KB articles
├── customer-onboarding/         ← SOP-DEL-004
├── change-management/           ← SOP-DEL-005
├── project-evaluation/          ← SOP-DEL-006
├── complaint-handling/          ← SOP-DEL-007
├── policies/                    ← SOP-DEL-008
└── reports/                     ← Department reports
```

---

## 3.4 Backoffice Department (Finance + HR + Admin)

### 3.4.1 Tổng quan

Backoffice là "xương sống" của OPC. Không sexy như Growth. Không urgent như Delivery. Nhưng nếu Backoffice sai, toàn bộ công ty sai theo. Hóa đơn lệch, báo cáo tài chính sai số, compliance vi phạm — mỗi lỗi đều có thể giết chết doanh nghiệp.

Bao nhiêu người cho mảng này? Accountant, HR Manager, Office Manager, Legal Advisor — chí ít 4 người. OPC cần đúng 3 AI Workers.

**Mục tiêu:** Financial accuracy 99%+, Compliance 100%.

**3 AI Workers:**

| AI Worker | Vai trò | Xử lý chính |
|-----------|---------|-------------|
| Finance AI | Chief Financial Officer | Kế toán, ngân sách, hóa đơn, báo cáo tài chính |
| HR AI | HR Manager | Quản lý AI workforce, đánh giá hiệu suất |
| Admin AI | Office Manager | Tài liệu, mua sắm, hợp đồng, backup |

**Human involvement: 4h/tuần** (financial review 2h, approvals 1h, strategic decisions 1h).

**Mẹo:** 4h/tuần cho Backoffice là ít nhất trong 3 phòng ban. Nhưng đây là 4h quan trọng nhất — Founder phải review tài chính mỗi tuần, không được bỏ qua. Một sai sót kế toán nhỏ có thể tạo ra vấn đề lớn về thuế.

### 3.4.2 AI Workers — Chi tiết từng vai trò

#### Finance AI — "Kiểm soát tài chính"

**Khả năng:**
- Ghi nhận doanh thu và chi phí hàng ngày
- Xuất hóa đơn tự động khi có giao dịch
- Theo dõi công nợ và nhắc thanh toán
- Tạo báo cáo tài chính tháng (P&L, Cash Flow, KPIs)
- Quản lý ngân sách và variance analysis
- Tính toán và provision thuế (VAT, CIT)

**Công cụ sử dụng:**
- Accounting software integration
- Bank API cho reconciliation
- Invoice generation templates
- Financial reporting frameworks

**Output kỳ vọng:**
- Hóa đơn trong vòng 24h từ khi có yêu cầu
- Monthly financial report trước ngày 5 tháng sau
- Budget vs actual tracking hàng tuần
- Tax compliance 100%

#### HR AI — "Quản lý nhân sự"

**Khả năng:**
- Quản lý profiles của tất cả AI Workers
- Đánh giá hiệu suất AI Workers hàng tháng
- Identify gaps trong AI workforce capabilities
- Đề xuất training/upgrades cho AI Workers
- Maintain AI worker documentation

**Công cụ sử dụng:**
- Performance tracking dashboards
- AI capability assessment frameworks

**Output kỳ vọng:**
- AI Worker performance review hàng tháng
- Workforce gap analysis quarterly
- Training/upgrade recommendations

#### Admin AI — "Quản lý vận hành"

**Khả năng:**
- Quản lý tài liệu công ty (filing, versioning)
- Backup và disaster recovery
- Quản lý hợp đồng (tạo, renew, archive)
- Quản lý nhà cung cấp và mua sắm
- Maintain company policies

**Công cụ sử dụng:**
- Document management system
- Cloud backup services
- Contract templates
- Vendor management database

**Output kỳ vọng:**
- Weekly backup verification
- Contract status dashboard
- Document search < 1 phút cho bất kỳ tài liệu nào
- Vendor performance tracking

### 3.4.3 SOPs — 12 quy trình cốt lõi

Backoffice có nhiều SOP nhất — 12 quy trình, phản ánh tính chất đa dạng của công việc back-office:

**Operational SOPs (10):**

| Code | Tên | Owner AI | Trigger |
|------|-----|----------|---------|
| SOP-BACK-001 | Kế toán & ghi nhận doanh thu | Finance AI | Hàng ngày |
| SOP-BACK-002 | Quản lý chi phí & ngân sách | Finance AI | Hàng ngày |
| SOP-BACK-003 | Xuất hóa đơn & thu hồi công nợ | Finance AI | Khi có giao dịch |
| SOP-BACK-004 | Báo cáo tài chính tháng | Finance AI | Cuối tháng |
| SOP-BACK-005 | Quản lý AI workforce | HR AI | Hàng tuần |
| SOP-BACK-006 | Đánh giá hiệu suất AI | HR AI | Hàng tháng |
| SOP-BACK-007 | Quản lý tài liệu | Admin AI | Hàng ngày |
| SOP-BACK-010 | Backup & disaster recovery | Admin AI | Hàng tuần |
| SOP-BACK-011 | Mua sắm & quản lý nhà cung cấp | Admin AI | Khi cần |
| SOP-BACK-012 | Quản lý hợp đồng | Admin AI | Khi có hợp đồng |

**Documentation-Only (2):**

| Code | Tên | Type |
|------|-----|------|
| SOP-BACK-008 | Tuân thủ pháp luật | Chính sách |
| SOP-BACK-009 | Chính sách bảo mật | Chính sách |

Giờ ta xem kỹ 2 quy trình backbone của Backoffice.

---

#### Deep Dive: SOP-BACK-003 "Xuất hóa đơn & thu hồi công nợ"

Quy trình này đảm bảo dòng tiền vào (cash inflow) luôn ổn định. Trong OPC, dòng tiền là sống còn — bạn không có venture capital để burn.

**Flow:**

```
Giao dịch hoàn thành → Finance AI tạo invoice → Gửi khách hàng →
Theo dõi thanh toán → Nhắc nhở (Net 15/30) → Thu hồi hoặc Escalate
```

**Ví dụ hóa đơn thực tế:**

`opc-ains/03-backoffice/invoicing/output/invoice_INV-2026-001_techcorp.md`

```
# HOA DON — INV-2026-001

> AINS — AI Native Solutions
> Ma so thue: 0317894561 | Dia chi: Quan 1, TP. Ho Chi Minh
> Ngay xuat: 2026-04-15 | Trang thai: DA THANH TOAN

## Chi tiet Hoa don

| # | Mo ta              | So luong | Don gia (VND)  | Thanh tien (VND)  |
|---|--------------------|----------|----------------|-------------------|
| 1 | AI Strategy Consulting — Phase 2 | 1 | 45,000,000 | 45,000,000 |
| 2 | Implementation Support (10h)      | 10 | 675,000    | 6,750,000  |

## Tong hop

| Truong        | Gia tri          |
|---------------|------------------|
| Subtotal      | 51,750,000 VND   |
| VAT (10%)     | 5,175,000 VND    |
| Tong cong     | 56,925,000 VND   |
| Tien USD      | ~$2,277 USD      |

## Thanh toan

| Truong        | Gia tri                           |
|---------------|-----------------------------------|
| Phuong thuc   | Bank Transfer                     |
| Ngan hang     | BIDV — Chi nhanh Quan 1          |
| So tai khoan  | 1234567890                        |
| Noi dung CK   | INV-2026-001 TechCorp             |

Trang thai: Da thanh toan (2026-04-28)
```

**Điểm chính:** Hóa đơn này do Finance AI tạo hoàn toàn tự động. Trigger: Project AI báo Phase 2 hoàn thành. Payment terms là Net 15 (xuất 15/04, hạn thanh toán 30/04). Khách hàng thanh toán ngày 28/04 — trong hạn. Quá hạn 3 ngày? Finance AI tự gửi reminder.

---

#### Deep Dive: SOP-BACK-004 "Báo cáo tài chính tháng"

SOP quan trọng nhất đối với Founder. Nó cho bạn biết "sức khỏe" của OPC. Mỗi tháng, Finance AI tự động tổng hợp data từ toàn bộ hệ thống kế toán và tạo báo cáo comprehensive.

**Báo cáo gồm 7 sections:**

1. **Executive Summary** — Tổng quan nhanh
2. **P&L Statement** — Doanh thu, chi phí, lợi nhuận
3. **Cash Flow Statement** — Dòng tiền thực tế
4. **Key Performance Indicators** — Metrics quan trọng
5. **Variance Analysis** — Thực tế vs. Ngân sách
6. **Year-to-Date Summary** — Trend theo tháng
7. **Insights & Recommendations** — Phân tích và đề xuất

**Ví dụ báo cáo tài chính thực tế — Tháng 4/2026:**

`opc-ains/03-backoffice/financial-reporting/output/financial-report_monthly_2026-04.md`

**Executive Summary:**

| Chỉ số | Giá trị |
|--------|---------|
| Tổng doanh thu | 117,350,000 VND (~$4,694) |
| Tổng chi phí | 24,180,000 VND (~$967) |
| Net Profit | 80,622,000 VND (~$3,225) |
| Net Margin | 68.7% |
| Doanh thu MoM growth | +19.1% |

**P&L Structure:**

| Nguồn doanh thu | Số tiền (VND) | % Tổng |
|-----------------|---------------|--------|
| Consulting Services | 78,750,000 | 67.1% |
| Training & Workshop | 23,045,000 | 19.6% |
| Digital Products | 6,705,000 | 5.7% |
| Subscription Revenue | 8,850,000 | 7.5% |
| **Tổng** | **117,350,000** | **100%** |

| Category chi phí | Số tiền (VND) | % Tổng |
|-----------------|---------------|--------|
| Tools & Software | 8,450,000 | 35.0% |
| Infrastructure | 1,650,000 | 6.8% |
| Outsourcing | 5,880,000 | 24.3% |
| Administrative | 3,200,000 | 13.2% |
| Marketing | 1,500,000 | 6.2% |
| **Tổng OpEx** | **20,680,000** | — |

**Dữ liệu:** OpEx/Revenue = 17.6% — nghĩa là cứ kiếm được 100 đồng thì chỉ tốn 17.6 đồng chi phí vận hành. Đây là lợi thế lớn nhất của OPC: biên lợi nhuận cực cao (68.7%) nhờ cấu trúc chi phí thấp.

**Cash Position:**

| Trường | Số tiền (VND) |
|--------|---------------|
| Cash đầu kỳ (01/04) | 185,200,000 |
| + Net Cash Change | 73,770,000 |
| = Cash cuối kỳ (30/04) | **258,970,000** |

**Year-to-Date Trend:**

| Chỉ số | Tháng 1 | Tháng 2 | Tháng 3 | Tháng 4 | YTD |
|--------|---------|---------|---------|---------|-----|
| Doanh thu | 42M | 65.5M | 98.5M | 117.35M | 323.35M |
| Chi phí | 18.2M | 19.5M | 19.8M | 20.68M | 78.18M |
| Net Profit | 20.28M | 39.4M | 70.6M | 80.62M | 210.9M |

**Điểm chính:** YTD Net Profit = 210.9 triệu VND (~$8,436) sau 4 tháng. Chi phí vận hành chỉ 78.18 triệu. Đó là sức mạnh của OPC: một người vận hành, AI làm phần nặng, biên lợi nhuận 65%+.

**Phần Insights & Recommendations của Finance AI:**

Finance AI không chỉ dump số liệu. Nó phân tích và đề xuất hành động cụ thể:

> **Điểm mạnh:**
> - Doanh thu tăng 19.1% MoM — tăng trưởng mạnh mẽ
> - Net margin 68.7% — rất cao, vượt xa target 30%
> - Chi phí dưới budget 12.6% — kiểm soát tốt
>
> **Điểm cần lưu ý:**
> - Digital products giảm 16.2% — cần review pricing và marketing
> - Subscription revenue giảm 11.5% — cần thêm subscriber mới
>
> **Đề xuất:**
> 1. Tăng marketing cho digital products (Facebook/Google Ads)
> 2. Phát triển thêm subscription plans cho SMEs
> 3. Xem xét tăng giá consulting (demand cao, có thể tăng 10-15%)

**Lưu ý:** Finance AI đề xuất tăng giá consulting — đây là quyết định chiến lược cần Founder đánh giá. AI đưa ra recommendation dựa trên data, nhưng quyết định cuối cùng luôn thuộc về con người.

### 3.4.4 Bảng theo dõi KPI

| KPI | Target | Phase 1 (Tháng 1-3) | Phase 2 (Tháng 4-6) | Phase 3 (Tháng 7-12) |
|-----|--------|---------------------|---------------------|----------------------|
| Financial accuracy | 99%+ | >= 95% | >= 98% | >= 99.5% |
| Invoice processing | < 24h | < 48h | < 24h | < 12h |
| Compliance | 100% | 100% | 100% | 100% |
| Cost optimization | -20% YoY | Baseline | -10% H1 | -20% YoY |
| Gross Margin | > 70% | > 60% | > 65% | > 70% |
| Net Margin | > 30% | > 20% | > 30% | > 40% |
| DSO (Days Sales Outstanding) | < 30 ngày | < 30 ngày | < 20 ngày | < 15 ngày |
| Collection Rate | > 95% | > 90% | > 93% | > 97% |
| Burn Rate | < Ngân sách | Baseline | Monitor | Optimize |

### 3.4.5 Cấu trúc thư mục thực tế

```
03-backoffice/
├── README.md                    ← Department overview
├── _knowledge/                  ← K: charter, KPIs, domain references
├── _workflow/                   ← W: SOP index, dependencies, state machine
├── _skills-agents/              ← S: AI roster, capability matrix, SOP coverage
├── _rules/                      ← R: policies, decision authority, quality gates
├── charter/                     ← Department charter
├── kpi/                         ← KPI definitions & tracking
├── ai-workers/                  ← AI worker profiles
├── accounting/                  ← SOP-BACK-001: Kế toán & doanh thu
│   ├── template/                ← Journal entry template, reconciliation template
│   ├── input/                   ← Bank statements, receipts
│   ├── processing/              ← Entries đang xử lý
│   ├── output/                  ← Daily reconciliation reports
│   └── archive/
├── budgeting/                   ← SOP-BACK-002: Chi phí & ngân sách
├── invoicing/                   ← SOP-BACK-003: Hóa đơn & công nợ
│   ├── template/                ← Invoice template
│   ├── input/                   ← Invoice requests
│   ├── output/                  ← Issued invoices (INV-2026-xxx.md)
│   └── archive/
├── financial-reporting/         ← SOP-BACK-004: Báo cáo tài chính
│   ├── template/                ← Report template, P&L template
│   ├── output/                  ← Monthly financial reports
│   └── archive/
├── ai-workforce-management/     ← SOP-BACK-005: Quản lý AI workforce
├── ai-performance-review/       ← SOP-BACK-006: Đánh giá hiệu suất AI
├── document-management/         ← SOP-BACK-007: Quản lý tài liệu
├── backup-disaster-recovery/    ← SOP-BACK-010: Backup & DR
├── procurement/                 ← SOP-BACK-011: Mua sắm
├── contract-management/         ← SOP-BACK-012: Hợp đồng
├── policies/                    ← SOP-BACK-008 & 009: Legal & Security
└── reports/                     ← Báo cáo tuần & tháng
```

**Mẹo:** Folder `policies/` chứa 2 documentation-only SOPs: Legal Compliance (SOP-BACK-008) và Security Policy (SOP-BACK-009). Đây không phải operational SOPs mà là reference documents — Admin AI và Finance AI cần reference chúng khi xử lý công việc liên quan. Ví dụ: khi Finance AI tính thuế, nó cần reference SOP-BACK-008 cho tax compliance rules.

---

## 3.5 Thiết kế phòng ban cho ngành khác

Cho đến nay chúng ta đã phân tích cấu trúc phòng ban cho AINS — một công ty consulting/training. Nhưng nguyên tắc OPC không giới hạn ở ngành consulting. Cách thích ứng cho ngành khác như sau.

### Nguyên tắc chung: Porter Value Chain → Departments

Bất kể ngành nào, hãy bắt đầu bằng Porter Value Chain:

```
Primary Activities: Inbound Logistics → Operations → Outbound Logistics → Marketing & Sales → Service
Support Activities: Infrastructure, HR, Technology Development, Procurement
```

Nhóm các primary activities thành 2-3 departments chính, và support activities thành 1 department. Mỗi department có cấu trúc: AI Workers + SOPs + KPIs.

### E-commerce

**3 Departments:**

| Department | Chịu trách nhiệm | AI Workers | SOPs thêm |
|------------|-----------------|------------|-----------|
| **Growth** | Marketing, Sales, Customer Acquisition | Marketing AI, SEO AI, Ads AI, Analytics AI | SOP: Quản lý Google/Meta Ads |
| **Operations** | Order Fulfillment, Inventory, Shipping, Customer Service | Order AI, Inventory AI, CS AI | SOP: Quản lý kho, SOP: Fulfillment, SOP: Return/Refund |
| **Backoffice** | Finance, HR, Admin, Legal | Finance AI, HR AI, Admin AI | SOP: Quản lý nhà cung cấp, SOP: Đối soát sàn TMĐT |

**Khác biệt lớn nhất:** Thay vì Delivery Department (project-based), E-commerce OPC có Operations Department (order-based). Thêm Inventory AI để tự động reorder khi stock thấp, và Ads AI để optimize Google Shopping / Meta Ads.

### F&B (Nhà hàng / Chuỗi F&B)

**3 Departments:**

| Department | Chịu trách nhiệm | AI Workers | SOPs thêm |
|------------|-----------------|------------|-----------|
| **Growth** | Marketing, Reservation, Delivery Platform Management | Marketing AI, Reservation AI, Analytics AI | SOP: Quản lý delivery platforms, SOP: Social media F&B |
| **Kitchen & Operations** | Menu Planning, Prep, Cooking, Quality, Supply Chain | Kitchen AI, Quality AI, Supply AI | SOP: Recipe standardization, SOP: Prep checklist, SOP: Food safety |
| **Backoffice** | Finance, HR, Admin, Compliance | Finance AI, HR AI, Admin AI | SOP: Food cost tracking, SOP: Staff scheduling, SOP: Health compliance |

**Riêng ngành này:** Kitchen AI quản lý recipes, prep schedules, và food cost. Quality AI đảm bảo food safety compliance. Supply AI dự đoán nhu cầu nguyên liệu và tự động đặt hàng. Đây là trường hợp AI Workers đặc thù ngành.

### Manufacturing

**4 Departments:**

| Department | Chịu trách nhiệm | AI Workers | SOPs thêm |
|------------|-----------------|------------|-----------|
| **Growth** | Marketing, Sales, B2B Sales | Marketing AI, Sales AI, Analytics AI | SOP: B2B sales process, SOP: Trade show management |
| **Production** | Planning, Production, Quality Control | Production AI, QC AI, Maintenance AI | SOP: Production planning, SOP: Quality inspection, SOP: Maintenance schedule |
| **Supply Chain** | Procurement, Inventory, Logistics | Procurement AI, Inventory AI, Logistics AI | SOP: Supplier management, SOP: Inventory optimization, SOP: Shipping |
| **Backoffice** | Finance, HR, Admin, EHS | Finance AI, HR AI, Admin AI | SOP: Cost accounting, SOP: EHS compliance, SOP: Asset management |

**Lưu ý riêng:** Manufacturing cần 4 departments thay vì 3, vì Production và Supply Chain đủ phức tạp để tách riêng. Production AI chạy production planning, QC AI inspect quality, và Maintenance AI schedule preventive maintenance.

### Template thiết kế phòng ban

Dù ngành nào, hãy trả lời 4 câu hỏi sau:

1. **Porter Value Chain:** Primary activities của ngành bạn là gì? Nhóm thành 2-3 departments.
2. **AI Workers:** Mỗi department cần những khả năng gì? Mỗi khả năng = 1 AI Worker.
3. **SOPs:** Mỗi AI Worker cần những quy trình nào? Target: 3-5 SOPs/AI Worker.
4. **Human touchpoints:** Founder cần tham gia ở đâu? Target: 15-25h/tuần tổng cộng.

**Điểm chính:** Cấu trúc OPC phải reflect chuỗi giá trị thực tế của ngành bạn. Đừng copy cấu trúc của AINS nếu bạn chạy e-commerce hay F&B. Hãy bắt đầu từ Porter Value Chain, identify primary activities, rồi group thành departments phù hợp.

**Lưu ý quan trọng — KWSR là bắt buộc:** Dù ngành nào, mọi department template đều phải bao gồm 4 thư mục KWSR ở cấp root của department folder:

- `_knowledge/` ← K: charter, KPIs, domain references — tài liệu nền tảng mà mọi AI Worker trong department cần tham chiếu
- `_workflow/` ← W: SOP index, dependencies, state machine — bản đồ quy trình và quan hệ giữa các SOP
- `_skills-agents/` ← S: AI roster, capability matrix, SOP coverage — hồ sơ năng lực của đội ngũ AI và mức độ phủ SOP
- `_rules/` ← R: policies, decision authority, quality gates — ranh giới quyết định và tiêu chuẩn chất lượng

KWSR đảm bảo mỗi department có đầy đủ "hệ thần kinh" để vận hành tự chủ: Knowledge để biết, Workflow để làm, Skills để thực thi, Rules để tuân thủ. Thiếu bất kỳ thư mục nào, department sẽ mất khả năng tự vận hành và Founder phải can thiệp nhiều hơn mức cần thiết.

---

## 3.6 Tóm tắt chương

Chương này đi sâu vào thiết kế từng phòng ban:

**Growth Department** (4 AI Workers, 10 SOPs):
- Marketing AI, SEO AI, Sales AI, Analytics AI
- 20+ content pieces/tháng, 50-100 leads/tháng
- Founder: 10h/tuần (strategy + review + close key deals)
- Thực tế: bài blog 1,800 từ do Marketing AI tạo, leads pipeline với scoring model

**Delivery Department** (3 AI Workers, 8 SOPs):
- Project AI, QA AI, CS AI
- 95%+ on-time delivery, CSAT 4.5/5+
- Founder: 7h/tuần (quality gate + client meetings)
- Thực tế: project plan 115 triệu VND, support tickets với SLA tiers

**Backoffice Department** (3 AI Workers, 12 SOPs):
- Finance AI, HR AI, Admin AI
- Financial accuracy 99%+, compliance 100%
- Founder: 4h/tuần (financial review + approvals)
- Thực tế: hóa đơn 56.9 triệu VND, báo cáo tài chính với net margin 68.7%

**Tổng cộng: 10 AI Workers, 30 SOPs, 21h/tuần Founder involvement.**

Pattern này — AI Workers + SOPs + KPIs + Folder Structure — là "DNA" của OPC. Áp dụng cho ngành nào cũng được:

1. Bắt đầu từ Porter Value Chain
2. Group primary activities thành 3-4 departments
3. Thiết kế AI Workers cho mỗi department
4. Viết SOPs theo pattern IPO + State Machine
5. Track KPIs với targets theo phase
6. Thiết lập KWSR (_knowledge/ + _workflow/ + _skills-agents/ + _rules/) cho mỗi department — đảm bảo khả năng tự vận hành

Chương tiếp theo: vận hành hàng ngày. Founder làm gì mỗi sáng, mỗi tuần, mỗi tháng để giữ OPC chạy trơn tru.

---

*Chương 3 — "Hướng dẫn thiết kế từng phòng ban" | Tác giả: LOC DANG | Cập nhật: 2026-05-07*
