# 02 — Knowledge Processing Department

> **"Raw info is noise. Processing turns noise into signal. Gems are the signal worth keeping."**

**Layer:** Operations (L2) — Primary Activity #2
**Head:** Head of Knowledge Processing
**Team size:** 3

---

## Department IPO

| Component | Detail |
|-----------|--------|
| **INPUT** | Notes tagged `#needs-processing` từ vault inbox (output của KA team) |
| **CONTROL** | Atomic note standard, Gem quality criteria (Rare + Valuable + Portable), Progressive Summarization |
| **OUTPUT** | Atomic notes, Knowledge gems, Synthesis notes — ready for curation |
| **MECHANISM** | Claude AI (analysis/synthesis), Obsidian, DEVONthink, Analysis templates |

---

## Value Chain Position
- **Layer:** Operations (L2) — Primary Activity #2
- **Upstream:** Knowledge Acquisition (nhận notes cần xử lý)
- **Downstream:** Knowledge Curation (gửi processed notes để tổ chức)
- **Key metric:** Gems extracted per batch processed

---

## Internal Process IPOs

### Process 1: Analyze Content (SOP-KP-001)
| Component | Detail |
|-----------|--------|
| **INPUT** | Raw notes tagged `#needs-processing` |
| **OUTPUT** | Atomic notes với Core Idea, Evidence, Implications, Connections |
| **SOP** | [SOP-KP-001](./analyze-content/template/sop_kp-001_analyze-content_v1.0_2026-05-15.md) |

### Process 2: Extract Gems (SOP-KP-002)
| Component | Detail |
|-----------|--------|
| **INPUT** | `#potential-gem` flagged notes |
| **OUTPUT** | Knowledge gems với Rarity/Value/Portability score + application examples |
| **SOP** | [SOP-KP-002](./extract-gems/template/sop_kp-002_extract-gems_v1.0_2026-05-15.md) |

### Process 3: Synthesize Knowledge (SOP-KP-003)
| Component | Detail |
|-----------|--------|
| **INPUT** | `#synthesis-ready` clusters (≥3 related gems) |
| **OUTPUT** | Synthesis notes with emergent insights not in any single source |
| **SOP** | [SOP-KP-003](./synthesize-knowledge/template/sop_kp-003_synthesize-knowledge_v1.0_2026-05-15.md) |

---

## KPIs

| KPI | Metric | Target | Frequency |
|-----|--------|--------|-----------|
| Gems Extracted | # gems per month | ≥10/month | Monthly |
| Processing Velocity | Notes processed / day | ≥5/day | Daily |
| Gem Quality Rate | % gems applied to project | ≥60% | Monthly |
| Synthesis Output | Synthesis notes per month | ≥2/month | Monthly |
| Processing Backlog | `#needs-processing` count | <10 at any time | Daily |

---

## AI Integration

| Process | AI Tier | Tool | Notes |
|---------|---------|------|-------|
| Analyze Content | AI AUGMENT | Claude AI | 5-angle analysis framework |
| Extract Gems | AI AUGMENT | Claude AI | Gem scoring + identification |
| Synthesize Knowledge | AI AUGMENT | Claude AI | Cross-domain pattern recognition |
