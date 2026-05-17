# SOP: Import to Vault

**Mã SOP:** SOP-KA-003
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Acquisition Department
**Department:** [Knowledge Acquisition](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Curated notes tagged `#import-ready` từ SOP-KA-002 |
| **CONTROL** | Vault taxonomy, naming convention, inbox folder rules của vault |
| **OUTPUT** | Notes properly filed in vault inbox folder, ready cho Knowledge Processing team |
| **MECHANISM** | DEVONthink, Obsidian, import script/shortcut |

### Upstream / Downstream
- **Input từ:** [SOP-KA-002 Curate Input](../../curate-input/template/sop_ka-002_curate-input_v1.0_2026-05-15.md)
- **Output tới:** [SOP-KP-001 Analyze Content](../../../02-knowledge-processing/analyze-content/template/sop_kp-001_analyze-content_v1.0_2026-05-15.md)

---

## 1. Tổng Quan

### 1.1 Mục Đích
Chuyển curated notes vào vault theo đúng taxonomy và naming convention, tạo structure sẵn sàng cho Knowledge Processing team xử lý tiếp.

---

## 2. Quy Trình

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Filter `#import-ready` notes | Lấy tất cả notes có tag này trong inbox | List cần import |
| 2 | Rename theo convention | Format: `[YYYY-MM-DD]-[topic]-[source-type].md` | Renamed files |
| 3 | Enrich metadata | Thêm: author, publication date, source type, initial topic tags | Enriched notes |
| 4 | Move to vault inbox | DEVONthink: drag to Inbox database group | Notes in vault inbox |
| 5 | Remove `#import-ready`, add `#needs-processing` | Signal cho KP team | Tagged for next step |
| 6 | Update daily acquisition log | +N notes imported, source breakdown | Log updated |

> **[AI WORKFORCE]** vibe-devonthink có thể automate toàn bộ step 2-5 với AppleScript workflow.

---

## 3. Naming Convention

```
[YYYY-MM-DD]-[topic-slug]-[source-type].md

source-type codes: web | book | podcast | video | conversation | experiment | paper

Examples:
  2026-05-15-atomic-habits-book.md
  2026-05-15-llm-scaling-laws-paper.md
  2026-05-15-startup-fundraising-podcast.md
```

---

## 4. Checklist
- [ ] Tất cả `#import-ready` notes đã được import?
- [ ] Naming convention đúng format?
- [ ] Tag `#needs-processing` đã được thêm?
- [ ] Daily log đã update?

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
