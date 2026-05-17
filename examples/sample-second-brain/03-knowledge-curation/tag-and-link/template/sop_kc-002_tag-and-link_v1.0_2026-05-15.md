# SOP: Tag and Link

**Mã SOP:** SOP-KC-002
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Curation Department
**Department:** [Knowledge Curation](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Organized notes in vault (post SOP-KC-001) |
| **CONTROL** | Tag taxonomy (max 5 tags/note), Link density target (≥3 links/note) |
| **OUTPUT** | Richly tagged and linked notes — knowledge graph activated |
| **MECHANISM** | Obsidian (linking), DEVONthink (tagging), Claude AI (suggest links) |

### Upstream / Downstream
- **Input từ:** [SOP-KC-001 Organize Vault](../../organize-vault/template/sop_kc-001_organize-vault_v1.0_2026-05-15.md)
- **Output tới:** [SOP-KAPP-001 Apply to Project](../../../04-knowledge-application/apply-to-project/template/sop_kapp-001_apply-to-project_v1.0_2026-05-15.md)

---

## 1. Tag Taxonomy

```
Level 1 — Domain: #ai #productivity #finance #health #philosophy #science
Level 2 — Type:   #gem #synthesis #atomic #moc #source #template
Level 3 — Status: #vault/inbox #vault/projects #vault/resources #vault/archive
Level 4 — Project: #proj/[project-slug]
Level 5 — Quality: #needs-review #evergreen #draft
```

**Rule:** Max 5 tags per note. Always include: 1 domain + 1 type + 1 status.

---

## 2. Linking Strategy

| Link Type | When | Example |
|-----------|------|---------|
| **Concept link** | Note mentions concept that has its own note | `[[spaced-repetition]]` |
| **Example link** | Note is example of a principle | → link to principle note |
| **Contradiction** | Notes conflict | Add "See also: [[opposing-view]]" |
| **Application** | Note applies gem to specific context | → link to gem note |
| **MOC link** | Note belongs to a topic cluster | → link to MOC |

---

## 3. Quy Trình

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Open new note | 1 note at a time | Note open |
| 2 | Apply tags (max 5) | Follow taxonomy | Tagged note |
| 3 | Identify link candidates | Read note → what else in vault is related? | Link list |
| 4 | Create wikilinks | `[[note-title]]` format | Linked note |
| 5 | Add note to relevant MOC | If note fits a topic cluster | MOC updated |
| 6 | Update link density tracker | Count links, target ≥3/note | Tracker updated |

> **[AI AUGMENT]** Claude Prompt: "Given this note and these existing vault notes [list titles], which 3-5 notes should be linked and why? Suggest the link text."

---

## 4. Checklist
- [ ] ≥3 tags applied (domain + type + status minimum)?
- [ ] ≥3 wikilinks created?
- [ ] Note added to at least 1 MOC?
- [ ] Orphan links checked (no broken `[[links]]`)?

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
