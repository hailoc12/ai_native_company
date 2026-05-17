# SOP: Analyze Content

**Mã SOP:** SOP-KP-001
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Processing Department
**Department:** [Knowledge Processing](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Notes tagged `#needs-processing` in vault inbox từ SOP-KA-003 |
| **CONTROL** | Atomic note standard, Progressive Summarization level, Analysis depth guide |
| **OUTPUT** | Atomic notes với: summary, key concepts, potential links, initial questions |
| **MECHANISM** | Claude AI (analysis), Obsidian/DEVONthink (editing), Analysis template |

### Upstream / Downstream
- **Input từ:** [SOP-KA-003 Import to Vault](../../../01-knowledge-acquisition/import-to-vault/template/sop_ka-003_import-to-vault_v1.0_2026-05-15.md)
- **Output tới:** [SOP-KP-002 Extract Gems](../../extract-gems/template/sop_kp-002_extract-gems_v1.0_2026-05-15.md)

---

## 1. Tổng Quan

Phân tích sâu content của các notes mới import, tạo atomic notes với đầy đủ context, concepts và questions — chuẩn bị cho bước extract gems.

---

## 2. Quy Trình

### 2.1 Analysis Framework

Mỗi note được phân tích theo 5 góc:

| Góc | Câu hỏi |
|-----|---------|
| **Core Idea** | Ý tưởng chính là gì? (1-2 câu) |
| **Evidence** | Bằng chứng/dẫn chứng nào hỗ trợ? |
| **Assumptions** | Giả định ẩn nào trong content này? |
| **Implications** | Nếu đúng → điều gì thay đổi? |
| **Connections** | Liên kết với gì trong vault? |

### 2.2 Processing Steps

| # | Hành động | Tool | Output |
|---|----------|------|--------|
| 1 | Open `#needs-processing` note | DEVONthink | Raw note open |
| 2 | Run analysis với 5-angle framework | Claude AI | Analysis draft |
| 3 | Write atomic note(s) từ analysis | Obsidian | 1-3 atomic notes |
| 4 | Tag: topic, domain, content-type | Obsidian | Tagged notes |
| 5 | Note initial potential gem candidates | Flag với `#potential-gem` | Flagged notes |
| 6 | Mark source note as `#analyzed` | DEVONthink | Status updated |

> **[AI AUGMENT]** Claude Prompt: "Analyze this note using 5 angles: Core Idea, Evidence, Assumptions, Implications, Connections. Output as structured markdown."

---

## 3. Atomic Note Standard

```markdown
# [Descriptive title — the idea itself]

[1-2 paragraph explanation, self-contained]

## Evidence
- [supporting fact/quote/data]

## Implications
- [what changes if this is true]

## Questions
- [open questions this raises]

## Links
- [[related-note-1]]
- [[related-note-2]]

Source: [source note link]
Tags: #[domain] #[topic] #[content-type]
Date: [YYYY-MM-DD]
```

---

## 4. Checklist
- [ ] Mỗi raw note → ít nhất 1 atomic note?
- [ ] Atomic notes self-contained (không cần context từ source)?
- [ ] Source link được preserve?
- [ ] Potential gems flagged?

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
