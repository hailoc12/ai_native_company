# SOP-GROW-002: Quản lý social media

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Marketing AI
**Approved by:** Founder

---

## 1. Mục đích

Quy chuẩn hóa việc quản lý các kênh social media (LinkedIn, Facebook) của AINS, đảm bảo consistent brand presence, tối ưu engagement, và chuyển đổi social audience thành leads.

---

## 2. Phạm vi

### In-scope
- LinkedIn (Company page + Founder personal)
- Facebook (Company page)
- Content scheduling & publishing
- Community engagement (comments, DMs)
- Social analytics & reporting

### Out-of-scope
- Paid social advertising (quản lý riêng)
- Instagram, Twitter (chưa active)
- Social media crisis management (Founder trực tiếp xử lý)

---

## 3. Vai trò (RACI)

| Vai trò | Responsible | Accountable | Consulted | Informed |
|---------|:-----------:|:-----------:|:---------:|:--------:|
| Marketing AI | ✅ | | | |
| SEO AI | | | ✅ | |
| Analytics AI | | | | ✅ |
| Founder | | ✅ | | |

---

## 4. IPO Analysis

### Input
- Approved social posts (từ SOP-GROW-001)
- Content calendar
- Brand Policy (SOP-GROW-007)
- Social analytics data từ tuần trước
- Trending topics & industry news

### Process
1. Content scheduling
2. Daily monitoring & engagement
3. Community management
4. Analytics tracking
5. Weekly optimization

### Output
- Posts published đúng lịch
- Engagement responses (comments, DMs)
- Weekly social analytics report
- Optimized posting schedule
- Lead handoff cho Sales AI

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: Content Scheduling (INPUT)
**Owner:** Marketing AI
**Thời gian:** 30 min/ngày
**Trigger:** Daily 08:00

1.1. Review content calendar cho ngày
1.2. Pull approved posts từ `create-content/output/`
1.3. Optimize posting time theo historical data:
   - LinkedIn: 08:00-09:00 hoặc 17:00-18:00 (giờ VN)
   - Facebook: 12:00-13:00 hoặc 19:00-20:00
1.4. Schedule posts qua scheduling tool
1.5. Lưu schedule vào `input/`

### Step 2: Daily Monitoring & Engagement (PROCESSING/ai-draft)
**Owner:** Marketing AI
**Thời gian:** 3 lần/ngày (sáng, trưa, tối)
**SLA Response:** Comments <4h, DMs <2h

2.1. Check notifications trên tất cả platforms
2.2. Phân loại interactions:
   - **Positive comments:** Auto-respond (thank + thêm value)
   - **Questions:** Draft response, verify accuracy
   - **Negative feedback:** Flag, draft proposed response
   - **DMs from prospects:** Qualify → handoff Sales AI
   - **DMs from clients:** Forward client management
2.3. Draft responses cho items cần human review
2.4. Lưu draft responses vào `processing/ai-draft/`

### Step 3: Human Review (PROCESSING/human-review)
**Owner:** Founder
**Thời gian:** 15 min/ngày

3.1. Review flagged items:
   - Negative feedback responses
   - Sensitive topic responses
   - Prospect DMs cần personal touch
3.2. Approve / Edit / Reject
3.3. Move reviewed items vào `processing/human-review/`

### Step 4: Publish Responses (OUTPUT)
**Owner:** Marketing AI

4.1. Post approved responses
4.2. Track response metrics
4.3. Identify engagement opportunities ( trending topics)
4.4. Generate daily social summary
4.5. Lưu outputs vào `output/`

### Step 5: Weekly Optimization (ARCHIVE)
**Owner:** Marketing AI
**Trigger:** Friday

5.1. Compile weekly social analytics
5.2. Identify top-performing content types
5.3. Adjust posting schedule nếu cần
5.4. Archive tuần content vào `archive/`
5.5. Handoff data cho Analytics AI (SOP-GROW-006)

---

## 6. Template & Checklist

### Daily Social Media Checklist
- [ ] Check all platform notifications (3x/day)
- [ ] Respond to all comments within SLA
- [ ] Respond to all DMs within SLA
- [ ] Schedule tomorrow's posts
- [ ] Monitor brand mentions
- [ ] Log engagement metrics
- [ ] Flag any negative sentiment

### Post Format Templates

**LinkedIn Post:**
```
[Hook - 1-2 dòng gây chú ý]

[Value content - 3-5 key points]

[CTA - question hoặc call-to-action]

[Hashtags: 3-5 relevant]
```

**Facebook Post:**
```
[Attention-grabbing opening]

[Value proposition]

[CTA + Link]

[Hashtags: 3-5 relevant]
```

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| Posts published/week | ≥3 | Platform count |
| Engagement rate | ≥3% | (Likes+Comments+Shares)/Impressions |
| Response time | <4h comments, <2h DMs | Time tracking |
| Follower growth | +50/tháng | Platform analytics |
| LinkedIn SSI score | ≥70 | LinkedIn |
| Social-sourced leads | ≥10/tháng | CRM attribution |
| Negative sentiment rate | <5% | Social listening |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1 | Marketing AI | Scheduling & optimization |
| Step 2 | Marketing AI | Engagement monitoring |
| Step 2.4 | Sales AI | Prospect DM handoff |
| Step 5 | Analytics AI | Data collection & reporting |

---

## 9. Upstream/Downstream SOPs

### Upstream
- **SOP-GROW-001** Tạo nội dung marketing → Approved social posts
- **SOP-GROW-007** Chính sách thương hiệu → Brand guidelines

### Downstream
- **SOP-GROW-004** Lead generation → Social leads
- **SOP-GROW-006** Marketing reporting → Social metrics
- **SOP-GROW-001** Content feedback loop → Performance insights

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Marketing AI |

---

*SOP Owner: Marketing AI | Approved by: Founder*
