# SOP-GROW-010: Quản lý khách hàng hiện tại

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Sales AI
**Approved by:** Founder

---

## 1. Mục đích

Quản lý và duy trì mối quan hệ với khách hàng hiện tại, đảm bảo satisfaction cao (CSAT ≥4.2/5), retention rate ≥85%, và identify cơ hội upsell/cross-sell.

---

## 2. Phạm vi

### In-scope
- Client onboarding (post-sale)
- Regular check-ins & communication
- Client health scoring
- Issue management & escalation
- Satisfaction surveys
- Upsell/cross-sell identification
- Renewal management

### Out-of-scope
- Project delivery (Operations department)
- Invoice & billing (Accounting)
- Technical support (Technical department)

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
- New client data (từ SOP-GROW-009 sau khi deal won)
- Project status updates (từ Operations)
- Client communication history
- Client health score model
- Previous survey results

### Process
1. Client onboarding
2. Regular check-ins
3. Health score monitoring
4. Issue management
5. Satisfaction measurement
6. Renewal & upsell

### Output
- Onboarded clients
- Client health reports
- Issue resolution records
- Survey results
- Renewal/upsell pipeline
- Client testimonials

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: Client Onboarding (INPUT)
**Owner:** Sales AI
**Thời gian:** 60 min/client

1.1. Receive client handoff từ SOP-GROW-009:
   - Signed proposal/contract
   - Client expectations summary
   - Key contacts
   - Payment terms
1.2. Setup client trong CRM:
   - Create client record
   - Set lifecycle stage: "Client"
   - Configure health score tracking
   - Set check-in schedule
1.3. Send welcome package:
   ```
   Welcome Email Content:
   - Thank you for choosing AINS
   - Your dedicated team introduction
   - Project timeline overview
   - Communication channels (Slack/Email)
   - What to expect in first week
   - Key contact information
   ```
1.4. Schedule kickoff coordination
1.5. Trigger email onboarding sequence (SOP-GROW-003)
1.6. Lưu onboarding docs vào `input/`

### Step 2: Regular Check-ins (PROCESSING/ai-draft)
**Owner:** Sales AI

2.1. **Check-in schedule:**
   - Week 1-2: Daily async check
   - Week 3-4: Every other day
   - Month 2+: Weekly
   - Quarter+: Bi-weekly

2.2. **Check-in format:**
   ```
   Check-in Questions:
   1. Tiến độ project đến nay ra sao?
   2. Có vấn đề/gaps nào cần address không?
   3. Communication & responsiveness thế nào?
   4. Có điều chỉnh nào cần không?
   5. Đánh giá tổng thể (1-10)?
   ```

2.3. Log check-in vào CRM
2.4. Lưu check-in notes vào `processing/ai-draft/`

### Step 3: Health Score Monitoring (PROCESSING/ai-draft)
**Owner:** Sales AI
**Thời gian:** 30 min/week (all clients)

3.1. Calculate client health score monthly:
   ```
   Health Score Components (0-10):
   - Revenue trend: 25%
   - Engagement level: 25%
   - CSAT score: 25%
   - Renewal likelihood: 25%

   Scoring:
   9-10: Healthy (green)
   7-8: Monitor (yellow)
   5-6: At Risk (orange)
   <5: Critical (red)
   ```

3.2. Flag at-risk clients for Founder attention
3.3. Lưu health assessment vào `processing/ai-draft/`

### Step 4: Human Review (PROCESSING/human-review)
**Owner:** Founder
**Thời gian:** 30 min/week

4.1. Review:
   - At-risk clients
   - Upsell opportunities
   - Key client issues
   - Renewal timeline approaching
4.2. Assign actions
4.3. Move reviewed items vào `processing/human-review/`

### Step 5: Issue Management & Reporting (OUTPUT)
**Owner:** Sales AI

5.1. Issue resolution tracking:
   - Log issue
   - Categorize severity (Critical/High/Medium/Low)
   - Assign owner
   - Track SLA:
     - Critical: <4h response
     - High: <8h
     - Medium: <24h
     - Low: <48h
   - Document resolution
5.2. Monthly client health report
5.3. Upsell opportunity pipeline update
5.4. Lưu reports vào `output/`

### Step 6: Archive (ARCHIVE)
**Owner:** Sales AI
**Trigger:** End of month

6.1. Archive client communications
6.2. Archive resolved issues
6.3. Archive survey results
6.4. Update client records

---

## 6. Template & Checklist

### Client Health Check Template
```
CLIENT HEALTH CHECK — [Month]
========================================
Client: [Name]
Contract value: $[Amount]
Contract period: [Start] - [End]
Months active: [X]

Health Score: [X/10]
- Revenue trend: [Score] — [Notes]
- Engagement: [Score] — [Notes]
- CSAT: [Score] — [Notes]
- Renewal: [Score] — [Notes]

Issues this month:
1. [Issue] — [Status]
2. [Issue] — [Status]

Wins this month:
1. [Win]
2. [Win]

Upsell opportunities:
1. [Opportunity] — [$ potential]
2. [Opportunity] — [$ potential]

Next actions:
1. [Action] — [Owner] — [Due]
2. [Action] — [Owner] — [Due]
```

### Quarterly Survey Template
- Overall satisfaction (1-5)
- Quality of deliverables (1-5)
- Communication quality (1-5)
- Value for money (1-5)
- Likelihood to renew (1-5)
- Likelihood to recommend (1-5)
- Open feedback

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| Client retention rate | ≥85% | CRM |
| CSAT score | ≥4.2/5 | Survey |
| NPS | ≥40 | Survey |
| Health score average | ≥7/10 | CRM |
| Issue resolution within SLA | ≥90% | Time tracking |
| Upsell rate | ≥20% | CRM |
| Client check-in compliance | 100% | Calendar |
| Renewal rate | ≥85% | CRM |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1 | Sales AI | Onboarding |
| Step 2 | Sales AI | Check-ins |
| Step 3 | Sales AI | Health scoring |
| Step 1.5 | Marketing AI | Email sequence trigger |
| Step 5 | Analytics AI | Data aggregation |

---

## 9. Upstream/Downstream SOPs

### Upstream
- **SOP-GROW-008** Sales process → Closed deal
- **SOP-GROW-009** Proposal → Signed contract
- **SOP-GROW-005** CRM → Client records

### Downstream
- **SOP-GROW-006** Marketing reporting → Client metrics
- **SOP-GROW-003** Email marketing → Client communications
- **SOP-GROW-001** Content → Testimonial/case study creation

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Sales AI |

---

*SOP Owner: Sales AI | Approved by: Founder*
