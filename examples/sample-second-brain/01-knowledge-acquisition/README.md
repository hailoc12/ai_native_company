# 01 — Knowledge Acquisition Department

> **"Garbage in, garbage out. Signal-rich input = Signal-rich vault."**

**Layer:** Operations (L2)
**Head:** Head of Knowledge Acquisition
**Reports to:** CEO
**Team size:** 3

---

## Department IPO

| Component | Detail |
|-----------|--------|
| **INPUT** | Web articles, books, podcasts, videos, conversations, experiments, research papers, newsletters |
| **CONTROL** | Knowledge Quality Standard (Signal-to-noise ≥ 0.7), Source Diversity Index, Privacy Policy |
| **OUTPUT** | Curated notes ready for processing (fleeting notes → clean input notes in vault inbox) |
| **MECHANISM** | Browser extensions (Readwise, Matter), Podcast apps, DEVONthink clipper, Claude AI, Capture templates |

---

## Value Chain Position

- **Layer:** Operations (Primary Activity #1)
- **Upstream:** Personal Development (learning goals định hướng capture priorities)
- **Downstream:** Knowledge Processing (nhận clean input notes)
- **External:** Internet, Books, Podcasts, Conferences, Peers, Experiments

---

## Internal Process IPOs

### Process 1: Capture Source (SOP-KA-001)
| Component | Detail |
|-----------|--------|
| **INPUT** | URL, book highlight, podcast clip, conversation snippet, observation |
| **CONTROL** | Source quality checklist, Relevance-to-goals filter |
| **OUTPUT** | Fleeting note in inbox với source metadata |
| **MECHANISM** | Readwise, browser clipper, DEVONthink sorter, voice memo |
| **SOP** | [SOP-KA-001](./capture-source/template/sop_ka-001_capture-source_v1.0_2026-05-15.md) |

### Process 2: Curate Input (SOP-KA-002)
| Component | Detail |
|-----------|--------|
| **INPUT** | Fleeting notes in inbox (raw, unfiltered) |
| **CONTROL** | Quality filter: relevance, credibility, novelty scoring |
| **OUTPUT** | Curated notes — passed (→ processing) or rejected (→ archive/delete) |
| **MECHANISM** | Quality scoring rubric, Claude AI for relevance check |
| **SOP** | [SOP-KA-002](./curate-input/template/sop_ka-002_curate-input_v1.0_2026-05-15.md) |

### Process 3: Import to Vault (SOP-KA-003)
| Component | Detail |
|-----------|--------|
| **INPUT** | Curated notes ready for vault |
| **CONTROL** | Vault taxonomy, naming convention, inbox folder rules |
| **OUTPUT** | Notes properly filed in vault inbox, ready for Knowledge Processing |
| **MECHANISM** | DEVONthink, Obsidian, import templates |
| **SOP** | [SOP-KA-003](./import-to-vault/template/sop_ka-003_import-to-vault_v1.0_2026-05-15.md) |

---

## RACI Matrix

| Activity | Head KA | Capture Specialist | Source Curator | Head KP | CEO |
|---------|---------|-------------------|----------------|---------|-----|
| Define capture sources | A | C | R | C | I |
| Daily capture | A | R | R | I | I |
| Quality filtering | A | C | R | C | I |
| Import to vault | A | R | C | I | I |
| Weekly source review | R | C | C | C | I |
| Add new source types | A | C | R | C | A |

---

## KPIs

| KPI | Metric | Target | Frequency | File |
|-----|--------|--------|-----------|------|
| Volume Captured | Items captured/tháng | ≥50 | Monthly | [kpi file](./kpi_ka-001_acquisition-kpis_v1.0_2026-05-15.md) |
| Signal-to-Noise Ratio | % curated / total captured | ≥70% | Weekly | [kpi file](./kpi_ka-001_acquisition-kpis_v1.0_2026-05-15.md) |
| Source Diversity Index | # unique source types active | ≥5 | Monthly | [kpi file](./kpi_ka-001_acquisition-kpis_v1.0_2026-05-15.md) |
| Inbox Cleared Rate | % inbox cleared within 48h | 100% | Daily | [kpi file](./kpi_ka-001_acquisition-kpis_v1.0_2026-05-15.md) |
| Goal-Alignment Rate | % captures linked to learning goals | ≥60% | Monthly | [kpi file](./kpi_ka-001_acquisition-kpis_v1.0_2026-05-15.md) |

---

## Report Matrix

| Report | Level | Frequency | Input | Output for | AI |
|--------|-------|-----------|-------|-----------|-----|
| Daily Capture Log | Operational | Daily | Capture tools | Head KA | AI AUGMENT |
| Weekly Source Review | Tactical | Weekly | Daily logs | CEO | AI ASSIST |
| Monthly Acquisition Report | Tactical | Monthly | Weekly reviews | CEO + KP | AI AUGMENT |

---

## AI Integration

| Process | AI Tier | Skill | Notes |
|---------|---------|-------|-------|
| Capture Source | AI ASSIST | vibe-second-brain-searcher | Tìm nguồn liên quan đến learning goals |
| Curate Input | AI AUGMENT | Claude (direct) | Relevance + quality scoring |
| Import to Vault | AI WORKFORCE | vibe-devonthink | Auto-import với tagging |
