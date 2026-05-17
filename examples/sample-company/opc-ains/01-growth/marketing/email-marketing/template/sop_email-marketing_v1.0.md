# SOP-GROW-003: Email marketing automation

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Marketing AI
**Approved by:** Founder

---

## 1. Mục đích

Thiết lập và vận hành hệ thống email marketing automation để nurture leads, onboard khách hàng mới, và duy trì engagement với subscriber list. Mục tiêu: open rate ≥25%, click rate ≥5%.

---

## 2. Phạm vi

### In-scope
- Email campaign planning & creation
- Automation sequences (onboarding, nurture, re-engagement)
- Newsletter creation & sending
- A/B testing
- List segmentation & management
- Email analytics

### Out-of-scope
- Transactional emails (system)
- Cold outreach emails (SOP-GROW-004)
- Internal team communications

---

## 3. Vai trò (RACI)

| Vai trò | Responsible | Accountable | Consulted | Informed |
|---------|:-----------:|:-----------:|:---------:|:--------:|
| Marketing AI | ✅ | | | |
| Sales AI | | | ✅ | |
| Analytics AI | | | | ✅ |
| Founder | | ✅ | | |

---

## 4. IPO Analysis

### Input
- Email content (từ SOP-GROW-001)
- Subscriber list & segments
- Campaign calendar
- Performance data từ campaigns trước
- Lead behavior data (từ CRM)
- Brand Policy (SOP-GROW-007)

### Process
1. Campaign planning & segmentation
2. Email creation & design
3. A/B testing setup
4. Human review
5. Send/Schedule
6. Performance monitoring
7. Optimization

### Output
- Emails sent đúng schedule
- Automation sequences active
- Campaign performance reports
- Optimized subject lines (via A/B tests)
- Lead engagement data cho Sales AI

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: Campaign Planning (INPUT)
**Owner:** Marketing AI
**Thời gian:** 30 min/campaign
**Trigger:** Campaign calendar hoặc automation trigger

1.1. Xác định campaign type:
   - **Newsletter:** 2 lần/tháng, subscriber list
   - **Onboarding sequence:** Trigger khi có client mới, 5 emails
   - **Nurture sequence:** Trigger khi có MQL mới, 7 emails
   - **Re-engagement:** Trigger khi subscriber inactive 30 ngày
   - **Promotional:** Ad-hoc theo campaign calendar
1.2. Define segment:
   - By lifecycle stage (lead, MQL, SQL, client, churned)
   - By interest (AI consulting, automation, training)
   - By engagement level (active, passive, cold)
1.3. Set campaign goals & metrics
1.4. Lưu plan vào `input/`

### Step 2: Email Creation (PROCESSING/ai-draft)
**Owner:** Marketing AI
**Thời gian:** 30-45 min/email

2.1. Write subject line (tạo 3 options cho A/B test)
2.2. Write email body theo template:
   ```
   Email Template:
   - Subject: [Subject line]
   - Preview text: [30-50 chars]
   - Greeting: Personalized (Hi {first_name})
   - Body: Value-first, concise
   - CTA: 1 clear action
   - Signature: Brand standard
   - P.S. (optional): Urgency hoặc bonus info
   ```
2.3. Apply email best practices:
   - Mobile-responsive format
   - Single CTA per email
   - Short paragraphs (2-3 sentences)
   - Bullet points cho readability
2.4. Lưu draft vào `processing/ai-draft/`

### Step 3: Human Review (PROCESSING/human-review)
**Owner:** Founder
**Thời gian:** 10 min/email
**SLA:** 12h

3.1. Review:
   - Content accuracy
   - Tone alignment
   - CTA appropriateness
   - Segment targeting
3.2. Test email gửi test address
3.3. Approve / Request changes
3.4. Move vào `processing/human-review/`

### Step 4: Send & Monitor (OUTPUT)
**Owner:** Marketing AI

4.1. Schedule/send campaign:
   - Newsletter: Tuesday hoặc Thursday 09:00
   - Sequence emails: Theo timing đã set
4.2. Monitor real-time metrics (2h đầu):
   - Open rate
   - Click rate
   - Bounce rate
   - Unsubscribe rate
   - Spam complaints
4.3. A/B test results → pick winner sau 24h
4.4. Lưu results vào `output/`

### Step 5: Optimization & Archive (ARCHIVE)
**Owner:** Marketing AI
**Trigger:** 48h sau campaign end

5.1. Compile final campaign report
5.2. Extract insights:
   - Best performing subject line patterns
   - Best send times
   - Content themes với highest engagement
5.3. Update segmentation nếu cần
5.4. Archive campaign vào `archive/`
5.5. Handoff engagement data cho Sales AI & Analytics AI

---

## 6. Template & Checklist

### Email Sequence Templates

**Onboarding Sequence (5 emails):**
| Email | Timing | Subject | Content |
|-------|--------|---------|---------|
| 1 | Ngay sau signup | Welcome to AINS! | Welcome + what to expect |
| 2 | +1 ngày | Here's your AI transformation roadmap | Value content + resource |
| 3 | +3 ngày | Case study: How [Company] saved 40% time | Social proof |
| 4 | +5 ngày | Ready to explore AI solutions? | Soft CTA - book call |
| 5 | +7 ngày | Let's talk about your AI journey | Direct CTA |

### Pre-Send Checklist
- [ ] Subject line tested (3 variants)
- [ ] Preview text compelling
- [ ] Personalization tags working
- [ ] Links tested (click all)
- [ ] Mobile preview checked
- [ ] Segment correct
- [ ] Unsubscribe link present
- [ ] Send time optimized
- [ ] Test email sent to self

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| Email open rate | ≥25% | Email platform |
| Click-through rate | ≥5% | Email platform |
| Unsubscribe rate | <1% | Email platform |
| Bounce rate | <3% | Email platform |
| List growth | +100 subscribers/tháng | Email platform |
| Automation trigger rate | 100% active | System check |
| Revenue from email | ≥10% total revenue | Attribution |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1 | Marketing AI | Segmentation & planning |
| Step 2 | Marketing AI | Content generation |
| Step 4 | Marketing AI | Monitoring & A/B testing |
| Step 5 | Analytics AI | Performance analysis |
| Step 5.5 | Sales AI | Engagement data handoff |

---

## 9. Upstream/Downstream SOPs

### Upstream
- **SOP-GROW-001** Tạo nội dung marketing → Email content
- **SOP-GROW-007** Chính sách thương hiệu → Email templates
- **SOP-GROW-004** Lead generation → New subscribers

### Downstream
- **SOP-GROW-004** Lead generation → Engaged leads data
- **SOP-GROW-006** Marketing reporting → Email metrics
- **SOP-GROW-008** Sales process → Warm leads from nurture

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Marketing AI |

---

*SOP Owner: Marketing AI | Approved by: Founder*
