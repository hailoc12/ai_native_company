# SOP: Organize Vault

**Mã SOP:** SOP-KC-001
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Curation Department
**Department:** [Knowledge Curation](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Processed notes (atomic notes, gems, syntheses) từ KP team |
| **CONTROL** | Vault taxonomy (PARA + Zettelkasten hybrid), naming convention |
| **OUTPUT** | Notes properly filed in vault với correct folder/database structure |
| **MECHANISM** | DEVONthink, Obsidian, vault taxonomy guide |

### Upstream / Downstream
- **Input từ:** [SOP-KP-001](../../../02-knowledge-processing/analyze-content/template/sop_kp-001_analyze-content_v1.0_2026-05-15.md), [SOP-KP-002](../../../02-knowledge-processing/extract-gems/template/sop_kp-002_extract-gems_v1.0_2026-05-15.md), [SOP-KP-003](../../../02-knowledge-processing/synthesize-knowledge/template/sop_kp-003_synthesize-knowledge_v1.0_2026-05-15.md)
- **Output tới:** [SOP-KC-002 Tag and Link](../../tag-and-link/template/sop_kc-002_tag-and-link_v1.0_2026-05-15.md)

---

## 1. Vault Taxonomy (PARA Hybrid)

```
Vault/
├── 00-inbox/          ← Landing zone — cleared daily
├── 01-projects/       ← Active projects (have deadline)
│   └── [project-name]/
├── 02-areas/          ← Ongoing responsibilities (no deadline)
│   ├── health/
│   ├── finance-personal/
│   ├── learning/
│   └── relationships/
├── 03-resources/      ← Reference material by topic
│   ├── [domain-1]/
│   ├── [domain-2]/
│   └── gems/          ← Knowledge gems index
├── 04-archives/       ← Completed/inactive
│   └── [YYYY]/
└── 99-meta/           ← MOCs, indexes, system notes
    ├── moc-[topic].md
    └── index-gems.md
```

---

## 2. Quy Trình

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Open processed notes (tagged `#analyzed` or `#gem`) | DEVONthink | Note list |
| 2 | Classify: Project / Area / Resource | Apply PARA decision rules | Classification |
| 3 | Move to correct folder | Drag-drop or script | Note in correct location |
| 4 | Verify naming convention | `[YYYY-MM-DD]-[descriptive-title].md` | Renamed if needed |
| 5 | Remove processing tags | Remove `#needs-processing`, `#analyzed` | Clean tags |
| 6 | Add location tag | `#vault/projects`, `#vault/resources` etc | Location tagged |

---

## 3. PARA Decision Rules

```
Is there a specific deadline? → YES → Projects
Is it an ongoing responsibility? → YES → Areas
Is it reference material? → YES → Resources
Is it completed/old? → YES → Archives
```

---

## 4. Checklist
- [ ] Note in correct PARA folder?
- [ ] Naming convention followed?
- [ ] Processing tags removed?
- [ ] Inbox = 0 after session?

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
