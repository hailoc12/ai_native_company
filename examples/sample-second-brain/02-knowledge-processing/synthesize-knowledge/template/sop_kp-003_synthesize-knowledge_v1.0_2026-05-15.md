# SOP: Synthesize Knowledge

**Mã SOP:** SOP-KP-003
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Processing Department
**Department:** [Knowledge Processing](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Cluster of gems/notes tagged `#synthesis-ready` (≥3 related notes) |
| **CONTROL** | Synthesis quality: must produce NEW insight not in any single source |
| **OUTPUT** | Synthesis note — MOC hoặc essay-form capturing emergent understanding |
| **MECHANISM** | Claude AI (cross-domain synthesis), Obsidian (MOC creation) |

### Upstream / Downstream
- **Input từ:** [SOP-KP-002 Extract Gems](../../extract-gems/template/sop_kp-002_extract-gems_v1.0_2026-05-15.md)
- **Output tới:** [SOP-KC-001 Organize Vault](../../../03-knowledge-curation/organize-vault/template/sop_kc-001_organize-vault_v1.0_2026-05-15.md) và [SOP-KAPP-001 Apply to Project](../../../04-knowledge-application/apply-to-project/template/sop_kapp-001_apply-to-project_v1.0_2026-05-15.md)

---

## 1. Tổng Quan

Kết hợp nhiều gems/notes trong cùng domain hoặc cross-domain để tạo ra understanding mới — không chỉ tổng hợp mà phải EMERGE insight chưa có trong bất kỳ source nào.

---

## 2. Synthesis Modes

| Mode | Khi nào | Output |
|------|---------|--------|
| **Intra-domain** | ≥3 gems trong cùng domain | Deep MOC với emergent principles |
| **Cross-domain** | Gems từ 2+ domains có pattern chung | Isomorphism note — pattern applies across fields |
| **Contradiction** | 2+ gems mâu thuẫn nhau | Tension resolution note — khi nào đúng, khi nào sai |

---

## 3. Quy Trình

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Identify synthesis cluster | Collect `#synthesis-ready` notes cùng domain | Cluster identified |
| 2 | Map connections | Visualize links và patterns (mindmap hoặc list) | Connection map |
| 3 | Identify emergent insight | Câu hỏi: "Nếu tất cả gems này đều đúng → điều gì phải đúng?" | Emergent insight |
| 4 | Write synthesis note | MOC hoặc essay form | Synthesis note |
| 5 | Link all source gems | Bidirectional links | Linked network |
| 6 | Tag: `#synthesis`, domain, applications | Rich tagging | Tagged |

> **[AI AUGMENT]** Claude Prompt: "Given these [N] insights, what emergent understanding can we derive that isn't explicit in any single source? Look for patterns, isomorphisms, and tensions."

---

## 4. Checklist
- [ ] Synthesis note có ít nhất 1 insight NOT present in source notes?
- [ ] All source gems linked?
- [ ] Synthesis applicable to ≥1 real project?

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
