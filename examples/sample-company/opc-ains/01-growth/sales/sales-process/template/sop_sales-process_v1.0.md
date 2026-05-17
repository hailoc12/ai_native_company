# SOP-GROW-008: Quy trình bán hàng

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Sales AI
**Approved by:** Founder

---

## 1. Mục đích

Quy chuẩn hóa toàn bộ quy trình bán hàng từ first contact đến close, đảm bảo consistent experience cho prospect và tối ưu win rate ≥30%. Sales cycle target <30 ngày.

---

## 2. Phạm vi

### In-scope
- First contact & outreach
- Discovery call preparation & execution support
- Follow-up sequences
- Objection handling
- Negotiation support
- Deal closing coordination với Founder

### Out-of-scope
- Lead generation (SOP-GROW-004)
- Proposal creation (SOP-GROW-009)
- Client management sau close (SOP-GROW-010)

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
- SQL leads (từ SOP-GROW-004)
- Lead profiles & scoring data
- Product/service information
- Pricing & rate card
- Previous deal history & patterns
- Competitor intelligence

### Process
1. First contact preparation
2. Outreach execution
3. Discovery & qualification deepening
4. Solution presentation support
5. Objection handling
6. Negotiation
7. Close coordination

### Output
- Qualified opportunities in pipeline
- Meeting notes & action items
- Deal progression records
- Closed deals → revenue
- Lost deal analysis

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: First Contact Preparation (INPUT)
**Owner:** Sales AI
**Thời gian:** 20 min/prospect

1.1. Review lead profile (từ CRM)
1.2. Research company & contact:
   - Recent news/announcements
   - Technology stack
   - Pain points (estimated)
   - Mutual connections
1.3. Choose outreach channel:
   - **Inbound leads:** Email response (<2h SLA)
   - **Warm outbound:** LinkedIn connection + message
   - **Referral:** Personalized email mentioning referrer
1.4. Draft outreach message (3 variants)
1.5. Lưu preparation vào `input/`

### Step 2: Outreach Execution (PROCESSING/ai-draft)
**Owner:** Sales AI
**Thời gian:** 15 min/prospect

2.1. Send first touch message theo template:
   ```
   First Touch Template:
   - Personalized greeting
   - Reference trigger (downloaded X, visited Y, referral from Z)
   - Value proposition (1-2 sentences)
   - Soft CTA: "Bạn có 15 phút tuần tới không?"
   - Professional closing
   ```

2.2. Follow-up cadence (nếu không reply):
   - Day 3: Follow-up email (different angle)
   - Day 7: LinkedIn connection + message
   - Day 14: Break-up email ("Có lẽ timing chưa đúng...")
   - Day 30: Re-enter nurture sequence

2.3. Log mọi outreach vào CRM
2.4. Lưu outreach drafts vào `processing/ai-draft/`

### Step 3: Discovery Support (PROCESSING/ai-draft)
**Owner:** Sales AI → Founder (for calls)
**Thời gian:** 30 min prep per meeting

3.1. Prepare discovery materials:
   - Meeting agenda (5-7 questions)
   - Company research summary
   - Potential pain points list
   - Preliminary solution mapping
   - Competitive landscape
3.2. Suggested discovery questions:
   ```
   1. "Hiện team đang xử lý [relevant process] như thế nào?"
   2. "Pain point lớn nhất trong workflow hiện tại là gì?"
   3. "Đã thử giải pháp nào chưa? Kết quả ra sao?"
   4. "Budget cho dự án này được allocate khoảng bao nhiêu?"
   5. "Timeline kỳ vọng là khi nào?"
   6. "Ai là người quyết định final cho dự án này?"
   ```
3.3. Lưu preparation vào `processing/ai-draft/`

### Step 4: Founder Review (PROCESSING/human-review)
**Owner:** Founder
**Thời gian:** 15 min trước mỗi discovery call

4.1. Review Sales AI preparation
4.2. Add personal insights/connections
4.3. Confirm approach strategy
4.4. Approve → proceed to meeting

### Step 5: Post-Meeting Processing (OUTPUT)
**Owner:** Sales AI
**Thời gian:** 30 min sau mỗi meeting

5.1. Process meeting notes → structured format:
   ```
   Meeting Notes Template:
   - Date & Attendees
   - Key pain points discussed
   - Budget indication
   - Timeline discussed
   - Decision maker confirmed
   - Next steps & action items
   - Deal probability assessment
   ```
5.2. Update CRM:
   - Pipeline stage
   - Deal value (estimated)
   - Close date (estimated)
   - Activity log
5.3. Determine next action:
   - **Qualified & interested →** SOP-GROW-009 (Proposal)
   - **Needs more nurture →** Follow-up sequence
   - **Not qualified →** Close lost với reason
5.4. Lưu deal notes vào `output/`

### Step 6: Deal Archive (ARCHIVE)
**Owner:** Sales AI
**Trigger:** Deal closed (won or lost)

6.1. Compile full deal history
6.2. Win/loss analysis:
   - Why won/lost
   - Key factors
   - Lessons learned
6.3. Archive vào `archive/`

---

## 6. Template & Checklist

### Pre-Call Checklist
- [ ] Lead profile reviewed
- [ ] Company research completed
- [ ] Discovery questions prepared
- [ ] Solution options mapped
- [ ] CRM updated
- [ ] Founder briefed (for key deals)

### Post-Call Checklist
- [ ] Meeting notes documented (within 2h)
- [ ] CRM updated with new info
- [ ] Pipeline stage updated
- [ ] Next action scheduled
- [ ] Follow-up email sent (within 4h)
- [ ] Proposal trigger assessed

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| SQL-to-Opportunity rate | ≥40% | CRM |
| Average sales cycle | <30 days | CRM |
| Proposal win rate | ≥30% | CRM |
| Follow-up within SLA | 100% | Time tracking |
| Discovery calls/week | ≥3 | Calendar |
| Avg deal size | $1,000-3,000 | CRM |
| Lost deal analysis | 100% documented | CRM |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1 | Sales AI | Research & preparation |
| Step 2 | Sales AI | Outreach automation |
| Step 3 | Sales AI | Discovery materials |
| Step 5 | Sales AI | Notes processing |
| Step 5 | Analytics AI | Deal tracking |

---

## 9. Upstream/Downstream SOPs

### Upstream
- **SOP-GROW-004** Lead generation → SQL leads
- **SOP-GROW-005** CRM management → Lead data
- **SOP-GROW-003** Email marketing → Warm leads

### Downstream
- **SOP-GROW-009** Proposal creation → Qualified opportunities
- **SOP-GROW-010** Client management → Closed won deals
- **SOP-GROW-006** Marketing reporting → Sales metrics

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Sales AI |

---

*SOP Owner: Sales AI | Approved by: Founder*
