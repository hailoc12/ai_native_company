# OPC Design Roadmap — AI Native Solutions (AINS)

> Tai lieu thiet ke va loi trien khai cho One Person Company (OPC) hoat dong tuong duong SME truyen thong. Day la blueprint cho Phase 3 (Company Creation).

**Ngay tao:** 2026-05-07
**Phien ban:** 1.0
**Pham vi:** Thiet ke toan dien OPC Sample Company — tu chien luoc den trien khai
**Nguon:** Dua tren phan tich tai `01-analysis/sme-opc-transformation-analysis.md`

---

## Muc Luc

1. [OPC Sample Company Profile](#1-opc-sample-company-profile)
2. [Thiet ke Kien truc Tong the](#2-thiet-ke-kien-truc-tong-the)
3. [Thiet ke 3 Departments Chi Tiet](#3-thiet-ke-3-departments-chi-tiet)
4. [Folder Structure Design](#4-folder-structure-design)
5. [Roadmap Trien khai](#5-roadmap-trien-khai)
6. [AI Workforce Blueprint](#6-ai-workforce-blueprint)
7. [Dummy Data Plan](#7-dummy-data-plan)

---

## 1. OPC Sample Company Profile

### 1.1 Thong tin Cong ty

| Truong | Gia tri |
|---|---|
| **Ten cong ty** | AI Native Solutions (AINS) |
| **Ten giao dich** | AINS — AI Native Solutions |
| **Loai hinh** | One Person Company (Cong ty mot thanh vien) |
| **Nganh** | Dich vu so & Tri thuc (Knowledge / Digital Services) |
| **Mo hinh kinh doanh** | Consulting + Training + Digital Products |
| **Quy mo OPC** | 1 nguoi (CEO) + 8-12 AI Workers |
| **Target revenue** | $5K-15K/thang trong 6-12 thang dau |
| **Dia diem** | Viet Nam (remote-first) |
| **Thi truong** | Viet Nam + Dong Nam A |
| **Ngon ngu van hanh** | Tieng Viet (noi bo), Tieng Anh (san pham quoc te) |

### 1.2 Mo ta Cong ty

AINS la cong ty dich vu so hoat dong theo mo hinh One Person Company (OPC), su dung AI workforce de dat duoc nang luc van hanh tuong duong mot SME 12-17 nguoi — chi voi 1 nguoi dieu hanh.

**Triet ly van hanh:** Founder khong lam viec — Founder thiet ke cach lam viec.

### 1.3 Mo hinh Doanh thu

| Dong doanh thu | Mo ta | Ty le muc tieu | Gia trung binh |
|---|---|---|---|
| **Consulting** | Tu van chuyen doi so, AI adoption, digital transformation | 40% | $1,500-5,000/du an |
| **Training** | Khoa hoc online, workshop, coaching ve AI tools & OPC | 30% | $200-1,000/khoa |
| **Digital Products** | Templates, SOPs, toolkits, courses, ebooks | 30% | $29-199/san pham |

### 1.4 Revenue Target theo Phase

| Phase | Timeline | Revenue/thang | Human hours/tuan | AI Workers |
|---|---|---|---|---|
| **SURVIVAL** | Thang 1-3 | $3-5K (75-125M VND) | 20-30h | 4-6 |
| **STABILITY** | Thang 4-6 | $8-15K (200-375M VND) | 10-20h | 6-8 |
| **FREEDOM** | Thang 7-12 | $15-25K+ (375-625M+ VND) | 5-10h | 8-12 |

### 1.5 Gia tri cot loi

| Gia tri | Y nghia |
|---|---|
| **System over Hustle** | Thiet ke he thong thay vi chay theo output |
| **AI as Workforce** | AI la nhan su, khong phai cong cu |
| **Knowledge is Capital** | Kien thuc la tai san lon nhat cua OPC |
| **Quality Gate** | Human o dau vao (design) va dau ra (review), AI lam giua |
| **Continuous PDCA** | Plan-Do-Check-Act lien tuc, moi tuan |

---

## 2. Thiet ke Kien truc Tong the

### 2.1 Tong quan Kien truc (Archimate + Porter Value Chain)

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    LAYER 1: STRATEGY                                     │
│                                                                         │
│  Vision: "Tro thanh mau hinh OPC chuan cho SMEs Viet Nam"              │
│  Value Prop: "SME-level capacity voi 1-person cost"                     │
│  Target Market: "Doanh nghiep vua va nho can chuyen doi so"            │
│                                                                         │
├─────────────────────────────────────────────────────────────────────────┤
│                    LAYER 2: PRIMARY ACTIVITIES (Porter Value Chain)      │
│                                                                         │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐ │
│  │ Inbound  │  │          │  │ Outbound │  │Marketing │  │          │ │
│  │Logistics │──│Operations│──│Logistics │──│ & Sales  │──│ Service  │ │
│  │          │  │          │  │          │  │          │  │          │ │
│  │Knowledge │  │ Service  │  │ Content  │  │ Growth   │  │Customer  │ │
│  │Acquisitn │  │ Delivery │  │ & Distbn │  │ Engine   │  │ Success  │ │
│  │(Research │  │ (Project │  │ (Publish │  │(Marketing│  │ (CS AI)  │ │
│  │  AI)     │  │  AI,     │  │  AI)     │  │ AI,      │  │          │ │
│  │          │  │  QA AI)  │  │          │  │ Sales AI)│  │          │ │
│  └──────────┘  └──────────┘  └──────────┘  └──────────┘  └──────────┘ │
│                                                                         │
├─────────────────────────────────────────────────────────────────────────┤
│                    LAYER 3: SUPPORT ACTIVITIES                           │
│                                                                         │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐               │
│  │Infrastruc│  │ HR       │  │Technology│  │Procuremnt│               │
│  │ture      │  │          │  │          │  │          │               │
│  │(Dev AI,  │  │(HR AI)   │  │(Automatn │  │(Admin AI)│               │
│  │ Infra AI)│  │          │  │ AI)      │  │          │               │
│  └──────────┘  └──────────┘  └──────────┘  └──────────┘               │
│                                                                         │
│  ALL REPORTING TO: CEO (System Designer) — 1 Human                     │
└─────────────────────────────────────────────────────────────────────────┘
```

### 2.2 Strategy Layer — Chi tiet

| Thanh phan | Mo ta | Metric theo doi |
|---|---|---|
| **Vision** | Tro thanh mau hinh OPC chuan cho SMEs Viet Nam, chung minh rang 1 nguoi + AI co the hoat dong tuong duong 15 nguoi | So OPC duoc tao tu AINS model |
| **Value Proposition** | SME-level capacity voi 1-person cost — khach hang nhan chat luong dich vu tuong duong doanh nghiep 15 nguoi, chi phi chi bang 1/10 | Customer NPS, repeat rate |
| **Target Market** | Doanh nghiep vua va nho (5-50 nhan vien) can chuyen doi so, tu van AI, automation workflow | Market size, TAM/SAM/SOM |
| **Competitive Advantage** | (1) AI-native tu dau, (2) Chi phi thap, (3) Chat luong dong deu nho SOP, (4) Speed to delivery | Win rate, time-to-deliver |
| **Revenue Model** | Consulting (40%) + Training (30%) + Digital Products (30%) | Revenue mix, margin moi dong |
| **Growth Strategy** | Phase 1: Consulting → xay reputation. Phase 2: Training → scale kien thuc. Phase 3: Digital Products → passive income | Revenue/phase, passive ratio |

### 2.3 Primary Activities — Porter Value Chain Mapping

| # | Hoat dong (Porter) | Tuong duong OPC | Department | AI Worker(s) | Output chinh |
|---|---|---|---|---|---|
| 1 | **Inbound Logistics** | Knowledge Acquisition | Growth | Research AI, Analytics AI | Market insights, competitor intel, trend reports |
| 2 | **Operations** | Service Delivery | Delivery | Project AI, QA AI | Deliverables, completed projects, quality reports |
| 3 | **Outbound Logistics** | Content & Product Distribution | Growth | Publishing AI, SEO AI | Published content, distributed products, reach metrics |
| 4 | **Marketing & Sales** | Growth Engine | Growth | Marketing AI, Sales AI | Leads, proposals, contracts, revenue |
| 5 | **Service** | Customer Success | Delivery | CS AI | Satisfaction scores, retention, upsells |

### 2.4 Support Activities — Mapping

| # | Hoat dong ho tro | Tuong duong OPC | AI Worker(s) | Output chinh |
|---|---|---|---|---|
| 1 | **Infrastructure** | IT & Systems | Dev AI, Infra AI | Uptime 99.9%, security, tool integrations |
| 2 | **HR** | AI Workforce Management | HR AI | AI worker profiles, performance, training plans |
| 3 | **Technology** | AI Tools & Automation | Automation AI | Workflow automation, API integrations, scripts |
| 4 | **Procurement** | Vendor & Tool Management | Admin AI | Tool evaluations, contracts, cost optimization |

### 2.5 RACI Matrix — Toan cong ty

| Hoat dong | CEO (Human) | Growth Dept | Delivery Dept | Backoffice Dept |
|---|---|---|---|---|
| Chien luoc kinh doanh | **A** | C | C | C |
| Content creation | I | **R** | I | I |
| Lead generation | I | **R** | I | I |
| Sales & closing | **A** | **R** | I | I |
| Project delivery | I | I | **R** | I |
| Quality assurance | **A** | I | **R** | I |
| Customer support | I | I | **R** | I |
| Ke toan & tai chinh | **A** | I | I | **R** |
| Thu & compliance | **A** | I | I | **R** |
| AI workforce mgmt | **A** | I | I | **R** |
| IT infrastructure | I | I | I | **R** |
| Legal & admin | **A** | I | I | **R** |
| Bao cao tuan/thang | I | **R** (Growth) | **R** (Delivery) | **R** (Backoffice) |
| Strategic review | **A** | C | C | C |

> **R** = Responsible (lam) | **A** = Accountable (chiu trach nhiem) | **C** = Consulted (duoc hoi y kien) | **I** = Informed (duoc thong bao)

---

## 3. Thiet ke 3 Departments Chi Tiet

### 3.1 Growth Department (Marketing + Sales)

#### 3.1.1 Tong quan

| Truong | Gia tri |
|---|---|
| **Ten** | Growth Department |
| **Pham vi** | Marketing, Sales, BD, Analytics |
| **Muc tieu** | Generate revenue $3-15K/thang thong qua inbound + outbound marketing va sales |
| **AI Workers** | 4 (Marketing AI, SEO AI, Sales AI, Analytics AI) |
| **Human involvement** | Strategy (5h/tuan) + Review (3h/tuan) + Close key deals (2h/tuan) |

#### 3.1.2 IPO Analysis

| Thanh phan | Chi tiet |
|---|---|
| **Input** | Market data, customer insights, product specs, brand guidelines, budget, competitor analysis, content calendar |
| **Process** | Content creation, social media management, SEO optimization, email marketing, lead generation, lead qualification, proposal creation, sales pipeline management, closing |
| **Output** | Qualified leads (50-100/thang), proposals, signed contracts, published content (20+ pieces/thang), revenue ($3-8K/thang), marketing reports |

#### 3.1.3 AI Workers (4)

| # | Ten AI Worker | Vai tro chinh | Cong cu/API | KPIs |
|---|---|---|---|---|
| 1 | **Marketing AI** | Content creation, social media, email marketing | Claude API, ChatGPT, Canva API, Mailchimp, Buffer/Hootsuite | 20+ content pieces/thang, engagement rate >3%, email open rate >25% |
| 2 | **SEO AI** | Keyword research, on-page optimization, technical SEO, analytics | Ahrefs/SEMrush API, Google Search Console, Google Analytics | 10+ keywords top 10, organic traffic +20%/thang, domain authority tang |
| 3 | **Sales AI** | Lead qualification, CRM management, follow-up sequences, proposal drafting | HubSpot/PIPELINEDRIVE API, Claude API, Gmail API | Lead response <1h, conversion rate 5-10%, pipeline value $20K+ |
| 4 | **Analytics AI** | Performance tracking, reporting, competitive analysis, A/B testing | Google Analytics, Metabase, Claude API | Reports dung deadline 100%, insight actionable, ROI tracking |

#### 3.1.4 KPIs Dashboard

| KPI | Muc tieu Thang 1-3 | Muc tieu Thang 4-6 | Muc tieu Thang 7-12 |
|---|---|---|---|
| Monthly leads | 50-100 | 150-300 | 300-500 |
| Conversion rate | 3-5% | 5-8% | 8-12% |
| Content output (pieces/thang) | 20 | 30 | 40+ |
| Revenue | $3-5K | $5-10K | $8-15K |
| Email subscribers | 500 | 2,000 | 5,000 |
| Social media followers | 1,000 | 5,000 | 15,000 |
| Website traffic (monthly) | 2,000 | 10,000 | 30,000 |
| Customer acquisition cost | <$50 | <$30 | <$20 |

#### 3.1.5 SOPs — Danh sach day du

| Ma SOP | Ten SOP | Phan loai | Mo ta | AI Worker chinh |
|---|---|---|---|---|
| SOP-GROW-001 | Tao noi dung marketing | OPERATIONAL | Quy trinh tao bai blog, social post, video script, infographic tu ideation den xuat ban | Marketing AI |
| SOP-GROW-002 | Quan ly social media | OPERATIONAL | Lich dang, community management, engagement tracking, hashtag strategy | Marketing AI |
| SOP-GROW-003 | Email marketing automation | OPERATIONAL | Sequence thiet ke, segmentation, A/B testing, analytics | Marketing AI |
| SOP-GROW-004 | Lead generation & qualification | OPERATIONAL | Outbound campaigns, lead scoring, ICP matching, handoff to Sales | Sales AI, Analytics AI |
| SOP-GROW-005 | Quan ly CRM | OPERATIONAL | Data entry, pipeline tracking, activity logging, follow-up scheduling | Sales AI |
| SOP-GROW-006 | Bao cao hieu suat marketing | OPERATIONAL | Weekly/monthly report, channel performance, ROI analysis, recommendations | Analytics AI |
| SOP-GROW-007 | Chinh sach thuong hieu | DOCUMENTATION-ONLY | Brand voice, visual identity, messaging framework, do's and don'ts | Marketing AI |
| SOP-GROW-008 | Quy trinh ban hang | OPERATIONAL | Sales call script, objection handling, negotiation, closing techniques | Sales AI |
| SOP-GROW-009 | Tao proposal & bao gia | OPERATIONAL | Template selection, customization, pricing, terms, delivery timeline | Sales AI |
| SOP-GROW-010 | Quan ly khach hang hien tai | OPERATIONAL | Check-in schedule, upsell/cross-sell, satisfaction survey, retention strategy | Sales AI, CS AI |

> **OPERATIONAL** = 5-subfolder state machine (template/input/processing/output/archive)
> **DOCUMENTATION-ONLY** = File .md don gian dung de tham khao

#### 3.1.6 Quy trinh van hanh tuan

```
Thu 2:  CEO review weekly report → Set priorities → Approve content calendar
Thu 3:  Marketing AI xuat ban content → Social AI dang scheduled posts
Thu 4:  Sales AI follow-up leads → Analytics AI update dashboard
Thu 5:  CEO review pipeline → Approve proposals → Strategy adjustment
Thu 6:  Marketing AI prepare next week content → SEO AI optimize pages
Chu Nhat: Analytics AI compile weekly report → Auto-send to CEO
```

---

### 3.2 Delivery Department (Operations + Customer Service)

#### 3.2.1 Tong quan

| Truong | Gia tri |
|---|---|
| **Ten** | Delivery Department |
| **Pham vi** | Project management, Quality assurance, Customer support, Onboarding |
| **Muc tieu** | Deliver 95%+ projects dung deadline, CSAT 4.5/5+, quality score 90%+ |
| **AI Workers** | 3 (Project AI, QA AI, CS AI) |
| **Human involvement** | Quality gate (3h/tuan) + Exception handling (2h/tuan) + Client meetings (2h/tuan) |

#### 3.2.2 IPO Analysis

| Thanh phan | Chi tiet |
|---|---|
| **Input** | Signed contracts, project requirements, SLAs, customer requests, feedback, resource availability |
| **Process** | Project planning, task assignment, execution tracking, quality review, compliance check, customer support, onboarding, change management |
| **Output** | Deliverables (reports, code, content, training), satisfied customers (CSAT 4.5/5+), case studies, quality reports, resolved tickets |

#### 3.2.3 AI Workers (3)

| # | Ten AI Worker | Vai tro chinh | Cong cu/API | KPIs |
|---|---|---|---|---|
| 1 | **Project AI** | Project planning, task management, timeline tracking, resource allocation, status reporting | Notion/Linear API, Claude API, Google Calendar | On-time delivery 95%+, task completion rate 98%+, no overdue tasks |
| 2 | **QA AI** | Quality review, compliance check, deliverable validation, feedback compilation, improvement tracking | Claude API, custom checklists, review templates | Quality score 90%+, 0 critical defects, review turnaround <4h |
| 3 | **CS AI** | Customer support, ticket management, satisfaction tracking, FAQ maintenance, escalation | Zendesk/Freshdesk API, Claude API, chatbot | Response time <2h, resolution rate 85%+, CSAT 4.5/5+ |

#### 3.2.4 KPIs Dashboard

| KPI | Muc tieu Thang 1-3 | Muc tieu Thang 4-6 | Muc tieu Thang 7-12 |
|---|---|---|---|
| On-time delivery rate | 85% | 90% | 95%+ |
| Customer satisfaction (CSAT) | 4.0/5 | 4.2/5 | 4.5/5+ |
| Quality score | 80% | 85% | 90%+ |
| Support response time | <4 hours | <2 hours | <30 min |
| Ticket resolution rate | 70% | 80% | 85%+ |
| Projects active | 2-3 | 4-6 | 6-10 |
| Client retention rate | 70% | 80% | 90%+ |
| NPS (Net Promoter Score) | 30+ | 50+ | 70+ |

#### 3.2.5 SOPs — Danh sach day du

| Ma SOP | Ten SOP | Phan loai | Mo ta | AI Worker chinh |
|---|---|---|---|---|
| SOP-DEL-001 | Quan ly du an | OPERATIONAL | Kickoff, planning, execution, monitoring, closure, retrospective | Project AI |
| SOP-DEL-002 | Dam bao chat luong | OPERATIONAL | Quality checklist, review process, defect tracking, improvement loop | QA AI |
| SOP-DEL-003 | Ho tro khach hang | OPERATIONAL | Ticket triage, response templates, escalation matrix, SLA tracking | CS AI |
| SOP-DEL-004 | Onboarding khach hang moi | OPERATIONAL | Welcome kit, setup checklist, expectation setting, timeline agreement | Project AI, CS AI |
| SOP-DEL-005 | Quan ly thay doi | OPERATIONAL | Change request form, impact assessment, approval workflow, re-planning | Project AI |
| SOP-DEL-006 | Danh gia hieu qua du an | OPERATIONAL | Post-mortem template, metrics collection, lessons learned, action items | QA AI, Project AI |
| SOP-DEL-007 | Xu ly khieu nai | OPERATIONAL | Complaint intake, investigation, resolution, follow-up, prevention | CS AI |
| SOP-DEL-008 | Bao mat thong tin khach hang | DOCUMENTATION-ONLY | Data handling policy, access control, encryption standard, breach protocol | QA AI |

#### 3.2.6 Quy trinh van hanh tuan

```
Thu 2:  Project AI → Weekly status update cho tat ca projects active
Thu 3:  QA AI → Quality review deliverables du kien giao tuan nay
Thu 4:  CS AI → Follow-up khach hang, update ticket status, gather feedback
Thu 5:  CEO → Review project dashboards, approve deliverables, handle escalations
Thu 6:  Project AI → Prepare next week plan, QA AI → compile quality report
Chu Nhat: CS AI → Weekly CS report, satisfaction survey auto-send
```

---

### 3.3 Backoffice Department (Finance + HR + Admin + Legal)

#### 3.3.1 Tong quan

| Truong | Gia tri |
|---|---|
| **Ten** | Backoffice Department |
| **Pham vi** | Finance/accounting, HR (AI workforce), Admin, Legal, IT infrastructure |
| **Muc tieu** | Financial accuracy 99%+, compliance 100%, cost optimization -20% YoY |
| **AI Workers** | 3 (Finance AI, HR AI, Admin AI) |
| **Human involvement** | Financial review (2h/tuan) + Approvals (1h/tuan) + Strategic decisions (1h/tuan) |

#### 3.3.2 IPO Analysis

| Thanh phan | Chi tiet |
|---|---|
| **Input** | Financial transactions, invoices, receipts, compliance requirements, AI workforce data, tool usage data, vendor contracts, legal updates |
| **Process** | Accounting, invoicing, budgeting, tax preparation, AI worker performance management, document management, compliance monitoring, procurement, vendor management |
| **Output** | Financial reports (monthly/quarterly), invoices paid/received, compliance records, AI workforce performance reports, optimized costs, clean audit trail |

#### 3.3.3 AI Workers (3)

| # | Ten AI Worker | Vai tro chinh | Cong cu/API | KPIs |
|---|---|---|---|---|
| 1 | **Finance AI** | Accounting, invoicing, budgeting, tax prep, financial reporting | QuickBooks/Xero API, Google Sheets, Claude API | Accuracy 99%+, invoice processing <24h, monthly report by day 5 |
| 2 | **HR AI** | AI workforce management, performance tracking, training plans, capacity planning | Custom tracking sheets, Claude API, Notion API | AI uptime 99%+, performance reviews monthly, skill gap analysis |
| 3 | **Admin AI** | Legal compliance, document management, procurement, vendor mgmt, contract tracking | Google Drive API, Claude API, calendar APIs | Compliance rate 100%, document retrieval <5min, vendor cost -10% |

#### 3.3.4 KPIs Dashboard

| KPI | Muc tieu Thang 1-3 | Muc tieu Thang 4-6 | Muc tieu Thang 7-12 |
|---|---|---|---|
| Financial accuracy | 95% | 98% | 99%+ |
| Invoice processing time | <48 hours | <24 hours | <12 hours |
| Compliance rate | 95% | 98% | 100% |
| Monthly report timeliness | By day 10 | By day 7 | By day 5 |
| Cost optimization | Baseline | -10% | -20% YoY |
| Tool uptime | 95% | 99% | 99.9% |
| AI worker performance score | 3.5/5 | 4.0/5 | 4.5/5 |
| Document organization score | 80% | 90% | 95% |

#### 3.3.5 SOPs — Danh sach day du

| Ma SOP | Ten SOP | Phan loai | Mo ta | AI Worker chinh |
|---|---|---|---|---|
| SOP-BACK-001 | Ke toan & ghi nhan doanh thu | OPERATIONAL | Recording revenue, categorizing transactions, bank reconciliation, cash flow tracking | Finance AI |
| SOP-BACK-002 | Quan ly chi phi & ngan sach | OPERATIONAL | Expense categorization, budget allocation, variance analysis, cost reduction recommendations | Finance AI |
| SOP-BACK-003 | Xuat hoa don & thu hoi cong no | OPERATIONAL | Invoice creation, sending, payment tracking, overdue follow-up, dunning sequence | Finance AI |
| SOP-BACK-004 | Bao cao tai chinh thang | OPERATIONAL | P&L, cash flow statement, balance sheet, KPI summary, trend analysis, CEO brief | Finance AI |
| SOP-BACK-005 | Quan ly AI workforce | OPERATIONAL | AI worker onboarding, performance monitoring, skill updates, capacity planning, retirement | HR AI |
| SOP-BACK-006 | Danh gia hieu suat AI | OPERATIONAL | Monthly performance review, output quality scoring, cost-per-task analysis, improvement plan | HR AI |
| SOP-BACK-007 | Quan ly tai lieu | OPERATIONAL | File naming convention, folder structure, version control, access management, archival | Admin AI |
| SOP-BACK-008 | Tuan thu phap luat | DOCUMENTATION-ONLY | Tax obligations, business registration, reporting calendar, regulatory updates checklist | Admin AI |
| SOP-BACK-009 | Chinh sach bao mat | DOCUMENTATION-ONLY | Data classification, access levels, encryption, backup schedule, incident response | Admin AI |
| SOP-BACK-010 | Backup & disaster recovery | OPERATIONAL | Daily/weekly/monthly backup schedule, restore testing, disaster recovery plan, RTO/RPO targets | Admin AI |
| SOP-BACK-011 | Mua sam & quan ly nha cung cap | OPERATIONAL | Tool evaluation framework, vendor selection, contract negotiation, performance review, renewal | Admin AI |
| SOP-BACK-012 | Quan ly hop dong | OPERATIONAL | Contract creation, review, signing, storage, renewal tracking, obligation monitoring | Admin AI |

#### 3.3.6 Quy trinh van hanh tuan

```
Thu 2:  Finance AI → Weekly cash flow update, invoice status, pending payments
Thu 3:  HR AI → AI worker performance snapshot, capacity report, issues flagged
Thu 4:  Admin AI → Compliance check, document status, vendor updates
Thu 5:  CEO → Review financial dashboard, approve payments, sign documents
Thu 6:  Finance AI → Prepare monthly reports (neu cuoi thang), Admin AI → backup check
Chu Nhat: Backoffice → Weekly summary report auto-generated
```

---

## 4. Folder Structure Design

### 4.1 Cau truc Folder Toan cong ty

```
opc-ains/
│
├── README.md                              ← Tong quan cong ty, huong dan su dung
├── charter/                               ← Company charter files
│   ├── company-charter.md                 ← Dieu le cong ty
│   ├── vision-mission-values.md           ← Tam nhin, su menh, gia tri
│   └── business-strategy.md               ← Chien luoc kinh doanh
│
├── legal/                                 ← Legal documents
│   ├── business-registration/             ← Dang ky kinh doanh
│   ├── contracts-templates/               ← Hop dong mau
│   ├── compliance-calendar.md             ← Lich tuan thu
│   └── policies/                          ← Chinh sach noi bo
│
├── 01-growth/                             ← Marketing + Sales
│   ├── README.md                          ← IPO + RACI + KPIs cua Growth
│   ├── charter.md                         ← Pham vi, quyen han, trach nhiem
│   │
│   ├── marketing/
│   │   ├── content-creation/              ← SOP-GROW-001 (OPERATIONAL)
│   │   │   ├── template/
│   │   │   ├── input/
│   │   │   ├── processing/
│   │   │   ├── output/
│   │   │   └── archive/
│   │   ├── social-media/                  ← SOP-GROW-002 (OPERATIONAL)
│   │   │   ├── template/
│   │   │   ├── input/
│   │   │   ├── processing/
│   │   │   ├── output/
│   │   │   └── archive/
│   │   ├── email-marketing/               ← SOP-GROW-003 (OPERATIONAL)
│   │   │   ├── template/
│   │   │   ├── input/
│   │   │   ├── processing/
│   │   │   ├── output/
│   │   │   └── archive/
│   │   └── analytics/                     ← SOP-GROW-006 (OPERATIONAL)
│   │       ├── template/
│   │       ├── input/
│   │       ├── processing/
│   │       ├── output/
│   │       └── archive/
│   │
│   ├── sales/
│   │   ├── lead-generation/               ← SOP-GROW-004 (OPERATIONAL)
│   │   │   ├── template/
│   │   │   ├── input/
│   │   │   ├── processing/
│   │   │   ├── output/
│   │   │   └── archive/
│   │   ├── crm-management/                ← SOP-GROW-005 (OPERATIONAL)
│   │   │   ├── template/
│   │   │   ├── input/
│   │   │   ├── processing/
│   │   │   ├── output/
│   │   │   └── archive/
│   │   └── proposal-creation/             ← SOP-GROW-009 (OPERATIONAL)
│   │       ├── template/
│   │       ├── input/
│   │       ├── processing/
│   │       ├── output/
│   │       └── archive/
│   │
│   ├── brand-policy.md                    ← SOP-GROW-007 (DOCUMENTATION-ONLY)
│   ├── sales-process.md                   ← SOP-GROW-008 (DOCUMENTATION-ONLY)
│   ├── customer-management.md             ← SOP-GROW-010 (DOCUMENTATION-ONLY)
│   │
│   └── reports/
│       ├── weekly/
│       ├── monthly/
│       └── quarterly/
│
├── 02-delivery/                           ← Operations + CS
│   ├── README.md                          ← IPO + RACI + KPIs cua Delivery
│   ├── charter.md                         ← Pham vi, quyen han, trach nhiem
│   │
│   ├── project-management/                ← SOP-DEL-001 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   ├── quality-assurance/                 ← SOP-DEL-002 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   ├── customer-support/                  ← SOP-DEL-003 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   ├── customer-onboarding/               ← SOP-DEL-004 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   │
│   ├── change-management.md               ← SOP-DEL-005 (DOCUMENTATION-ONLY)
│   ├── project-evaluation.md              ← SOP-DEL-006 (DOCUMENTATION-ONLY)
│   ├── complaint-handling.md              ← SOP-DEL-007 (DOCUMENTATION-ONLY)
│   ├── data-security-policy.md            ← SOP-DEL-008 (DOCUMENTATION-ONLY)
│   │
│   └── reports/
│       ├── weekly/
│       ├── monthly/
│       └── quarterly/
│
├── 03-backoffice/                         ← Finance + HR + Admin
│   ├── README.md                          ← IPO + RACI + KPIs cua Backoffice
│   ├── charter.md                         ← Pham vi, quyen han, trach nhiem
│   │
│   ├── accounting/                        ← SOP-BACK-001 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   ├── budgeting/                         ← SOP-BACK-002 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   ├── invoicing/                         ← SOP-BACK-003 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   ├── ai-workforce/                      ← SOP-BACK-005 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   ├── document-management/               ← SOP-BACK-007 (OPERATIONAL)
│   │   ├── template/
│   │   ├── input/
│   │   ├── processing/
│   │   ├── output/
│   │   └── archive/
│   ├── compliance/                        ← SOP-BACK-010, 011, 012 (OPERATIONAL)
│   │   ├── backup-recovery/               ← SOP-BACK-010
│   │   │   ├── template/
│   │   │   ├── input/
│   │   │   ├── processing/
│   │   │   ├── output/
│   │   │   └── archive/
│   │   ├── vendor-management/             ← SOP-BACK-011
│   │   │   ├── template/
│   │   │   ├── input/
│   │   │   ├── processing/
│   │   │   ├── output/
│   │   │   └── archive/
│   │   └── contract-management/           ← SOP-BACK-012
│   │       ├── template/
│   │       ├── input/
│   │       ├── processing/
│   │       ├── output/
│   │       └── archive/
│   │
│   ├── ai-performance-review.md           ← SOP-BACK-006 (DOCUMENTATION-ONLY)
│   ├── legal-compliance.md                ← SOP-BACK-008 (DOCUMENTATION-ONLY)
│   ├── security-policy.md                 ← SOP-BACK-009 (DOCUMENTATION-ONLY)
│   │
│   └── reports/
│       ├── financial/
│       │   ├── weekly/
│       │   ├── monthly/
│       │   └── quarterly/
│       ├── hr/
│       │   └── monthly/
│       └── compliance/
│           └── quarterly/
│
├── knowledge/                             ← Second Brain (3-tier)
│   ├── README.md                          ← Huong dan Second Brain
│   ├── 01-raw/                            ← Raw notes, articles, screenshots
│   ├── 02-structured/                     ← Processed insights, summaries
│   └── 03-ai-ready/                       ← AI-optimized knowledge, prompts, playbooks
│       ├── prompts/
│       ├── playbooks/
│       └── templates/
│
├── templates/                             ← Shared templates
│   ├── sop-template.md                    ← SOP template chuan
│   ├── report-template-weekly.md
│   ├── report-template-monthly.md
│   ├── invoice-template.md
│   ├── contract-template.md
│   └── proposal-template.md
│
└── reports/                               ← Company-level reports
    ├── weekly/
    ├── monthly/
    └── quarterly/
```

### 4.2 Quy uoc dat ten file

| Loai file | Quy uoc | Vi du |
|---|---|---|
| SOP operation file | `SOP-[DEPT]-[SEQ]-[NAME]-[STATUS]-[DATE].md` | `SOP-GROW-001-content-brief-DRAFT-2026-05-07.md` |
| Report | `RPT-[DEPT]-[TYPE]-[PERIOD].md` | `RPT-GROW-WEEKLY-2026-W19.md` |
| Invoice | `INV-[YYYY]-[SEQ].md` | `INV-2026-001.md` |
| Contract | `CTR-[PARTNER]-[DATE].md` | `CTR-ACME-2026-05-07.md` |
| Proposal | `PROP-[CLIENT]-[DATE].md` | `PROP-VIETCOMP-2026-05-07.md` |
| Template | `TPL-[NAME].md` | `TPL-content-brief.md` |
| Meeting notes | `MTG-[DATE]-[TOPIC].md` | `MTG-2026-05-07-weekly-review.md` |
| Knowledge | `KB-[TOPIC]-[SUBTOPIC].md` | `KB-SEO-keyword-research.md` |

### 4.3 SOP State Machine — Chi tiet

Moi SOP duoc phan loai **OPERATIONAL** co 5 subfolder:

```
SOP-Name/
├── template/     ← Template san, copy va dien thong tin
│   └── tpl-[name].md
├── input/        ← Du lieu dau vao (filled template, brief, requirement)
│   └── SOP-[CODE]-[name]-INPUT-[DATE].md
├── processing/   ← Dang xu ly (AI working, Work In Progress)
│   └── SOP-[CODE]-[name]-WIP-[DATE].md
├── output/       ← Ket qua hoan thanh, da qua quality gate
│   └── SOP-[CODE]-[name]-DONE-[DATE].md
└── archive/      ← Lich su, da dong, tham khao
    └── [YYYY-MM]/
        └── SOP-[CODE]-[name]-ARCHIVE-[DATE].md
```

**Luong van hanh:**
```
template → (copy to) → input → (AI processes) → processing → (QA review) → output → (month end) → archive
```

---

## 5. Roadmap Trien khai

### 5.1 Tong quan — 4 Tuan

```
Tuan 1: FOUNDATION          Tuan 2: CORE OPERATIONS
┌──────────────────┐        ┌──────────────────┐
│ Folder structure │        │ Growth SOPs      │
│ Company charter  │        │ Delivery SOPs    │
│ Dept READMEs     │        │ Templates        │
│ Backoffice SOPs  │        │ Reports          │
└──────────────────┘        └──────────────────┘

Tuan 3: POPULATE & TEST     Tuan 4: LAUNCH
┌──────────────────┐        ┌──────────────────┐
│ Dummy data       │        │ Dry run          │
│ Cross-link SOPs  │        │ Adjustments      │
│ Quality check    │        │ Full launch      │
└──────────────────┘        └──────────────────┘
```

### 5.2 Tuan 1: Foundation (Ngay 1-7)

| Ngay | Cong viec | Output | Dept |
|---|---|---|---|
| **Ngay 1** | Tao folder structure toan cong ty | Cau truc folder hoan chinh (nhu Section 4) | All |
| **Ngay 1** | Viet company README.md | File README chinh voi tong quan, huong dan su dung | All |
| **Ngay 2** | Viet company charter | `charter/company-charter.md`, `charter/vision-mission-values.md` | All |
| **Ngay 2** | Viet business strategy | `charter/business-strategy.md` | All |
| **Ngay 3** | Viet Growth README + charter | `01-growth/README.md`, `01-growth/charter.md` | Growth |
| **Ngay 3** | Viet Delivery README + charter | `02-delivery/README.md`, `02-delivery/charter.md` | Delivery |
| **Ngay 4** | Viet Backoffice README + charter | `03-backoffice/README.md`, `03-backoffice/charter.md` | Backoffice |
| **Ngay 4** | Tao Knowledge base README | `knowledge/README.md` | All |
| **Ngay 5** | Tao Backoffice SOPs (OPERATIONAL) — folder structure | SOP-BACK-001 to 005: 5 subfolders moi SOP + templates | Backoffice |
| **Ngay 6** | Tao Backoffice SOPs (tiep) | SOP-BACK-006, 007, 010, 011, 012: 5 subfolders + templates | Backoffice |
| **Ngay 7** | Tao Backoffice SOPs (DOCUMENTATION-ONLY) | SOP-BACK-008, 009: file .md don gian | Backoffice |

**Tuan 1 Deliverables:**
- [ ] Folder structure hoan chinh
- [ ] 1 company README
- [ ] 3 company charter files
- [ ] 3 department READMEs + 3 charters
- [ ] 1 knowledge base README
- [ ] 8 Backoffice OPERATIONAL SOPs (folder structure + templates)
- [ ] 2 Backoffice DOCUMENTATION-ONLY SOPs

### 5.3 Tuan 2: Core Operations (Ngay 8-14)

| Ngay | Cong viec | Output | Dept |
|---|---|---|---|
| **Ngay 8** | Tao Growth SOPs (OPERATIONAL) — Phan 1 | SOP-GROW-001, 002, 003: folder structure + templates | Growth |
| **Ngay 9** | Tao Growth SOPs (OPERATIONAL) — Phan 2 | SOP-GROW-004, 005, 006: folder structure + templates | Growth |
| **Ngay 10** | Tao Growth SOPs (DOCUMENTATION-ONLY) | SOP-GROW-007, 008, 009, 010: file .md | Growth |
| **Ngay 11** | Tao Delivery SOPs (OPERATIONAL) | SOP-DEL-001, 002, 003, 004: folder structure + templates | Delivery |
| **Ngay 12** | Tao Delivery SOPs (DOCUMENTATION-ONLY) | SOP-DEL-005, 006, 007, 008: file .md | Delivery |
| **Ngay 13** | Tao shared templates | `templates/` — SOP, report, invoice, contract, proposal templates | All |
| **Ngay 14** | Tao report folder structure | Weekly/monthly/quarterly report placeholders | All |

**Tuan 2 Deliverables:**
- [ ] 6 Growth OPERATIONAL SOPs (folder structure + templates)
- [ ] 4 Growth DOCUMENTATION-ONLY SOPs
- [ ] 4 Delivery OPERATIONAL SOPs (folder structure + templates)
- [ ] 4 Delivery DOCUMENTATION-ONLY SOPs
- [ ] 6 shared templates
- [ ] Report folder structure

### 5.4 Tuan 3: Populate & Test (Ngay 15-21)

| Ngay | Cong viec | Output | Dept |
|---|---|---|---|
| **Ngay 15** | Tao dummy financial data | Thang hien tai: transactions, invoices, expenses | Backoffice |
| **Ngay 16** | Tao dummy projects (2-3) | Project files trong processing/output | Delivery |
| **Ngay 17** | Tao dummy customer records (5-10) | CRM entries, support tickets, contracts | Growth + Delivery |
| **Ngay 18** | Tao dummy marketing content | Content calendar, published posts, campaign data | Growth |
| **Ngay 19** | Tao dummy sales pipeline | Lead records, proposals, pipeline stages | Growth |
| **Ngay 20** | Cross-link tat ca SOPs | References giua cac SOP, dependencies map | All |
| **Ngay 21** | Quality check toan bo | Review consistency, accuracy, completeness | All |

**Tuan 3 Deliverables:**
- [ ] Dummy financial data (1 thang)
- [ ] 2-3 dummy active projects
- [ ] 5-10 dummy customer records
- [ ] Marketing content calendar + 20+ content pieces
- [ ] Sales pipeline data
- [ ] Cross-linked SOPs
- [ ] Quality check report

### 5.5 Tuan 4: Launch (Ngay 22-28)

| Ngay | Cong viec | Output | Dept |
|---|---|---|---|
| **Ngay 22** | Dry run — Growth Department | Chay simulated content creation + lead gen flow | Growth |
| **Ngay 23** | Dry run — Delivery Department | Chay simulated project delivery + CS flow | Delivery |
| **Ngay 24** | Dry run — Backoffice Department | Chay simulated accounting + reporting flow | Backoffice |
| **Ngay 25** | Adjustments — Fix issues from dry run | Updated SOPs, templates, processes | All |
| **Ngay 26** | Adjustments — Optimize workflows | Refined AI worker configs, better SOPs | All |
| **Ngay 27** | Final review + sign-off | CEO review all departments, approve for launch | All |
| **Ngay 28** | **FULL OPERATIONS LAUNCH** | OPC AINS bat dau hoat dong chinh thuc | All |

**Tuan 4 Deliverables:**
- [ ] 3 dry run reports (Growth, Delivery, Backoffice)
- [ ] Adjustments log
- [ ] Final sign-off document
- [ ] Launch confirmation

### 5.6 Milestone Checklist

```
[ ] Tuan 1: Foundation
    [ ] Folder structure
    [ ] Company documents
    [ ] Department charters
    [ ] Backoffice SOPs

[ ] Tuan 2: Core Operations
    [ ] Growth SOPs
    [ ] Delivery SOPs
    [ ] Templates
    [ ] Report structure

[ ] Tuan 3: Populate & Test
    [ ] Dummy data
    [ ] Cross-linking
    [ ] Quality check

[ ] Tuan 4: Launch
    [ ] Dry runs
    [ ] Adjustments
    [ ] Final review
    [ ] LAUNCH
```

---

## 6. AI Workforce Blueprint

### 6.1 Tong quan AI Workforce

| # | Ten AI Worker | Department | Phuong phap xay dung | Cap do tu dong |
|---|---|---|---|---|
| 1 | Marketing AI | Growth | TEMPLATED | 85% |
| 2 | SEO AI | Growth | EXPERT-CLONE | 80% |
| 3 | Sales AI | Growth | GPS-ENHANCED | 80% |
| 4 | Analytics AI | Growth | TEMPLATED | 90% |
| 5 | Project AI | Delivery | GPS-ENHANCED | 75% |
| 6 | QA AI | Delivery | EXPERT-CLONE | 80% |
| 7 | CS AI | Delivery | TEMPLATED | 90% |
| 8 | Finance AI | Backoffice | EXPERT-CLONE | 90% |
| 9 | HR AI | Backoffice | TEMPLATED | 95% |
| 10 | Admin AI | Backoffice | GPS-ENHANCED | 85% |

> **Phuong phap xay dung:**
> - **TEMPLATED:** Dung template co san, config nhanh, chi phi thap
> - **EXPERT-CLONE:** Clone tu expert knowledge, can training data, chat luong cao
> - **GPS-ENHANCED:** Ket hop GPS (General Problem Solving) + domain knowledge, linh hoat nhat

### 6.2 Chi tiet tung AI Worker

---

#### AI Worker 1: Marketing AI

| Truong | Chi tiet |
|---|---|
| **Ten** | Marketing AI (AINS-MKT-01) |
| **Department** | Growth |
| **Vai tro** | Content creation, social media management, email marketing |
| **Phuong phap** | TEMPLATED |
| **Cap do tu dong** | 85% |

**Ky nang can co:**
- Viet content tieng Viet + tieng Anh (blog, social, email, landing page)
- Hieu brand voice va tone cua AINS
- Tao content calendar va schedule
- A/B testing subject lines va headlines
- Image generation suggestions (prompt cho Canva/DALL-E)
- SEO-aware writing (keyword integration tu nhien)

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| Claude API (Opus/Sonnet) | Content generation chinh | Bat buoc |
| ChatGPT API | Backup content gen, idea brainstorming | Co ban |
| Canva API | Template creation, image design | Co ban |
| Mailchimp/Sendgrid API | Email campaign management | Co ban |
| Buffer/Hootsuite API | Social scheduling | Co ban |
| Notion API | Content calendar, task tracking | Bat buoc |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| Content pieces/thang | 20+ | So luong file trong output/ |
| Engagement rate | >3% | Social analytics |
| Email open rate | >25% | Email platform analytics |
| Brand consistency score | >90% | QA AI review |
| Deadline compliance | 100% | Calendar vs actual publish date |

---

#### AI Worker 2: SEO AI

| Truong | Chi tiet |
|---|---|
| **Ten** | SEO AI (AINS-SEO-01) |
| **Department** | Growth |
| **Vai tro** | Keyword research, on-page optimization, technical SEO, analytics |
| **Phuong phap** | EXPERT-CLONE |
| **Cap do tu dong** | 80% |

**Ky nang can co:**
- Keyword research va clustering (Vietnamese + English keywords)
- On-page SEO audit va recommendations
- Technical SEO monitoring (site speed, crawlability, indexing)
- Competitor SEO analysis
- Content optimization suggestions
- Link building strategy recommendations

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| Ahrefs/SEMrush API | Keyword data, backlink analysis | Bat buoc |
| Google Search Console API | Performance data, indexing status | Bat buoc |
| Google Analytics 4 API | Traffic analysis, user behavior | Bat buoc |
| PageSpeed Insights API | Technical SEO checks | Co ban |
| Screaming Frog / Sitebulb | Technical crawl | Tu chon |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| Keywords top 10 | 10+ trong 6 thang | Search Console |
| Organic traffic growth | +20%/thang | Google Analytics |
| Domain Authority | Tang deu dan | Ahrefs/SEMrush |
| Pages indexed | 100% pages duoc index | Search Console |
| Page speed score | >90 (mobile) | PageSpeed Insights |

---

#### AI Worker 3: Sales AI

| Truong | Chi tiet |
|---|---|
| **Ten** | Sales AI (AINS-SLS-01) |
| **Department** | Growth |
| **Vai tro** | Lead qualification, CRM management, follow-up, proposal drafting |
| **Phuong phap** | GPS-ENHANCED |
| **Cap do tu dong** | 80% |

**Ky nang can co:**
- Lead scoring va qualification (ICP matching)
- CRM data entry va pipeline management
- Email follow-up sequences (personalized)
- Proposal drafting tu templates
- Sales call preparation (research, questions, objections)
- Pipeline forecasting

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| HubSpot/Pipedrive API | CRM management | Bat buoc |
| Claude API | Proposal drafting, email personalization | Bat buoc |
| Gmail API | Email sending, follow-up tracking | Bat buoc |
| Google Calendar API | Meeting scheduling | Co ban |
| Calendly API | Self-service booking | Tu chon |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| Lead response time | <1 hour | CRM timestamp |
| Conversion rate | 5-10% | Pipeline data |
| Pipeline value | $20K+ | CRM dashboard |
| Proposal turnaround | <24 hours | CRM timestamp |
| Follow-up completion | 100% | CRM activity log |

---

#### AI Worker 4: Analytics AI

| Truong | Chi tiet |
|---|---|
| **Ten** | Analytics AI (AINS-ANA-01) |
| **Department** | Growth |
| **Vai tro** | Performance tracking, reporting, competitive analysis, insights |
| **Phuong phap** | TEMPLATED |
| **Cap do tu dong** | 90% |

**Ky nang can co:**
- Data collection tu nhieu nguon (GA, social, CRM, email)
- Bao cao tuan/thang tu dong
- Competitive intelligence gathering
- A/B test analysis va recommendations
- Trend identification va forecasting
- Visual dashboard creation

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| Google Analytics 4 API | Website analytics | Bat buoc |
| Social platform APIs | Social metrics | Co ban |
| Metabase/Google Data Studio | Dashboard visualization | Bat buoc |
| Claude API | Insight generation, report writing | Bat buoc |
| Google Sheets API | Data aggregation | Co ban |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| Report timeliness | 100% dung deadline | Calendar check |
| Insight quality score | >4/5 (CEO rating) | CEO feedback |
| Data accuracy | >99% | Cross-check |
| Dashboard uptime | 99%+ | Monitoring |

---

#### AI Worker 5: Project AI

| Truong | Chi tiet |
|---|---|
| **Ten** | Project AI (AINS-PRJ-01) |
| **Department** | Delivery |
| **Vai tro** | Project planning, task management, tracking, status reporting |
| **Phuong phap** | GPS-ENHANCED |
| **Cap do tu dong** | 75% |

**Ky nang can co:**
- Project planning va WBS (Work Breakdown Structure)
- Task assignment va tracking
- Timeline va milestone management
- Risk identification va mitigation
- Status reporting (weekly/daily)
- Resource allocation optimization

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| Notion/Linear API | Task management | Bat buoc |
| Claude API | Planning, analysis, reporting | Bat buoc |
| Google Calendar API | Deadline tracking | Co ban |
| Slack/Discord API | Notifications | Tu chon |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| On-time delivery | 95%+ | Actual vs planned dates |
| Task completion rate | 98%+ | Task tracking |
| Status report timeliness | 100% | Calendar check |
| Risk identification | 100% risks flagged early | Risk log |

---

#### AI Worker 6: QA AI

| Truong | Chi tiet |
|---|---|
| **Ten** | QA AI (AINS-QA-01) |
| **Department** | Delivery |
| **Vai tro** | Quality review, compliance check, feedback, improvement tracking |
| **Phuong phap** | EXPERT-CLONE |
| **Cap do tu dong** | 80% |

**Ky nang can co:**
- Deliverable quality review theo checklist
- Brand voice consistency check
- Technical accuracy verification
- Compliance verification (legal, data security)
- Feedback compilation va improvement recommendations
- Lessons learned documentation

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| Claude API | Quality review, feedback generation | Bat buoc |
| Custom checklist system | Structured review | Bat buoc |
| Notion API | Tracking, logging | Co ban |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| Quality score | 90%+ | Review scores |
| Critical defects | 0 | Defect log |
| Review turnaround | <4 hours | Timestamp |
| Improvement actions | 100% tracked | Action log |

---

#### AI Worker 7: CS AI

| Truong | Chi tiet |
|---|---|
| **Ten** | CS AI (AINS-CS-01) |
| **Department** | Delivery |
| **Vai tro** | Customer support, ticket management, satisfaction tracking |
| **Phuong phap** | TEMPLATED |
| **Cap do tu dong** | 90% |

**Ky nang can co:**
- Ticket triage va routing
- FAQ auto-response
- Satisfaction survey management
- Escalation trigger khi can human
- Knowledge base maintenance
- Multi-channel support (email, chat, social)

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| Zendesk/Freshdesk API | Ticket management | Bat buoc |
| Claude API | Response generation, FAQ | Bat buoc |
| Gmail API | Email support channel | Bat buoc |
| Survey tools API | CSAT collection | Co ban |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| Response time | <2 hours | Ticket timestamp |
| Resolution rate | 85%+ auto-resolved | Ticket data |
| CSAT score | 4.5/5+ | Survey results |
| Escalation rate | <15% | Ticket routing data |

---

#### AI Worker 8: Finance AI

| Truong | Chi tiet |
|---|---|
| **Ten** | Finance AI (AINS-FIN-01) |
| **Department** | Backoffice |
| **Vai tro** | Accounting, invoicing, budgeting, tax preparation, reporting |
| **Phuong phap** | EXPERT-CLONE |
| **Cap do tu dong** | 90% |

**Ky nang can co:**
- Double-entry bookkeeping
- Invoice creation va tracking
- Budget planning va variance analysis
- Tax preparation (VAT, CIT Vietnam)
- Financial statement generation (P&L, Cash Flow, Balance Sheet)
- Cash flow forecasting

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| QuickBooks/Xero API | Accounting system | Bat buoc |
| Google Sheets API | Custom reports, tracking | Bat buoc |
| Claude API | Analysis, recommendations | Bat buoc |
| Bank API (neu co) | Transaction auto-import | Tu chon |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| Financial accuracy | 99%+ | Reconciliation results |
| Invoice processing | <24 hours | Timestamp |
| Monthly report by day | Day 5 | Calendar check |
| Tax filing timeliness | 100% on time | Compliance calendar |

---

#### AI Worker 9: HR AI

| Truong | Chi tiet |
|---|---|
| **Ten** | HR AI (AINS-HR-01) |
| **Department** | Backoffice |
| **Vai tro** | AI workforce management, performance tracking, training plans |
| **Phuong phap** | TEMPLATED |
| **Cap do tu dong** | 95% |

**Ky nang can co:**
- AI worker profile management
- Performance monitoring va scoring
- Skill gap analysis
- Training plan creation
- Capacity planning (workload distribution)
- AI worker onboarding/offboarding procedures

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| Custom tracking (Google Sheets/Notion) | AI worker database | Bat buoc |
| Claude API | Analysis, recommendations | Bat buoc |
| Notion API | Profile management | Co ban |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| AI worker uptime | 99%+ | Monitoring |
| Performance review completion | 100% monthly | Review calendar |
| Skill gap identification | Proactive, not reactive | Gap log |
| Capacity utilization | 70-85% (not overloaded) | Workload data |

---

#### AI Worker 10: Admin AI

| Truong | Chi tiet |
|---|---|
| **Ten** | Admin AI (AINS-ADM-01) |
| **Department** | Backoffice |
| **Vai tro** | Legal compliance, document management, procurement, vendor mgmt |
| **Phuong phap** | GPS-ENHANCED |
| **Cap do tu dong** | 85% |

**Ky nang can co:**
- Document organization va retrieval
- Compliance calendar monitoring
- Vendor evaluation va management
- Contract lifecycle management
- Backup verification
- Tool evaluation va recommendations

**Cong cu/API can thiet:**

| Cong cu | Muc dich | Uu tien |
|---|---|---|
| Google Drive API | Document storage | Bat buoc |
| Claude API | Analysis, drafting, recommendations | Bat buoc |
| Calendar APIs | Compliance reminders | Co ban |
| Backup tools | Data protection | Bat buoc |

**KPIs & Metrics:**

| Metric | Target | Do luong |
|---|---|---|
| Compliance rate | 100% | Compliance checklist |
| Document retrieval | <5 minutes | Retrieval time tracking |
| Vendor cost optimization | -10% YoY | Cost comparison |
| Backup success rate | 100% | Backup logs |

---

### 6.3 AI Workforce Cost Estimate

| Loai chi phi | Monthly Cost (USD) | Ghi chu |
|---|---|---|
| Claude API (Opus + Sonnet) | $100-200 | Main AI engine cho tat ca workers |
| ChatGPT API | $50-100 | Backup, specialized tasks |
| SaaS subscriptions (CRM, analytics, etc.) | $100-300 | HubSpot, Ahrefs, Notion, etc. |
| Email platform | $20-50 | Mailchimp/Sendgrid |
| Cloud storage | $10-20 | Google Drive, backups |
| Hosting/Infrastructure | $20-50 | Website, dashboard |
| Misc tools | $30-50 | Design, scheduling, etc. |
| **Tong cong** | **$330-770/thang** | **~8-19 trieu VND** |

---

## 7. Dummy Data Plan

### 7.1 Tong quan Dummy Data

Dummy data duoc tao de mo phong mot cong ty OPC dang hoat dong, phuc vu muc dich:
1. Test tat ca SOPs va workflows
2. Demo cho potential clients/investors
3. Training AI workers voi real-world-like data
4. Validate folder structure va naming conventions

### 7.2 Dummy Data — Growth Department

#### 7.2.1 Marketing Content Calendar

| Tuong | Loai content | Chu de | Channel | Status | Ngay xuat ban |
|---|---|---|---|---|---|
| W19-Mon | Blog post | "5 Ways AI Transforms Small Business in Vietnam" | Website | Published | 2026-05-04 |
| W19-Tue | Social post | Carousel: AI vs Traditional SME costs | LinkedIn, Facebook | Published | 2026-05-05 |
| W19-Thu | Email | Newsletter: Weekly AI insights for SME | Email list | Published | 2026-05-07 |
| W19-Fri | Video script | "What is OPC? 1 Person = 15 People Power" | YouTube/Tiktok | Published | 2026-05-08 |
| W20-Mon | Blog post | "SOP State Machine: How to Systematize Everything" | Website | Processing | 2026-05-11 |
| W20-Wed | Case study | "Client X: 300% Revenue Increase with AI Adoption" | Website + Email | Input | 2026-05-13 |
| W20-Thu | Social post | Infographic: OPC vs SME Comparison | LinkedIn, Facebook | Template | 2026-05-14 |
| W20-Fri | Email | Newsletter: Free SOP Template for Subscribers | Email list | Template | 2026-05-15 |

**Files can tao:**
- 20+ content pieces (mix blog, social, email, video scripts)
- 1 content calendar (thang hien tai)
- 3 email templates (welcome, newsletter, promotional)
- 5 social media post templates

#### 7.2.2 Sales Pipeline

| ID | Ten khach hang | Nguon lead | Stage | Gia tri | Ngay tao | AI Worker |
|---|---|---|---|---|---|---|
| LEAD-001 | VietComp JSC | Website inbound | Qualified | $3,000 | 2026-04-15 | Sales AI |
| LEAD-002 | Mekong Digital | LinkedIn outreach | Proposal Sent | $5,000 | 2026-04-20 | Sales AI |
| LEAD-003 | SaigonTech Co. | Referral | Negotiation | $8,000 | 2026-04-25 | Sales AI |
| LEAD-004 | Hanoi Startup Hub | Cold email | Discovery Call | $2,000 | 2026-05-01 | Sales AI |
| LEAD-005 | DaNang SME Club | Event | Lead | $1,500 | 2026-05-05 | Sales AI |
| LEAD-006 | Bangkok Digital Co. | SEO inbound | Qualified | $4,000 | 2026-05-06 | Sales AI |
| LEAD-007 | JL Consulting | Partnership | Proposal Sent | $6,000 | 2026-05-03 | Sales AI |
| LEAD-008 | TechViet Academy | Social media | Discovery Call | $2,500 | 2026-05-04 | Sales AI |
| LEAD-009 | GreenBiz VN | Cold email | Lead | $3,500 | 2026-05-06 | Sales AI |
| LEAD-010 | ASEAN Digital Forum | Conference | Qualified | $10,000 | 2026-04-28 | Sales AI |

**Files can tao:**
- 10 lead records (CRM entries)
- 3 proposals (template + filled versions)
- 1 pipeline dashboard
- 2 signed contracts
- 5 follow-up email sequences

#### 7.2.3 Customer Records

| ID | Ten khach hang | Loai dich vu | Ngay bat dau | Trang thai | Revenue | CSAT |
|---|---|---|---|---|---|---|
| CUST-001 | VietComp JSC | Consulting | 2026-03-01 | Active | $3,000 | 4.5/5 |
| CUST-002 | Mekong Digital | Training | 2026-04-01 | Active | $1,500 | 4.2/5 |
| CUST-003 | SaigonTech Co. | Consulting + Training | 2026-02-15 | Active | $8,000 | 4.8/5 |
| CUST-004 | Hanoi Startup Hub | Digital Product | 2026-04-10 | Completed | $500 | 4.0/5 |
| CUST-005 | TechViet Academy | Training | 2026-03-20 | Active | $2,500 | 4.6/5 |
| CUST-006 | JL Consulting | Consulting | 2026-04-15 | Active | $4,000 | -- |
| CUST-007 | DigitalFarm VN | Consulting | 2026-01-10 | Completed | $5,000 | 4.7/5 |
| CUST-008 | SmartRetail Co. | Training | 2026-03-05 | Active | $1,200 | 4.3/5 |

### 7.3 Dummy Data — Delivery Department

#### 7.3.1 Active Projects (3)

| ID | Ten du an | Khach hang | Loai | Start | Deadline | Trang thai | Progress |
|---|---|---|---|---|---|---|---|
| PRJ-001 | AI Adoption Strategy | SaigonTech Co. | Consulting | 2026-04-01 | 2026-05-15 | In Progress | 75% |
| PRJ-002 | Digital Marketing Training | TechViet Academy | Training | 2026-04-15 | 2026-06-15 | In Progress | 30% |
| PRJ-003 | SOP System Setup | JL Consulting | Consulting | 2026-05-01 | 2026-06-30 | Kickoff | 10% |

**PRJ-001 — Chi tiet (du an mau):**

| Task | AI Worker | Status | Deadline |
|---|---|---|---|
| Discovery & Research | Project AI + Research AI | Done | 2026-04-07 |
| Current State Assessment | QA AI | Done | 2026-04-14 |
| Strategy Draft | Project AI | Done | 2026-04-28 |
| Client Review Meeting | CEO + Project AI | Done | 2026-05-02 |
| Final Deliverable Prep | Project AI + QA AI | In Progress | 2026-05-12 |
| Quality Review | QA AI | Pending | 2026-05-13 |
| Client Delivery | CEO | Pending | 2026-05-15 |

#### 7.3.2 Support Tickets

| ID | Khach hang | Loai | Uu tien | Trang thai | Ngay tao | CS AI | Mo ta |
|---|---|---|---|---|---|---|---|
| TKT-001 | VietComp JSC | Question | Medium | Resolved | 2026-05-01 | Auto-resolved | "How to access training materials?" |
| TKT-002 | SaigonTech Co. | Request | High | In Progress | 2026-05-05 | Processing | "Need additional consultation session" |
| TKT-003 | TechViet Academy | Bug | Low | Resolved | 2026-05-03 | Auto-resolved | "Login issue with course portal" |
| TKT-004 | Mekong Digital | Feedback | Medium | Resolved | 2026-05-04 | Auto-resolved | "Suggestion: add more case studies" |
| TKT-005 | JL Consulting | Escalation | Critical | Escalated | 2026-05-06 | Escalated to CEO | "Contract terms clarification needed" |

**Files can tao:**
- 3 project folders (template + input + processing files)
- 5 support ticket records
- 2 customer onboarding checklists (filled)
- 1 QA review report
- 1 post-mortem template (filled cho completed project)

### 7.4 Dummy Data — Backoffice Department

#### 7.4.1 Financial Data — Thang hien tai (May 2026)

**Revenue:**

| Ma | Mo ta | So tien (USD) | Ngay | Trang thai |
|---|---|---|---|---|
| REV-001 | Consulting - SaigonTech Co. (Phase 2) | $4,000 | 2026-05-01 | Received |
| REV-002 | Training - TechViet Academy (Batch 2) | $1,250 | 2026-05-05 | Invoiced |
| REV-003 | Digital Product - SOP Toolkit | $299 | 2026-05-03 | Received |
| REV-004 | Consulting - VietComp JSC (Retainer) | $1,500 | 2026-05-01 | Received |
| REV-005 | Training - Mekong Digital (Workshop) | $800 | 2026-05-07 | Pending |
| **Tong revenue (MTD)** | | **$7,849** | | |

**Expenses:**

| Ma | Mo ta | So tien (USD) | Ngay | Category |
|---|---|---|---|---|
| EXP-001 | Claude API | $120 | 2026-05-01 | AI Tools |
| EXP-002 | HubSpot CRM | $50 | 2026-05-01 | SaaS |
| EXP-003 | Ahrefs | $99 | 2026-05-01 | SaaS |
| EXP-004 | Google Workspace | $12 | 2026-05-01 | SaaS |
| EXP-005 | Notion Team | $10 | 2026-05-01 | SaaS |
| EXP-006 | Mailchimp | $25 | 2026-05-01 | Marketing |
| EXP-007 | Website hosting | $20 | 2026-05-01 | Infrastructure |
| EXP-008 | ChatGPT API | $60 | 2026-05-03 | AI Tools |
| EXP-009 | Canva Pro | $13 | 2026-05-01 | Design |
| EXP-010 | Miscellaneous | $50 | 2026-05-05 | Other |
| **Tong expenses (MTD)** | | **$459** | | |

**Profit MTD: $7,849 - $459 = $7,390 (94% margin)**

#### 7.4.2 Invoices

| Ma | Khach hang | So tien | Ngay xuat | Han thanh toan | Trang thai |
|---|---|---|---|---|---|
| INV-2026-001 | VietComp JSC | $1,500 | 2026-05-01 | 2026-05-15 | Paid |
| INV-2026-002 | SaigonTech Co. | $4,000 | 2026-05-01 | 2026-05-15 | Paid |
| INV-2026-003 | TechViet Academy | $1,250 | 2026-05-05 | 2026-05-20 | Sent |
| INV-2026-004 | Mekong Digital | $800 | 2026-05-07 | 2026-05-22 | Draft |

#### 7.4.3 Contracts

| Ma | Khach hang | Loai | Gia tri | Bat dau | Ket thuc | Trang thai |
|---|---|---|---|---|---|---|
| CTR-2026-001 | SaigonTech Co. | Consulting | $8,000 | 2026-02-15 | 2026-05-15 | Active |
| CTR-2026-002 | VietComp JSC | Retainer | $1,500/month | 2026-03-01 | 2026-08-31 | Active |
| CTR-2026-003 | TechViet Academy | Training | $2,500 | 2026-03-20 | 2026-06-20 | Active |
| CTR-2026-004 | JL Consulting | Consulting | $4,000 | 2026-04-15 | 2026-06-30 | Active |
| CTR-2026-005 | Mekong Digital | Training | $1,500 | 2026-04-01 | 2026-04-30 | Completed |

#### 7.4.4 AI Workforce Status

| AI Worker | Department | Uptime (MTD) | Tasks completed | Quality score | Status |
|---|---|---|---|---|---|
| Marketing AI | Growth | 99.5% | 45 | 4.2/5 | Active |
| SEO AI | Growth | 98.0% | 12 | 4.0/5 | Active |
| Sales AI | Growth | 99.0% | 38 | 4.3/5 | Active |
| Analytics AI | Growth | 99.8% | 8 | 4.5/5 | Active |
| Project AI | Delivery | 99.2% | 25 | 4.1/5 | Active |
| QA AI | Delivery | 99.0% | 15 | 4.4/5 | Active |
| CS AI | Delivery | 99.5% | 52 | 4.6/5 | Active |
| Finance AI | Backoffice | 99.8% | 20 | 4.7/5 | Active |
| HR AI | Backoffice | 99.9% | 5 | 4.5/5 | Active |
| Admin AI | Backoffice | 99.5% | 18 | 4.3/5 | Active |

### 7.5 Dummy Data — Reports

#### 7.5.1 Weekly Report (Mau — Tuan 19, 2026)

```
RPT-COMPANY-WEEKLY-2026-W19

=== AINS WEEKLY REPORT — TUAN 19 (04-10 May 2026) ===

--- GROWTH ---
- Revenue tuan nay: $1,850
- Leads moi: 12 (target: 15)
- Content published: 5 pieces
- Email open rate: 28%
- Social engagement: 3.5%
- Pipeline value: $28,500

--- DELIVERY ---
- Active projects: 3
- Tasks completed: 15/17 (88%)
- Support tickets resolved: 4/5
- CSAT: 4.4/5
- On-track projects: 3/3

--- BACKOFFICE ---
- Revenue MTD: $7,849
- Expenses MTD: $459
- Profit MTD: $7,390
- Invoices outstanding: 2
- Compliance: All on track

--- CEO ACTIONS ---
- Review proposal cho ASEAN Digital Forum
- Approve Mekong Digital contract
- Strategy meeting voi SaigonTech (upsell)
```

#### 7.5.2 Monthly Report (Mau — Thang 4, 2026)

| Metric | Gia tri | vs Target | vs Thang truoc |
|---|---|---|---|
| Monthly Revenue | $8,200 | +5% | +15% |
| Gross Margin | 93% | +3% | +1% |
| Active Clients | 6 | On target | +2 |
| New Leads | 42 | -15% | +10% |
| Conversion Rate | 7.1% | +1.1% | +0.5% |
| Content Published | 22 pieces | +2 | +5 |
| CSAT | 4.5/5 | +0.1 | +0.2 |
| AI Worker Uptime | 99.3% | +0.1% | Same |
| CEO Hours Worked | 18h/tuan | -2h | -5h |

### 7.6 Dummy Data — Meeting Notes

| Ngay | Cuoc hop | Thanh phan | Topics | Action Items |
|---|---|---|---|---|
| 2026-05-05 | Weekly Review | CEO + All AI reports | Pipeline review, project status, finance | 5 actions |
| 2026-05-02 | Client Call - SaigonTech | CEO + Project AI | Phase 2 review, deliverable timeline | 3 actions |
| 2026-04-28 | Strategy Session | CEO | Q2 planning, product roadmap, pricing | 8 actions |
| 2026-04-25 | Client Onboarding - JL Consulting | CEO + Project AI + CS AI | Welcome, expectations, timeline | 4 actions |

**Files can tao:**
- 4 meeting notes (weekly reviews + client calls)
- 1 strategy session notes
- 1 client onboarding notes

### 7.7 Tong hop Files Dummy can Tao

| Loai | So luong | Department | Vi tri |
|---|---|---|---|
| Content pieces (blog, social, email) | 20+ | Growth | `01-growth/marketing/*/output/` |
| Lead records | 10 | Growth | `01-growth/sales/lead-generation/input/` |
| Proposals | 3 | Growth | `01-growth/sales/proposal-creation/output/` |
| Contracts | 5 | Backoffice | `03-backoffice/compliance/contract-management/output/` |
| Project files | 3 (moi project 5-7 files) | Delivery | `02-delivery/project-management/*/` |
| Support tickets | 5 | Delivery | `02-delivery/customer-support/input/` |
| Financial transactions | 15+ | Backoffice | `03-backoffice/accounting/input/` |
| Invoices | 4 | Backoffice | `03-backoffice/invoicing/output/` |
| Customer records | 8 | Growth + Delivery | `01-growth/sales/crm-management/input/` |
| Meeting notes | 4 | All | `reports/` |
| Weekly reports | 2 | All | `reports/weekly/` |
| Monthly report | 1 | All | `reports/monthly/` |
| AI workforce profiles | 10 | Backoffice | `03-backoffice/ai-workforce/output/` |
| **Tong cong** | **~100+ files** | | |

---

## Phu luc A: SOP Summary Table

| Ma SOP | Ten | Department | Loai | AI Worker |
|---|---|---|---|---|
| SOP-GROW-001 | Tao noi dung marketing | Growth | OPERATIONAL | Marketing AI |
| SOP-GROW-002 | Quan ly social media | Growth | OPERATIONAL | Marketing AI |
| SOP-GROW-003 | Email marketing automation | Growth | OPERATIONAL | Marketing AI |
| SOP-GROW-004 | Lead generation & qualification | Growth | OPERATIONAL | Sales AI, Analytics AI |
| SOP-GROW-005 | Quan ly CRM | Growth | OPERATIONAL | Sales AI |
| SOP-GROW-006 | Bao cao hieu suat marketing | Growth | OPERATIONAL | Analytics AI |
| SOP-GROW-007 | Chinh sach thuong hieu | Growth | DOCUMENTATION-ONLY | Marketing AI |
| SOP-GROW-008 | Quy trinh ban hang | Growth | DOCUMENTATION-ONLY | Sales AI |
| SOP-GROW-009 | Tao proposal & bao gia | Growth | DOCUMENTATION-ONLY | Sales AI |
| SOP-GROW-010 | Quan ly khach hang hien tai | Growth | DOCUMENTATION-ONLY | Sales AI, CS AI |
| SOP-DEL-001 | Quan ly du an | Delivery | OPERATIONAL | Project AI |
| SOP-DEL-002 | Dam bao chat luong | Delivery | OPERATIONAL | QA AI |
| SOP-DEL-003 | Ho tro khach hang | Delivery | OPERATIONAL | CS AI |
| SOP-DEL-004 | Onboarding khach hang moi | Delivery | OPERATIONAL | Project AI, CS AI |
| SOP-DEL-005 | Quan ly thay doi | Delivery | DOCUMENTATION-ONLY | Project AI |
| SOP-DEL-006 | Danh gia hieu qua du an | Delivery | DOCUMENTATION-ONLY | QA AI, Project AI |
| SOP-DEL-007 | Xu ly khieu nai | Delivery | DOCUMENTATION-ONLY | CS AI |
| SOP-DEL-008 | Bao mat thong tin khach hang | Delivery | DOCUMENTATION-ONLY | QA AI |
| SOP-BACK-001 | Ke toan & ghi nhan doanh thu | Backoffice | OPERATIONAL | Finance AI |
| SOP-BACK-002 | Quan ly chi phi & ngan sach | Backoffice | OPERATIONAL | Finance AI |
| SOP-BACK-003 | Xuat hoa don & thu hoi cong no | Backoffice | OPERATIONAL | Finance AI |
| SOP-BACK-004 | Bao cao tai chinh thang | Backoffice | OPERATIONAL | Finance AI |
| SOP-BACK-005 | Quan ly AI workforce | Backoffice | OPERATIONAL | HR AI |
| SOP-BACK-006 | Danh gia hieu suat AI | Backoffice | DOCUMENTATION-ONLY | HR AI |
| SOP-BACK-007 | Quan ly tai lieu | Backoffice | OPERATIONAL | Admin AI |
| SOP-BACK-008 | Tuan thu phap luat | Backoffice | DOCUMENTATION-ONLY | Admin AI |
| SOP-BACK-009 | Chinh sach bao mat | Backoffice | DOCUMENTATION-ONLY | Admin AI |
| SOP-BACK-010 | Backup & disaster recovery | Backoffice | OPERATIONAL | Admin AI |
| SOP-BACK-011 | Mua sam & quan ly nha cung cap | Backoffice | OPERATIONAL | Admin AI |
| SOP-BACK-012 | Quan ly hop dong | Backoffice | OPERATIONAL | Admin AI |

**Thong ke:**
- Tong SOP: 30
- OPERATIONAL (state machine): 18
- DOCUMENTATION-ONLY: 12

---

## Phu luc B: AI Workforce Summary

| # | Ten | Dept | Method | Auto % | Cong cu chinh |
|---|---|---|---|---|---|
| 1 | Marketing AI | Growth | TEMPLATED | 85% | Claude, Canva, Mailchimp |
| 2 | SEO AI | Growth | EXPERT-CLONE | 80% | Ahrefs, GA4, Search Console |
| 3 | Sales AI | Growth | GPS-ENHANCED | 80% | HubSpot, Claude, Gmail |
| 4 | Analytics AI | Growth | TEMPLATED | 90% | GA4, Metabase, Claude |
| 5 | Project AI | Delivery | GPS-ENHANCED | 75% | Notion, Claude, Calendar |
| 6 | QA AI | Delivery | EXPERT-CLONE | 80% | Claude, Custom checklists |
| 7 | CS AI | Delivery | TEMPLATED | 90% | Zendesk, Claude, Gmail |
| 8 | Finance AI | Backoffice | EXPERT-CLONE | 90% | QuickBooks, Sheets, Claude |
| 9 | HR AI | Backoffice | TEMPLATED | 95% | Notion, Sheets, Claude |
| 10 | Admin AI | Backoffice | GPS-ENHANCED | 85% | Drive, Claude, Calendar |

**Total:** 10 AI Workers | Avg automation: 85% | Est. cost: $330-770/thang

---

> **Ket luan:** Tai lieu nay la blueprint hoan chinh cho Phase 3 — viec trien khai OPC AINS. Tu cau truc cong ty, SOPs, AI workforce, den dummy data, moi thu da duoc thiet ke san. Buoc tiep theo la follow Roadmap trien khai (Section 5) de tao ra toan bo folder structure va files trong 4 tuan.
