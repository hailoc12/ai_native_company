# SOP-GROW-005: Quản lý CRM

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Sales AI
**Approved by:** Founder

---

## 1. Mục đích

Duy trì hệ thống CRM (HubSpot) sạch, cập nhật, và đầy đủ thông tin. Đảm bảo mọi interaction với leads/prospects/clients được log chính xác, pipeline được track real-time, và data sẵn sàng cho reporting.

---

## 2. Phạm vi

### In-scope
- CRM data entry & maintenance
- Pipeline stage management
- Contact & company records
- Activity logging (calls, emails, meetings)
- Data hygiene (dedup, enrichment)
- Pipeline reporting

### Out-of-scope
- CRM system administration (billing, integration setup)
- Data migration
- Custom development

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
- Lead data (từ SOP-GROW-004)
- Sales activity data (calls, emails, meetings)
- Client interaction data
- Email & social engagement data

### Process
1. Data entry & verification
2. Pipeline stage updates
3. Activity logging
4. Data hygiene & dedup
5. Snapshot reporting

### Output
- Clean, updated CRM
- Pipeline snapshots
- Activity reports
- Data exports cho Analytics AI

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: Data Entry (INPUT)
**Owner:** Sales AI
**Thời gian:** Liên tục (real-time khi có new data)

1.1. Nhận data từ nguồn:
   - New leads từ SOP-GROW-004
   - New contacts từ website forms
   - Import contacts từ events/networking
1.2. Kiểm tra duplicate trước khi tạo record:
   - Search by email
   - Search by company domain
   - Merge nếu duplicate found
1.3. Tạo/Update record với đầy đủ fields:
   ```
   Required Fields:
   - Full name
   - Email
   - Company
   - Title
   - Phone (nếu có)
   - Lead source
   - Lead score
   - Pipeline stage
   - Lifecycle stage
   - Last activity date
   ```
1.4. Lưu raw data vào `input/`

### Step 2: Pipeline Management (PROCESSING/ai-draft)
**Owner:** Sales AI
**Thời gian:** 30 min/ngày

2.1. Pipeline stages:
   ```
   1. New Lead (mới vào hệ thống)
   2. Contacted (đã first touch)
   3. Qualified (SQL confirmed)
   4. Proposal Sent (đã gửi proposal)
   5. Negotiation (đang thương lượng)
   6. Closed Won ✓
   7. Closed Lost ✗
   ```

2.2. Daily pipeline review:
   - Check deals stalled >7 days → flag
   - Check deals không có activity >14 days → flag
   - Verify stage accuracy
   - Update estimated close dates
2.3. Lưu pipeline analysis vào `processing/ai-draft/`

### Step 3: Activity Logging (PROCESSING/ai-draft)
**Owner:** Sales AI
**Thời gian:** Real-time

3.1. Log mọi activity:
   - Emails sent/received (auto-log via integration)
   - Calls (log manually nếu không auto)
   - Meetings (log với notes)
   - Social interactions
   - Content engagement events
3.2. Format activity notes:
   ```
   [Date] | [Type] | [Summary] | [Next Action]
   2026-05-07 | Email | Sent intro email | Follow up 2026-05-09
   ```
3.3. Flag important activities cho Founder review

### Step 4: Data Quality Review (PROCESSING/human-review)
**Owner:** Sales AI (audit) → Founder (sample check)
**Thời gian:** Weekly 30 min

4.1. Weekly data hygiene:
   - Check for incomplete records
   - Verify email validity
   - Remove obvious duplicates
   - Archive closed-lost deals >90 days
4.2. Founder spot-check:
   - Verify 5 random records accuracy
   - Confirm pipeline stage accuracy
   - Review flagged items
4.3. Lưu audit report vào `processing/human-review/`

### Step 5: Reporting (OUTPUT)
**Owner:** Sales AI
**Thời gian:** Daily 15 min

5.1. Generate daily pipeline snapshot
5.2. Generate weekly CRM health report:
   - Total contacts by lifecycle stage
   - Pipeline value by stage
   - Activity volume
   - Data completeness score
5.3. Export data cho Analytics AI (SOP-GROW-006)
5.4. Lưu reports vào `output/`

### Step 6: Monthly Archive (ARCHIVE)
**Owner:** Sales AI

6.1. Archive closed deals
6.2. Archive old activity logs
6.3. Lưu monthly CRM snapshot vào `archive/`

---

## 6. Template & Checklist

### CRM Health Checklist (Weekly)
- [ ] Zero duplicate contacts
- [ ] All leads have lead score
- [ ] Pipeline stages accurate
- [ ] No deals without activity >14 days
- [ ] All required fields filled ≥90%
- [ ] Last activity dates current
- [ ] Closed deals properly marked

### Pipeline Snapshot Template
```
PIPELINE SNAPSHOT — [Date]
========================================
Stage          | Count | Value    | Avg Days
New Lead       |   12  | $12,000  |   2
Contacted      |    8  | $16,000  |   5
Qualified      |    5  | $15,000  |   8
Proposal Sent  |    3  | $12,000  |  12
Negotiation    |    2  | $8,000   |  18
----------------------------------------
TOTAL          |   30  | $63,000  |   9 avg
```

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| Data completeness | ≥90% required fields | CRM audit |
| Duplicate rate | <2% | CRM check |
| Activity logging | 100% interactions | Spot check |
| Pipeline accuracy | ≥95% stages correct | Weekly review |
| CRM update latency | <4h from activity | Time check |
| Reports delivered on-time | 100% | Schedule |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1 | Sales AI | Data entry & dedup |
| Step 2 | Sales AI | Pipeline management |
| Step 5 | Analytics AI | Data export for reporting |
| All steps | Marketing AI | Activity data sync |

---

## 9. Upstream/Downstream SOPs

### Upstream
- **SOP-GROW-004** Lead generation → New lead data
- **SOP-GROW-002** Social media → Social interactions
- **SOP-GROW-003** Email marketing → Email engagement data

### Downstream
- **SOP-GROW-006** Marketing reporting → CRM data
- **SOP-GROW-008** Sales process → Pipeline for deals
- **SOP-GROW-010** Client management → Client records

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Sales AI |

---

*SOP Owner: Sales AI | Approved by: Founder*
