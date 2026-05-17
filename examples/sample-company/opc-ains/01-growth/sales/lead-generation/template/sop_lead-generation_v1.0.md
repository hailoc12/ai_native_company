# SOP-GROW-004: Lead generation & qualification

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Sales AI
**Approved by:** Founder

---

## 1. Mục đích

Quy chuẩn hóa quy trình tìm kiếm, thu thập, và phân loại khách hàng tiềm năng (leads) đảm bảo pipeline luôn có đủ 50-100 leads mới/tháng, trong đó ít nhất 30 đạt chuẩn MQL và 15 đạt chuẩn SQL.

---

## 2. Phạm vi

### In-scope
- Lead sourcing (inbound + outbound)
- Lead capture & data entry
- Lead scoring (0-100)
- Lead qualification (MQL, SQL classification)
- Lead enrichment (company research)
- Handoff qualified leads cho sales process

### Out-of-scope
- Lead nurturing (SOP-GROW-003)
- Sales closing (SOP-GROW-008)
- Paid lead generation ads

---

## 3. Vai trò (RACI)

| Vai trò | Responsible | Accountable | Consulted | Informed |
|---------|:-----------:|:-----------:|:---------:|:--------:|
| Sales AI | ✅ | | | |
| Marketing AI | | | ✅ | |
| Analytics AI | | | | ✅ |
| Founder | | ✅ | | |

---

## 4. IPO Analysis

### Input
- Inbound leads (website forms, email replies, social DMs)
- Outbound prospect lists (LinkedIn Sales Navigator)
- Lead scoring model (từ KPI definitions)
- ICP (Ideal Customer Profile) definition
- Marketing content performance data

### Process
1. Lead sourcing & capture
2. Data enrichment
3. Lead scoring
4. Qualification assessment
5. Routing & handoff

### Output
- Scored & qualified leads trong CRM
- Lead profiles enriched
- MQL/SQL lists cho sales pipeline
- Weekly lead generation report

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: Lead Sourcing (INPUT)
**Owner:** Sales AI
**Thời gian:** 60 min/ngày

1.1. **Inbound lead capture:**
   - Monitor website form submissions
   - Monitor email replies (info@, hello@)
   - Monitor social media DMs
   - Monitor chatbot conversations
1.2. **Outbound prospecting:**
   - LinkedIn Sales Navigator search theo ICP:
     - Industry: Technology, SaaS, E-commerce, F&B chain
     - Company size: 11-50 employees
     - Location: Vietnam
     - Title: CEO, CTO, COO, VP, Director
   - Industry events & directories
1.3. Lưu raw leads vào `input/`

### Step 2: Data Enrichment (PROCESSING/ai-draft)
**Owner:** Sales AI
**Thời gian:** 15 min/lead

2.1. Enrich lead data:
   - Company website & description
   - Company size & revenue (nếu available)
   - Technology stack (BuiltWith, similar)
   - Decision maker identification
   - Social profiles
2.2. Map to ICP criteria
2.3. Lưu enriched profile vào `processing/ai-draft/`

### Step 3: Lead Scoring (PROCESSING/ai-draft)
**Owner:** Sales AI
**Thời gian:** 5 min/lead

3.1. Apply scoring model:
   ```
   FIT Score (max 55):
   - Company size 11-50:    +15
   - Target industry:       +20
   - Decision maker title:  +20

   BEHAVIOR Score (max 45):
   - Website >3 pages:      +10
   - Content download:      +10
   - Email opens >3:        +5
   - Demo/consult request:  +20
   ```

3.2. Classify lead:
   - **Cold (0-39):** Nurture pool → Marketing AI
   - **MQL (40-59):** Marketing Qualified → further qualify
   - **SQL (60-79):** Sales Qualified → sales pipeline
   - **Hot (80-100):** Priority → Founder engagement

3.3. Log score vào CRM
3.4. Lưu scoring sheet vào `processing/ai-draft/`

### Step 4: Qualification Review (PROCESSING/human-review)
**Owner:** Sales AI (prepare) → Founder (review SQL+)
**Thời gian:** Founder: 15 min/day

4.1. Sales AI prepare daily qualification brief:
   - New leads summary
   - SQL+ leads detail
   - Recommended next actions
4.2. Founder review SQL+ leads:
   - Confirm qualification
   - Add personal insights/context
   - Assign priority
4.3. Move reviewed leads vào `processing/human-review/`

### Step 5: Routing & Handoff (OUTPUT)
**Owner:** Sales AI

5.1. Route qualified leads:
   - **Cold/MQL →** Marketing AI nurture sequence (SOP-GROW-003)
   - **SQL →** Sales pipeline (SOP-GROW-008)
   - **Hot →** Immediate Founder notification + sales pipeline
5.2. Create lead handoff document:
   - Lead profile summary
   - Score breakdown
   - Recommended approach
   - Suggested talking points
5.3. Update CRM pipeline stage
5.4. Lưu pipeline snapshot vào `output/`

### Step 6: Weekly Archive (ARCHIVE)
**Owner:** Sales AI
**Trigger:** Friday

6.1. Compile weekly lead generation stats
6.2. Archive processed leads vào `archive/`
6.3. Update lead source effectiveness tracking

---

## 6. Template & Checklist

### Lead Profile Template
```
LEAD PROFILE
---
Name:
Title:
Company:
Company size:
Industry:
Website:
LinkedIn:
Source: [Inbound/Outbound/Referral]
Score: [0-100]
Classification: [Cold/MQL/SQL/Hot]

Pain Points (estimated):
Current Tech Stack:
Budget Indication:
Timeline:

Recommended Approach:
First Touch Message:
Notes:
```

### Daily Lead Processing Checklist
- [ ] Check all lead sources (forms, email, social)
- [ ] Process new leads (target: ≥3/day)
- [ ] Enrich lead profiles
- [ ] Score all new leads
- [ ] Classify (Cold/MQL/SQL/Hot)
- [ ] Update CRM
- [ ] Route qualified leads
- [ ] Brief Founder on SQL+ leads
- [ ] Log daily stats

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| New leads/tháng | 50-100 | CRM count |
| MQLs/tháng | ≥30 | CRM filter |
| SQLs/tháng | ≥15 | CRM filter |
| Lead scoring accuracy | ≥80% | Conversion correlation |
| Lead response time | <2h (inbound) | Time tracking |
| Enrichment completion | 100% fields | CRM audit |
| Lead-to-MQL rate | ≥30% | CRM funnel |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1 | Sales AI | Lead sourcing & capture |
| Step 2 | Sales AI | Data enrichment |
| Step 3 | Sales AI | Automated scoring |
| Step 5.1 | Marketing AI | Cold lead nurture handoff |
| Step 5 | Analytics AI | Lead data tracking |

---

## 9. Upstream/Downstream SOPs

### Upstream
- **SOP-GROW-001** Content marketing → Inbound leads (content download, form fills)
- **SOP-GROW-002** Social media → Social-sourced leads
- **SOP-GROW-003** Email marketing → Engaged subscribers

### Downstream
- **SOP-GROW-005** CRM management → Lead data in CRM
- **SOP-GROW-008** Sales process → SQL pipeline
- **SOP-GROW-006** Marketing reporting → Lead metrics

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Sales AI |

---

*SOP Owner: Sales AI | Approved by: Founder*
