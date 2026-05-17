# SOP-GROW-001: Tạo nội dung marketing

**Version:** 1.0
**Ngày tạo:** 2026-05-07
**Owner:** Marketing AI
**Approved by:** Founder

---

## 1. Mục đích

Quy chuẩn hóa quy trình tạo nội dung marketing (blog posts, social media posts, email content, video scripts) đảm bảo chất lượng, nhất quán brand voice, và tối ưu SEO. Đạt target ≥20 content pieces/tháng.

---

## 2. Phạm vi

### In-scope
- Blog posts (800-2000 words)
- Social media posts (LinkedIn, Facebook)
- Email content (newsletters, sequences)
- Video scripts
- Content calendars
- Infographics (text content)

### Out-of-scope
- Paid ad copy (xem SOP riêng)
- PR content
- Legal documents

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
- Content calendar (từ tháng trước)
- Keyword research report (từ SEO AI)
- Brand Policy (SOP-GROW-007)
- Product/service updates
- Market trends & competitor content
- Performance data từ tháng trước (Analytics AI)

### Process
1. Content planning & brief creation
2. Draft content (AI generation)
3. SEO optimization
4. Human review
5. Revision
6. Final approval
7. Publication scheduling

### Output
- Blog posts published
- Social media posts scheduled
- Email content ready
- Content calendar updated
- Performance baseline recorded

---

## 5. Quy trình chi tiết (Step by Step)

### State Machine Flow:
```
[INPUT] → [PROCESSING/ai-draft] → [PROCESSING/human-review] → [OUTPUT] → [ARCHIVE]
```

### Step 1: Content Planning (INPUT)
**Owner:** Marketing AI
**Thời gian:** 30 min/bài
**Trigger:** Weekly planning session (Monday)

1.1. Review content calendar tuần tới
1.2. Pull keyword opportunities từ SEO AI report
1.3. Xác định content types cần tạo:
   - 4 blog posts/tháng
   - 12 social posts/tháng
   - 2 newsletters/tháng
   - 2 video scripts/tháng
1.4. Tạo content brief cho mỗi piece:
   ```
   Content Brief Template:
   - Title/working title
   - Target keyword(s)
   - Content type
   - Target audience
   - Key message
   - CTA
   - Publish date
   - Channel
   ```
1.5. Lưu brief vào `input/` folder

### Step 2: Draft Content (PROCESSING/ai-draft)
**Owner:** Marketing AI
**Thời gian:** 30-60 min/bài

2.1. Tạo draft theo content brief
2.2. Áp dụng brand voice từ Brand Policy:
   - Professional nhưng approachable
   - Data-driven, actionable
   - Vietnamese为主, English technical terms
2.3. Structure cho blog posts:
   - Hook opening (1-2 paragraphs)
   - Problem statement
   - Solution/methodology
   - Practical examples
   - Key takeaways
   - CTA
2.4. Apply SEO best practices:
   - Target keyword trong title, H1, first paragraph
   - Internal links (≥2)
   - Meta description (155 chars)
   - Alt text cho images
2.5. Lưu draft vào `processing/ai-draft/`

### Step 3: Human Review (PROCESSING/human-review)
**Owner:** Marketing AI (prepare) → Founder (review)
**Thời gian:** Founder: 15 min/bài
**SLA:** 24h từ lúc submit

3.1. Marketing AI prepare review package:
   - Draft content
   - Content brief (để verify alignment)
   - SEO checklist completed
   - Suggested publish time
3.2. Founder review:
   - Accuracy check
   - Brand voice alignment
   - Strategic messaging
   - Approve / Request changes / Reject
3.3. Move file sang `processing/human-review/` với review notes
3.4. Nếu approved → Step 5
3.5. Nếu changes needed → Step 4

### Step 4: Revision (PROCESSING/ai-draft)
**Owner:** Marketing AI
**Thời gian:** 15-30 min

4.1. Implement Founder's feedback
4.2. Re-check SEO optimization
4.3. Lưu revised draft vào `processing/ai-draft/`
4.4. Resubmit cho review → quay lại Step 3

### Step 5: Final Output (OUTPUT)
**Owner:** Marketing AI

5.1. Format content cho channel phù hợp:
   - Blog: Markdown → WordPress
   - LinkedIn: Format native post
   - Facebook: Format + image spec
   - Email: HTML template
5.2. Schedule publish time
5.3. Lưu final version vào `output/`
5.4. Notify Analytics AI để track performance

### Step 6: Archive (ARCHIVE)
**Owner:** Marketing AI
**Trigger:** End of month

6.1. Move published content từ `output/` sang `archive/`
6.2. Naming convention: `{type}_{topic-slug}_{YYYY-MM-DD}.md`

---

## 6. Template & Checklist

### Blog Post Checklist
- [ ] Title includes target keyword
- [ ] Meta description written (155 chars)
- [ ] H1, H2, H3 structure proper
- [ ] Opening hook compelling
- [ ] ≥800 words
- [ ] Internal links ≥2
- [ ] External authority links ≥1
- [ ] CTA included
- [ ] Image alt text written
- [ ] Brand voice consistent
- [ ] Fact-checked
- [ ] Grammar checked

### Social Post Checklist
- [ ] Hook trong 2 dòng đầu
- [ ] Value provided
- [ ] CTA clear
- [ ] Hashtags relevant (3-5)
- [ ] Character limit respected
- [ ] Visual suggested

---

## 7. KPIs & Metrics

| KPI | Target | Measurement |
|-----|--------|-------------|
| Content pieces/tháng | ≥20 | Count |
| Blog posts/tháng | ≥4 | Count |
| Social posts/tháng | ≥12 | Count |
| Content quality score | ≥4/5 | Human review |
| SEO score per piece | ≥80 | SEO tool |
| Publish on-time rate | ≥90% | Schedule |
| Revision rounds avg | ≤2 | Tracking |

---

## 8. AI Integration Points

| Step | AI Worker | Task |
|------|-----------|------|
| Step 1 | Marketing AI | Content brief creation |
| Step 2 | Marketing AI | Draft generation |
| Step 2.4 | SEO AI | Keyword optimization review |
| Step 5 | Marketing AI | Formatting & scheduling |
| Step 5.4 | Analytics AI | Performance tracking setup |

---

## 9. Upstream/Downstream SOPs

### Upstream (Input sources)
- **SOP-GROW-007** Chính sách thương hiệu → Brand voice guidelines
- **SEO AI** Keyword research reports
- **Analytics AI** Performance data

### Downstream (Output consumers)
- **SOP-GROW-002** Quản lý social media → Social posts
- **SOP-GROW-003** Email marketing → Email content
- **SOP-GROW-006** Marketing reporting → Content metrics

---

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Ban hành lần đầu | Marketing AI |

---

*SOP Owner: Marketing AI | Approved by: Founder*
