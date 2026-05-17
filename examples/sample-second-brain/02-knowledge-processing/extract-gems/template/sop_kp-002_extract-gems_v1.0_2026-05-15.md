# SOP: Extract Gems

**Mã SOP:** SOP-KP-002
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Processing Department
**Department:** [Knowledge Processing](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Analyzed atomic notes, especially those tagged `#potential-gem` |
| **CONTROL** | Gem quality criteria: rare + valuable + applicable across domains |
| **OUTPUT** | Knowledge gems — distilled insights với high reuse potential |
| **MECHANISM** | Claude AI (gem identification), Gem template |

### Upstream / Downstream
- **Input từ:** [SOP-KP-001 Analyze Content](../../analyze-content/template/sop_kp-001_analyze-content_v1.0_2026-05-15.md)
- **Output tới:** [SOP-KP-003 Synthesize Knowledge](../../synthesize-knowledge/template/sop_kp-003_synthesize-knowledge_v1.0_2026-05-15.md) và [SOP-KC-001 Organize Vault](../../../03-knowledge-curation/organize-vault/template/sop_kc-001_organize-vault_v1.0_2026-05-15.md)

---

## 1. Tổng Quan

Từ pool atomic notes đã analyzed, tìm ra những knowledge gems — insights có giá trị đặc biệt cao, có thể áp dụng vào nhiều ngữ cảnh, và rare (không phải common knowledge).

---

## 2. Gem Quality Criteria

Gem phải đạt CẢ 3 tiêu chí:

| Tiêu chí | Câu hỏi | PASS nếu |
|---------|---------|---------|
| **Rarity** | Insight này có ai nói chưa? | Unique hoặc rare framing |
| **Value** | Insight này có impact gì? | Thay đổi cách nhìn hoặc hành động |
| **Portability** | Áp dụng được vào domain khác không? | Cross-domain applicable |

---

## 2. Quy Trình

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Collect `#potential-gem` notes | Batch weekly | Candidate list |
| 2 | Apply gem criteria (3 tests) | Evaluate each | PASS/FAIL per note |
| 3 | Write gem note theo template | 1 gem = 1 note | Gem notes |
| 4 | Tag: `#gem`, domain, applications | Rich tagging | Tagged gems |
| 5 | Add to Gems Index MOC | Link gem vào index | Index updated |
| 6 | Flag for synthesis if >3 gems in same domain | `#synthesis-ready` | Flagged cluster |

> **[AI AUGMENT]** Claude Prompt: "Evaluate if this insight qualifies as a knowledge gem based on: Rarity, Value, Portability. Output: score (1-5) per criterion, final PASS/FAIL, reasoning."

---

## 3. Gem Note Template

```markdown
# GEM: [Insight stated as a principle]

**Domain:** [primary domain]
**Rarity:** ★★★★☆
**Value:** ★★★★★
**Portability:** ★★★☆☆

## The Insight
[2-3 clear sentences explaining the gem]

## Why It Matters
[Why this is valuable — what changes when you know this]

## Applications
- [Domain 1]: [How to apply]
- [Domain 2]: [How to apply]
- [Domain 3]: [How to apply]

## Evidence
- [Source/example 1]
- [Source/example 2]

## Related Gems
- [[gem-related-1]]
- [[gem-related-2]]

Source: [original note link]
Date extracted: [YYYY-MM-DD]
Tags: #gem #[domain] #[application-area]
```

---

## 4. Checklist
- [ ] Gem đạt cả 3 criteria (Rarity + Value + Portability)?
- [ ] Có ít nhất 2 application examples?
- [ ] Link vào Gems Index?

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
