# SOP: Review and Prune

**Mã SOP:** SOP-KC-003
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Curation Department
**Department:** [Knowledge Curation](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Full vault (all notes, gems, syntheses) |
| **CONTROL** | Review schedule (daily/weekly/monthly/quarterly), Vault health metrics |
| **OUTPUT** | Healthy vault: outdated notes archived, duplicates merged, evergreen notes updated |
| **MECHANISM** | DEVONthink (search + tag management), Obsidian (graph view), vault health dashboard |

### Upstream / Downstream
- **Input từ:** Toàn bộ vault
- **Output tới:** Cleaner vault → better retrieval for [SOP-KAPP-001](../../../04-knowledge-application/apply-to-project/template/sop_kapp-001_apply-to-project_v1.0_2026-05-15.md)

---

## 1. Review Cadence

| Cadence | Scope | Duration | Focus |
|---------|-------|----------|-------|
| Daily | Inbox only | 5-10 min | Clear inbox, no orphans |
| Weekly | Active projects notes | 15-20 min | Update project notes, flag stale |
| Monthly | Full vault health | 45-60 min | Prune, merge duplicates, update evergreen |
| Quarterly | Archive sweep | 60-90 min | Archive completed projects, assess vault structure |

---

## 2. Quy Trình — Monthly Review (Full)

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Run vault health report | Count: total notes, orphans, untagged, inbox | Health metrics |
| 2 | Find and merge duplicates | Search similar titles/content | Merged notes |
| 3 | Archive stale notes | Not accessed >6 months + not evergreen → archive | Archived notes |
| 4 | Update evergreen notes | Check `#evergreen` notes — still accurate? | Updated notes |
| 5 | Rebuild broken links | Find `[[links]]` pointing to non-existent notes | Fixed links |
| 6 | Update MOCs | Add new notes to relevant MOCs | Updated MOCs |
| 7 | Vault health score | Calculate: (tagged% + linked% + inbox=0) / 3 | Health score |

---

## 3. Vault Health Metrics

| Metric | Target | Formula |
|--------|--------|---------|
| Tag coverage | >90% | # tagged notes / total notes |
| Link density | >3 links/note avg | Total links / total notes |
| Inbox zero rate | 100% | Inbox empty at end of day |
| Orphan rate | <5% | # notes with 0 links / total |
| Evergreen ratio | >20% | # evergreen notes / total |

---

## 4. Checklist
- [ ] Inbox = 0?
- [ ] No duplicate notes?
- [ ] Health score ≥80%?
- [ ] All broken links fixed?

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |
