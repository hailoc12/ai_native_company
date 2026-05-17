# Marketing Quality Gates — Rules Layer

**Version:** 1.0 | **Updated:** 2026-05-12 | **Owner:** Marketing AI
**Approved by:** Founder

---

## Quality Gates Overview

Moi marketing output BAT BUOC di qua Quality Gates truoc khi publish/gui. Quality Gate la diem kiem soat cuoi cung giua AI output va public-facing content.

### Principle
> **"AI lam nhanh, nguoi lam dung — va 'dung' quan trong hon 'nhanh'."**

---

## Gate 1: Pre-Publish Quality Gate

**Ap dung cho:** Tat ca noi dung public (blog, social, email campaigns)

### Review Checklist

| Criteria | Weight | Minimum Score | Check |
|----------|--------|---------------|-------|
| Brand voice alignment | 20% | 4/5 | Voice match voi Brand Policy? |
| Accuracy & fact-check | 20% | 5/5 | So lieu, claims co source khong? |
| CTA presence | 15% | 5/5 | Co CTA ro rang khong? |
| SEO optimization (blog) | 15% | 4/5 | Keyword, meta, links dung chua? |
| Grammar & spelling | 10% | 5/5 | Khong loi chinh ta, ngu phap? |
| Visual/format quality | 10% | 4/5 | Format dep, mobile-friendly? |
| Strategic alignment | 10% | 4/5 | Phu hop voi content pillar va funnel stage? |

**Minimum composite score: 4.0/5.0**
**BAT BUOC: Accuracy & grammar phai 5/5 (hard gate)**

### Review Flow

```
AI Draft → AI Self-Check (auto) → Score >= 4.0?
                                        │
                                   Yes ─┤── No
                                   │         │
                              Human Review  AI Revise
                                   │         │
                              Approved?  ────┘
                             │          │
                            Yes        No
                             │          │
                        PUBLISH    AI Revise
                                        │
                                   (max 2 revision rounds)
                                        │
                                   Still fail? → Escalate Founder
```

### Review SLA

| Content Type | AI Self-Check | Human Review | Max Revisions |
|-------------|---------------|-------------|---------------|
| Blog post | Auto | Founder: 24h | 2 rounds |
| LinkedIn post (routine) | Auto | AI self-review | 0 |
| LinkedIn post (important) | Auto | Founder: 4h | 1 round |
| Facebook post | Auto | AI self-review | 0 |
| Email campaign | Auto | Founder: 12h | 2 rounds |
| Newsletter | Auto | Founder: 24h | 2 rounds |

---

## Gate 2: Pre-Send Quality Gate (Email)

**Ap dung cho:** Tat ca email campaigns va automation emails

### Email Pre-Send Checklist

- [ ] **Subject line** — Tested (3 variants), <50 chars, no spam triggers
- [ ] **Preview text** — Compelling, 30-50 chars
- [ ] **Personalization** — [First name] tags working
- [ ] **Links** — All links tested and working
- [ ] **Mobile preview** — Checked on mobile view
- [ ] **Segment** — Correct audience segment selected
- [ ] **Unsubscribe** — Unsubscribe link present and working
- [ ] **Send time** — Optimized per segment
- [ ] **Test email** — Sent to test address, verified
- [ ] **Compliance** — Physical address in footer, sender name clear

### Spam Score Check

| Element | Rule | Fail Action |
|---------|------|-------------|
| Spam words | No "FREE", "GUARANTEED", ALL CAPS | Rewrite |
| Image-text ratio | Text >= 60% | Add more text |
| Links | No URL shorteners, <3 links | Fix links |
| Sender reputation | Check domain reputation | Fix if <90 |

---

## Gate 3: Social Media Quality Gate

**Ap dung cho:** Tat ca social media posts

### Auto-Approved (No Human Review)
- Routine engagement replies (thank you, acknowledgment)
- Response to positive comments
- Repost/share of industry content (with comment)
- Scheduled posts already approved in content calendar

### Requires Human Review
- New original posts (not in approved calendar)
- Responses to negative comments/feedback
- DMs from prospects requiring personal touch
- Any content mentioning clients or partners
- Crisis or sensitive topic responses

### Social Post Quality Matrix

| Score | Criteria | Action |
|-------|----------|--------|
| 4-5 | Hook + value + CTA + hashtag + correct format | Publish |
| 3 | Missing 1 element | Revise |
| 1-2 | Missing 2+ elements | Rewrite |
| 0 | Brand policy violation | Block + report |

---

## Gate 4: Campaign Performance Gate

**Ap dung cho:** Sau moi campaign (email, social, content)

### Post-Campaign Review (48h sau khi ket thuc)

| Metric | Threshold | Action if Below |
|--------|-----------|-----------------|
| Email open rate | >=25% | Analyze subject lines, send time |
| Email click rate | >=5% | Analyze CTA, content, segment |
| Social engagement rate | >=3% | Analyze content type, timing |
| Bounce rate (email) | <3% | Clean list, verify addresses |
| Unsubscribe rate | <1% | Review content relevance |
| Lead attribution | >=5 leads/campaign | Review CTA, targeting |

### Campaign Scorecard

```
Campaign: [Name]
Period: [Start date] — [End date]

KPI          Target    Actual    Status
─────────────────────────────────────────
Open rate    >=25%     [X]%      [Pass/Fail]
Click rate   >=5%      [X]%      [Pass/Fail]
Leads        >=5       [X]       [Pass/Fail]
Unsub rate   <1%       [X]%      [Pass/Fail]

Overall: [Pass/Fail]
Lessons: [Key learnings]
Next action: [Optimization plan]
```

---

## Gate 5: Monthly Quality Audit

**Ap dung cho:** Toan bo marketing output trong thang

### Audit Checklist

- [ ] **Content audit** — Review 10 random pieces, score >= 4.0 avg
- [ ] **Brand consistency** — Check 5 pieces against Brand Policy
- [ ] **SOP compliance** — Check all workflows followed state machine
- [ ] **Archive completeness** — All outputs archived correctly
- [ ] **KPI achievement** — All marketing KPIs tracked and reported
- [ ] **Lesson capture** — Top 3 lessons documented in knowledge base
- [ ] **Revision rate** — Average revision rounds <= 2 per piece

### Audit Output

```
Monthly Marketing Quality Audit — [Month]

Samples reviewed: [X]
Average quality score: [X]/5.0
SOP compliance rate: [X]%
Brand consistency: [Pass/Fail]
Archive completeness: [Pass/Fail]
Key issues: [list]
Improvement actions: [list]
```

---

## Quality Gate Enforcement Rules

### Hard Rules (BAT BUOC — KHONG DUOC BO QUA)

1. **Blog posts:** LUON phai qua Founder review truoc khi publish
2. **Email campaigns:** LUON phai qua Founder review truoc khi gui
3. **Client-facing content:** LUON phai qua accuracy check (5/5)
4. **Brand policy:** KHONG DUOC vi pham brand policy du bat cu ly do gi
5. **Grammar/spelling:** KHONG DUOC publish voi loi chinh ta/ngu phap

### Soft Rules (Best practice — co the linh hoat)

1. Social replies routine — AI self-review OK
2. Internal content drafts — skip human review OK
3. Archive timing — linh hoat trong 7 ngay
4. A/B test sample size — linh hoat neu list nho

---

*KWSR Layer: R (Rules) | Marketing Quality Gates v1.0 | Marketing Function*
