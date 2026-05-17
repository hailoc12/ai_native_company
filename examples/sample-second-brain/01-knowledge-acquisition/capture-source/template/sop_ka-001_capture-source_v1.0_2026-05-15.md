# SOP: Capture Source

**Mã SOP:** SOP-KA-001
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Acquisition Department
**Phê duyệt:** Head of Knowledge Acquisition
**Department:** [Knowledge Acquisition](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Web article URL, book highlight, podcast timestamp, video clip, conversation note, research paper, newsletter item |
| **CONTROL** | Source Quality Checklist (relevance, credibility, novelty), Learning Goals alignment filter |
| **OUTPUT** | Fleeting note in inbox với đủ metadata: source URL/ref, date, topic tags, relevance reason |
| **MECHANISM** | Readwise Reader, browser extension (DEVONthink clipper), Matter app, voice memo → transcript, capture template |

### Upstream / Downstream

- **Input từ:** External sources (internet, books, podcasts) / [Personal Development SOP-PD-001](../../../05-personal-development/set-learning-goals/template/sop_pd-001_set-learning-goals_v1.0_2026-05-15.md) (learning goals định hướng)
- **Output tới:** [SOP-KA-002 Curate Input](../../curate-input/template/sop_ka-002_curate-input_v1.0_2026-05-15.md)

---

## 1. Tổng Quan

### 1.1 Mục Đích
Thu thập thông tin từ mọi nguồn bên ngoài và lưu vào inbox dưới dạng fleeting notes có metadata đầy đủ, sẵn sàng cho bước curation tiếp theo.

### 1.2 Phạm Vi
- **Áp dụng cho:** Tất cả members trong Knowledge Acquisition team
- **Không áp dụng cho:** Processing, linking, synthesizing (thuộc SOP-KP-*)

### 1.3 Định Nghĩa & Thuật Ngữ
| Thuật ngữ | Định nghĩa |
|-----------|-----------|
| Fleeting Note | Ghi chú capture nhanh, chưa được process — tồn tại trong inbox tối đa 48h |
| Inbox | Folder/database nơi mọi captures landing — phải được cleared trong 48h |
| Source metadata | URL, title, author, date, source type (book/web/podcast/etc.) |
| Capture trigger | Bất kỳ moment nào bạn gặp thông tin có vẻ đáng giá |

---

## 2. Vai Trò & Trách Nhiệm

| Vai trò | Trách nhiệm |
|---------|------------|
| Capture Specialist | Thực hiện capture hàng ngày, đảm bảo metadata đầy đủ |
| Source Curator | Review sources mới, suggest thêm/bớt channels |
| Head of KA | Set capture priorities dựa trên learning goals |

### AI Roles
| AI Role | Skill | Trách nhiệm | Trigger |
|---------|-------|------------|---------|
| Capture Assistant | Claude (direct) | Suggest related sources, summarize long-form content | Khi content > 3000 words |

---

## 3. Quy Trình

### 3.0 Flow Tổng Quan

```
Gặp thông tin → Đánh giá sơ bộ (5s) → PASS/SKIP
     ↓ PASS
Capture vào tool (Readwise/DEVONthink clipper/voice)
     ↓
Thêm tối thiểu metadata: source, topic, why-captured
     ↓
Kiểm tra inbox không quá 20 items → nếu nhiều → curate ngay
     ↓
→ [SOP-KA-002 Curate Input]
```

### 3.1 Đánh Giá Sơ Bộ (5-Second Rule)

**Mục tiêu:** Quyết định capture hay skip trong 5 giây
**Thực hiện bởi:** Bất kỳ member nào gặp thông tin
**Thời gian:** <5 giây

| # | Câu hỏi | PASS nếu... |
|---|---------|------------|
| 1 | Thông tin này có liên quan đến learning goals tháng này? | YES |
| 2 | Thông tin này có điều mình chưa biết? | YES |
| 3 | Mình sẽ cần thông tin này trong 6 tháng tới? | YES |

> **Rule:** Nếu ít nhất 1 câu YES → Capture. Không waste time đọc kỹ ở bước này.

### 3.2 Thực Hiện Capture

**Mục tiêu:** Lưu thông tin vào inbox với metadata tối thiểu
**Thực hiện bởi:** Capture Specialist / bất kỳ member
**Thời gian:** 1-3 phút

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Chọn capture tool phù hợp | Web → DEVONthink clipper hoặc Readwise; Book → highlight app; Podcast → Matter; Voice → memo app | Tool được chọn |
| 2 | Capture content | Full page clip hoặc highlight đoạn quan trọng nhất | Raw capture trong tool |
| 3 | Thêm metadata bắt buộc | Source URL/ref, date, brief note về "why captured" (1 câu) | Annotated capture |
| 4 | Thêm topic tag sơ bộ | 1-3 tags: domain (AI, productivity, finance...) + project nếu có | Tagged capture |
| 5 | Move to inbox folder | Đảm bảo landing vào inbox, không thẳng vào vault | Item in inbox |

> **[AI ASSIST]** Claude có thể tóm tắt article dài (>3000 words) thành 3-5 bullet points chính để tiết kiệm thời gian đọc trong bước curate.

### 3.3 Kiểm Tra Inbox Health

**Thực hiện:** Cuối mỗi ngày làm việc
**Threshold:** Nếu inbox > 20 items → trigger ngay SOP-KA-002

---

## 4. Phân Nhánh & Xử Lý Đặc Biệt

### 4.1 Content quá dài (>5000 words)
**Điều kiện:** Article, paper, book chapter quá dài
**Xử lý:**
| # | Hành động |
|---|----------|
| 1 | Capture toàn bộ vào DEVONthink |
| 2 | Thêm tag: `#needs-deep-read` |
| 3 | Dùng Claude để tạo summary 500 words |
| 4 | Lưu summary vào inbox thay vì full content |

### 4.2 Source bằng tiếng nước ngoài
**Điều kiện:** Content không phải tiếng Việt hoặc tiếng Anh
**Xử lý:** Claude translate key passages → capture bản dịch + link gốc

### 4.3 Conversation / Meeting insight
**Điều kiện:** Insight từ conversation trực tiếp hoặc meeting
**Xử lý:** Voice memo ngay trong lúc → transcript → capture as fleeting note trong 2h

---

## 5. Checklist

### Trước khi capture
- [ ] Đã pass 5-second evaluation?
- [ ] Có capture tool sẵn sàng?

### Sau khi capture
- [ ] Source metadata đầy đủ (URL/ref, date)?
- [ ] Có "why captured" note (1 câu)?
- [ ] Có ít nhất 1 topic tag?
- [ ] Item nằm trong inbox (không phải thẳng vào vault)?

### Quality Gate
- [ ] Inbox count <20 items (nếu >20 → trigger SOP-KA-002 ngay)
- [ ] Không có capture nào >48h chưa được curate

---

## 6. Tài Nguyên & Tham Chiếu

| Tài nguyên | Vị trí | Mục đích |
|-----------|--------|----------|
| Capture Template | `_shared/templates/template_shared-004_capture-note.md` | Template cho fleeting note |
| Source Quality Checklist | `_rules/README.md` | Tiêu chí đánh giá source |
| Learning Goals | `05-personal-development/set-learning-goals/output/` | Định hướng capture priorities |

### Liên kết SOP
- **Upstream:** External sources (không có SOP)
- **Downstream:** [SOP-KA-002 Curate Input](../../curate-input/template/sop_ka-002_curate-input_v1.0_2026-05-15.md) ← nhận output
- **Parallel:** Không có

---

## 7. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
