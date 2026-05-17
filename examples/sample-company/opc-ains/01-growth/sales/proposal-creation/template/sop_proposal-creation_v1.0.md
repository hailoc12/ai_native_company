# SOP-GROW-009: Tạo proposal & báo giá

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Sales AI
**Approved by:** Founder

---

## 1. Mục đích

Quy chuẩn hóa việc tạo proposal và báo giá cho khách hàng, đảm bảo professional presentation, competitive pricing, và turnaround time <24h. Mục tiêu: win rate ≥30%.

---

## 2. Phạm vi

### In-scope
- Proposal template management
- Custom proposal creation
- Pricing calculation
- Scope of work definition
- Timeline & milestone planning
- Proposal revision management

### Out-of-scope
- Contract legal review (Founder/external)
- Invoice creation (Accounting)
- Project kick-off (Operations)

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
- Discovery call notes (từ SOP-GROW-008)
- Client requirements & pain points
- Rate card & pricing structure
- Similar proposal templates
- Competitor pricing intelligence
- Brand Policy (SOP-GROW-007)

### Process
1. Requirement analysis
2. Solution design
3. Pricing calculation
4. Proposal drafting
5. Human review
6. Client delivery
7. Follow-up

### Output
- Professional proposal document
- Pricing breakdown
- Scope of work document
- Timeline & milestones
- Terms & conditions

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: Requirement Analysis (INPUT)
**Owner:** Sales AI
**Thời gian:** 30 min

1.1. Review discovery notes
1.2. Categorize client needs:
   - AI Consulting & Strategy
   - AI Automation Implementation
   - AI Training & Workshops
   - Custom AI Solutions
   - Monthly Retainer
1.3. Map requirements to service packages
1.4. Identify scope boundaries (what's in/out)
1.5. Lưu analysis vào `input/`

### Step 2: Solution Design & Pricing (PROCESSING/ai-draft)
**Owner:** Sales AI
**Thời gian:** 45 min

2.1. Design solution structure:
   ```
   Solution Framework:
   - Phase 1: Discovery & Assessment (1-2 weeks)
   - Phase 2: Solution Design (2-3 weeks)
   - Phase 3: Implementation (4-8 weeks)
   - Phase 4: Training & Handover (1-2 weeks)
   - Phase 5: Ongoing Support (optional)
   ```

2.2. Calculate pricing:
   ```
   Rate Card (Standard):
   - AI Consulting: $150/hour
   - AI Automation Package: $2,000-5,000
   - AI Training Workshop: $500-1,500/day
   - Custom AI Solution: $3,000-10,000
   - Monthly Retainer: $500-2,000/month

   Pricing Rules:
   - Standard rate cho projects <40h
   - 10% discount cho 3+ month retainers
   - 15% discount cho referrals
   - Max discount without Founder: 10%
   - Payment terms: 50% upfront, 50% on completion
   ```

2.3. Create scope boundaries document
2.4. Lưu draft vào `processing/ai-draft/`

### Step 3: Proposal Drafting (PROCESSING/ai-draft)
**Owner:** Sales AI
**Thời gian:** 60 min

3.1. Write proposal theo template:
   ```
   PROPOSAL STRUCTURE:
   1. Cover Page
      - AINS logo
      - Client name & logo
      - Proposal title
      - Date
      - Valid until (30 days)

   2. Executive Summary (1 trang)
      - Client context
      - Proposed solution overview
      - Expected outcomes
      - Investment summary

   3. Problem Statement
      - Current challenges
      - Impact on business
      - Cost of inaction

   4. Proposed Solution
      - Approach & methodology
      - Deliverables
      - Technology stack
      - Timeline & milestones

   5. Investment & ROI
      - Pricing breakdown
      - ROI projection
      - Payment schedule

   6. About AINS
      - Company overview
      - Relevant experience
      - Team (AI workforce)

   7. Next Steps
      - Acceptance process
      - Kick-off timeline
      - Contact information

   8. Terms & Conditions
   ```

3.2. Apply brand guidelines
3.3. Lưu draft proposal vào `processing/ai-draft/`

### Step 4: Human Review (PROCESSING/human-review)
**Owner:** Founder
**Thời gian:** 30 min
**SLA:** 12h

4.1. Review:
   - Solution accuracy & feasibility
   - Pricing appropriateness
   - Scope clarity
   - Brand consistency
   - Competitive positioning
4.2. Approve / Request changes
4.3. Move vào `processing/human-review/`

### Step 5: Delivery & Follow-up (OUTPUT)
**Owner:** Sales AI

5.1. Format final proposal (PDF)
5.2. Send via email:
   ```
   Subject: Proposal - [Service] cho [Company]
   Body:
   - Reference discovery conversation
   - Highlight key value proposition
   - Clear next steps
   - Attach proposal PDF
   ```
5.3. Log delivery trong CRM
5.4. Set follow-up schedule:
   - Day 2: Check if received
   - Day 5: Follow-up call/email
   - Day 7: Address any questions
   - Day 14: Decision check-in
5.5. Lưu final proposal vào `output/`

### Step 6: Archive (ARCHIVE)
**Owner:** Sales AI

6.1. Archive proposal (won or lost)
6.2. If won → handoff cho SOP-GROW-010 (Client Management)
6.3. If lost → document reason, archive

---

## 6. Template & Checklist

### Proposal Quality Checklist
- [ ] Client name spelled correctly
- [ ] Pain points accurately reflected
- [ ] Solution addresses all stated needs
- [ ] Pricing is competitive & profitable
- [ ] Timeline is realistic
- [ ] Scope boundaries clear
- [ ] ROI projection data-backed
- [ ] Brand guidelines followed
- [ ] No typos or grammatical errors
- [ ] PDF format professional

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| Proposal turnaround | <24h | Time tracking |
| Win rate | ≥30% | CRM |
| Average deal size | $1,000-3,000 | CRM |
| Proposal revision rounds | ≤2 | Tracking |
| Client satisfaction with proposal | ≥4/5 | Feedback |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1-3 | Sales AI | Research, design, draft |
| Step 4 | Founder | Human review |
| Step 5 | Sales AI | Delivery & tracking |
| Step 5 | Analytics AI | Deal tracking |

---

## 9. Upstream/Downstream SOPs

### Upstream
- **SOP-GROW-008** Sales process → Qualified opportunity
- **SOP-GROW-005** CRM management → Client data

### Downstream
- **SOP-GROW-010** Client management → Won deals
- **SOP-GROW-006** Marketing reporting → Win rate data

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Sales AI |

---

*SOP Owner: Sales AI | Approved by: Founder*
