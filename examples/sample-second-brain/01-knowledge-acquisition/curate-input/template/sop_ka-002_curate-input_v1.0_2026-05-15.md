# SOP: Curate Input

**Mã SOP:** SOP-KA-002
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Acquisition Department
**Department:** [Knowledge Acquisition](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Fleeting notes in inbox (raw, unfiltered) từ SOP-KA-001 |
| **CONTROL** | Quality rubric: Relevance score (1-5), Credibility score (1-5), Novelty score (1-5) |
| **OUTPUT** | Curated notes (PASS → move to import queue) hoặc Rejected (→ archive/delete) |
| **MECHANISM** | Quality scoring template, Claude AI for relevance assessment |

### Upstream / Downstream
- **Input từ:** [SOP-KA-001 Capture Source](../../capture-source/template/sop_ka-001_capture-source_v1.0_2026-05-15.md)
- **Output tới:** [SOP-KA-003 Import to Vault](../../import-to-vault/template/sop_ka-003_import-to-vault_v1.0_2026-05-15.md)

---

## 1. Tổng Quan

### 1.1 Mục Đích
Lọc fleeting notes trong inbox theo tiêu chuẩn chất lượng, quyết định PASS (xử lý tiếp) hoặc REJECT (loại bỏ), đảm bảo chỉ có signal-rich content vào vault.

### 1.2 Phạm Vi
- **Áp dụng cho:** Source Curator, Head of KA
- **Không áp dụng cho:** Processing, tagging (thuộc SOP-KP và SOP-KC)

---

## 2. Quy Trình

### 2.1 Scoring (Per Note)

Đánh giá mỗi fleeting note theo 3 tiêu chí (thang 1-5):

| Tiêu chí | 1 | 3 | 5 |
|---------|---|---|---|
| **Relevance** | Không liên quan gì đến goals | Có liên quan nhưng peripheral | Directly aligned với learning goals |
| **Credibility** | Unknown/unreliable source | Known source, ok | Expert/peer-reviewed/firsthand |
| **Novelty** | Đã biết rồi | Biết nhưng có góc nhìn mới | Hoàn toàn mới, surprising |

**Score = Relevance + Credibility + Novelty (max 15)**

| Tổng điểm | Quyết định |
|-----------|-----------|
| ≥10 | PASS → import queue |
| 7-9 | MAYBE → human review |
| <7 | REJECT → archive |

### 2.2 Processing Steps

| # | Hành động | Tool | Output |
|---|----------|------|--------|
| 1 | Open inbox, sort by date (oldest first) | DEVONthink | Sorted inbox |
| 2 | Score each note (1-2 min/note) | Scoring template | Score per note |
| 3 | Tag PASS notes với `#import-ready` | DEVONthink | Tagged notes |
| 4 | Archive REJECT notes với `#rejected` + reason | DEVONthink | Archived notes |
| 5 | Flag MAYBE notes với `#needs-review` | DEVONthink | Flagged notes |

> **[AI AUGMENT]** Claude có thể score toàn bộ batch notes trong 1 prompt — tiết kiệm 80% thời gian manual scoring.

---

## 3. Checklist

### Quality Gate
- [ ] Signal-to-noise ratio ≥70% (PASS notes / total notes)
- [ ] Không có note >48h chưa được curate
- [ ] Mỗi REJECT có lý do được ghi lại

---

## 4. Liên kết SOP
- **Upstream:** [SOP-KA-001](../../capture-source/template/sop_ka-001_capture-source_v1.0_2026-05-15.md)
- **Downstream:** [SOP-KA-003](../../import-to-vault/template/sop_ka-003_import-to-vault_v1.0_2026-05-15.md)

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
