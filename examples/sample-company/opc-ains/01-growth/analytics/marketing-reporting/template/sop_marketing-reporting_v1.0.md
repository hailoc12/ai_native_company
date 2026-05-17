# SOP-GROW-006: Báo cáo hiệu suất marketing

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Analytics AI
**Approved by:** Founder

---

## 1. Mục đích

Thu thập, phân tích, và báo cáo dữ liệu hiệu suất marketing & sales một cách có hệ thống. Cung cấp actionable insights cho Founder để ra quyết định dựa trên data. Đảm bảo 100% KPIs được track và report đúng schedule.

---

## 2. Phạm vi

### In-scope
- Daily marketing digest
- Weekly performance report
- Monthly comprehensive report
- Ad-hoc analysis
- Dashboard maintenance
- KPI tracking & alerting

### Out-of-scope
- Financial reporting (Accounting department)
- Product analytics
- Competitive intelligence (ngoài scope cơ bản)

---

## 3. Vai trò (RACI)

| Vai trò | Responsible | Accountable | Consulted | Informed |
|---------|:-----------:|:-----------:|:---------:|:--------:|
| Analytics AI | ✅ | | | |
| Marketing AI | | | ✅ | |
| Sales AI | | | ✅ | |
| Founder | | ✅ | | |

---

## 4. IPO Analysis

### Input
- Google Analytics data (traffic, behavior)
- CRM data (pipeline, deals, activities)
- Social media analytics (engagement, reach)
- Email platform data (opens, clicks, conversions)
- SEO tool data (rankings, backlinks)
- Ad platform data (spend, results)
- Previous period reports (cho trend comparison)

### Process
1. Data collection from all sources
2. Data cleaning & normalization
3. Analysis & insight generation
4. Report creation
5. Human review
6. Distribution

### Output
- Daily digest (Slack/Email)
- Weekly performance report
- Monthly comprehensive report
- Alerts & anomaly notifications
- Dashboard updates

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: Data Collection (INPUT)
**Owner:** Analytics AI
**Thời gian:** 30 min/day

1.1. Daily data pull từ tất cả sources:
   - Google Analytics → Traffic metrics
   - HubSpot CRM → Pipeline & deal data
   - LinkedIn/Facebook → Social metrics
   - Mailchimp → Email campaign data
   - Ahrefs → SEO metrics
1.2. Data validation:
   - Check for anomalies (spikes, drops >30%)
   - Verify data freshness (last updated <24h)
   - Cross-reference metrics giữa sources
1.3. Normalize data format
1.4. Lưu raw data vào `input/`

### Step 2: Analysis (PROCESSING/ai-draft)
**Owner:** Analytics AI
**Thời gian:** Varies by report type

2.1. **Daily analysis (15 min):**
   - Key metrics vs. daily target
   - Anomaly detection
   - Content performance snapshot

2.2. **Weekly analysis (45 min):**
   - KPIs vs. weekly targets
   - Funnel metrics (lead → MQL → SQL → Deal)
   - Content performance ranking
   - Channel comparison
   - Week-over-week trends

2.3. **Monthly analysis (90 min):**
   - Full KPI review vs. monthly targets
   - Month-over-month trends
   - ROI analysis by channel
   - Content effectiveness
   - Sales pipeline health
   - Forecasting next month

2.4. Generate insights & recommendations
2.5. Lưu analysis vào `processing/ai-draft/`

### Step 3: Report Creation (PROCESSING/ai-draft)
**Owner:** Analytics AI

3.1. **Daily Digest format:**
   ```
   AINS Daily Digest — [Date]
   ==========================
   Leads today: [X] (target: [Y])
   Content published: [X]
   Social engagement: [X]%
   Pipeline updates: [summary]
   Action items: [list]
   ```

3.2. **Weekly Report sections:**
   - Executive Summary
   - KPI Dashboard (vs. targets)
   - Marketing Performance
   - Sales Pipeline Update
   - Content Performance
   - Recommendations

3.3. **Monthly Report sections:**
   - Executive Summary
   - KPI Scorecard (full)
   - Marketing Channel Analysis
   - Sales Funnel Analysis
   - Content ROI
   - SEO Performance
   - Budget vs. Actual
   - Forecasting
   - Action Plan for Next Month

3.4. Lưu report draft vào `processing/ai-draft/`

### Step 4: Human Review (PROCESSING/human-review)
**Owner:** Founder
**SLA:** Daily: 5 min, Weekly: 15 min, Monthly: 30 min

4.1. Review report:
   - Verify accuracy
   - Confirm action items
   - Add strategic context
   - Approve distribution
4.2. Move approved report vào `processing/human-review/`

### Step 5: Distribution (OUTPUT)
**Owner:** Analytics AI

5.1. Send report qua đúng channel:
   - Daily → Slack #growth-daily
   - Weekly → Email + Slack
   - Monthly → Email + save to Drive
5.2. Update dashboard
5.3. Trigger alerts nếu KPIs off-target
5.4. Lưu final reports vào `output/`

### Step 6: Archive (ARCHIVE)
**Owner:** Analytics AI
**Trigger:** End of month

6.1. Archive all reports
6.2. Maintain 12-month rolling archive
6.3. Yearly summary compilation

---

## 6. Template & Checklist

### Report Quality Checklist
- [ ] All KPIs included
- [ ] Data sources verified
- [ ] Trends explained (not just numbers)
- [ ] Actionable recommendations included
- [ ] Comparison to previous period
- [ ] Forecast for next period
- [ ] Visual elements (charts where applicable)
- [ ] Executive summary at top

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| Report delivery on-time | 100% | Schedule |
| Data accuracy | ≥99% | Spot check |
| Insight implementation rate | ≥60% | Tracking |
| Report completion within SLA | 100% | Time check |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1 | Analytics AI | Data pull từ all sources |
| Step 2 | Analytics AI | Analysis & insights |
| Step 3 | Analytics AI | Report generation |
| All | Marketing AI | Provides content data |
| All | Sales AI | Provides pipeline data |

---

## 9. Upstream/Downstream SOPs

### Upstream
- **SOP-GROW-001-005** → Marketing & sales data
- **SOP-GROW-007-010** → Brand, sales, client data
- External tools → Raw metrics data

### Downstream
- **Founder** → Strategic decisions based on reports
- **All AI Workers** → Performance improvement based on insights
- **SOP reviews** → Data-driven SOP updates

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Analytics AI |

---

*SOP Owner: Analytics AI | Approved by: Founder*
