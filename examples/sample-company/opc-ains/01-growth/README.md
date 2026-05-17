# Growth Department — AI Native Solutions (AINS)

## Tổng quan Department

Growth Department chịu trách nhiệm toàn bộ chuỗi giá trị từ thu hút khách hàng tiềm năng đến chuyển đổi và giữ chân khách hàng. Department vận hành theo mô hình AI-first, nơi 4 AI Workers thực thi 80% công việc vận hành, Founder tham gia ở các điểm chiến lược.

**Mã phòng ban:** GROW
**Loại:** Vận hành (Operations Layer)
**SOP Owner:** Marketing AI (coordinator), Founder (approver)

---

## IPO Department-Level

| Element | Mô tả |
|---------|-------|
| **Input** | Market intelligence, brand guidelines, product roadmap, budget allocation |
| **Process** | Content creation, social media, email automation, lead gen, sales, CRM, reporting |
| **Output** | Marketing content (20+/tháng), qualified leads (50-100/tháng), closed deals, performance reports |

---

## RACI Matrix — Department Level

| Hoạt động | Marketing AI | SEO AI | Sales AI | Analytics AI | Founder |
|-----------|:---:|:---:|:---:|:---:|:---:|
| Content Strategy | **R** | C | I | C | **A** |
| Content Creation | **R** | C | I | I | A |
| SEO Optimization | C | **R** | I | I | A |
| Social Media Management | **R** | C | I | C | I |
| Email Campaigns | **R** | I | C | C | A |
| Lead Generation | C | C | **R** | C | A |
| Lead Qualification | I | I | **R** | C | C |
| Sales Process | I | I | **R** | I | **A** |
| Proposal Creation | I | I | **R** | I | **A** |
| Client Management | I | I | **R** | C | **A** |
| Performance Reporting | C | C | C | **R** | **A** |
| Budget Management | C | I | C | C | **A** |

**Chú thích:** R = Responsible, A = Accountable, C = Consulted, I = Informed

---

## KPIs — Growth Department

| KPI | Target hàng tháng | Đo lường bởi | Tần suất report |
|-----|-------------------|-------------|-----------------|
| Leads mới | 50-100 leads | Analytics AI | Weekly |
| Conversion Rate | 5-10% | Analytics AI | Weekly |
| Revenue | $3,000-8,000 | Sales AI | Monthly |
| Content pieces published | 20+ | Marketing AI | Weekly |
| Social media engagement rate | >3% | Marketing AI | Weekly |
| Email open rate | >25% | Marketing AI | Per campaign |
| Email click rate | >5% | Marketing AI | Per campaign |
| SEO organic traffic growth | +10% MoM | SEO AI | Monthly |
| Proposal win rate | >30% | Sales AI | Monthly |
| Client retention rate | >85% | Sales AI | Quarterly |
| Customer satisfaction (CSAT) | >4.2/5 | Sales AI | Quarterly |
| Cost per lead (CPL) | <$15 | Analytics AI | Monthly |

---

## AI Workers (4)

| AI Worker | Vai trò chính | SOP Owner |
|-----------|--------------|-----------|
| **Marketing AI** | Content creation, social media, email marketing | SOP-GROW-001, 002, 003 |
| **SEO AI** | SEO optimization, keyword research, content SEO audit | Hỗ trợ SOP-GROW-001 |
| **Sales AI** | Lead gen, qualification, CRM, sales process, proposals | SOP-GROW-004, 005, 008, 009, 010 |
| **Analytics AI** | Performance tracking, reporting, data analysis | SOP-GROW-006 |

---

## SOP Inventory

| Mã SOP | Tên | Loại | AI Worker Owner | Trạng thái |
|--------|-----|------|-----------------|------------|
| SOP-GROW-001 | Tạo nội dung marketing | Operational | Marketing AI | Active |
| SOP-GROW-002 | Quản lý social media | Operational | Marketing AI | Active |
| SOP-GROW-003 | Email marketing automation | Operational | Marketing AI | Active |
| SOP-GROW-004 | Lead generation & qualification | Operational | Sales AI | Active |
| SOP-GROW-005 | Quản lý CRM | Operational | Sales AI | Active |
| SOP-GROW-006 | Báo cáo hiệu suất marketing | Operational | Analytics AI | Active |
| SOP-GROW-007 | Chính sách thương hiệu | Documentation | Marketing AI | Active |
| SOP-GROW-008 | Quy trình bán hàng | Operational | Sales AI | Active |
| SOP-GROW-009 | Tạo proposal & báo giá | Operational | Sales AI | Active |
| SOP-GROW-010 | Quản lý khách hàng hiện tại | Operational | Sales AI | Active |

---

## Founder Involvement

| Hoạt động | Thời gian | Tần suất |
|-----------|-----------|----------|
| Strategy review & planning | 2h | Weekly |
| Content review & approval | 1h | Weekly |
| Key deal closing | 2h | As needed |
| Performance review | 1h | Weekly |
| Client health check | 1h | Monthly |
| **Tổng cộng** | **~10h/tuần** | |

---

## Workflow Architecture

```
Marketing AI ──► Content ──► Social Media ──► Traffic
                    │                              │
                    ▼                              ▼
              Email Marketing ──► Leads ──► Sales AI
                                                │
                                    ┌───────────┼───────────┐
                                    ▼           ▼           ▼
                              Qualification  Proposal   CRM
                                    │           │           │
                                    ▼           ▼           ▼
                                 Founder     Founder   Client Mgmt
                                 (close)     (approve)   │
                                    │           │          ▼
                                    ▼           ▼      Retention
                                 Revenue    ──► Analytics AI ──► Reports
```

---

## Cấu trúc thư mục

```
01-growth/
├── README.md                    ← File này
├── charter/                     ← Department charter
├── kpi/                         ← KPI definitions
├── ai-workers/                  ← AI worker profiles
├── marketing/                   ← Marketing SOPs & outputs
│   ├── create-content/          ← SOP-GROW-001
│   ├── manage-social-media/     ← SOP-GROW-002
│   └── email-marketing/         ← SOP-GROW-003
├── sales/                       ← Sales SOPs & outputs
│   ├── lead-generation/         ← SOP-GROW-004
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

---

*Cập nhật lần cuối: 2026-05-07 | Maintained by: Marketing AI | Approved by: Founder*
