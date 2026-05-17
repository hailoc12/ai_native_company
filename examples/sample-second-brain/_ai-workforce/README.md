# AI Workforce — SecondBrain Co.

> **"Human system first. AI workforce activates when ready."**

---

## Status Overview

| Department | AI Workforce | Status | Priority |
|-----------|-------------|--------|---------|
| 01-Knowledge Acquisition | vibe-sb-ka-orchestrator + 3 specialists | ⬜ Not Activated | P1 |
| 02-Knowledge Processing | vibe-sb-kp-orchestrator + 3 specialists | ⬜ Not Activated | P0 |
| 03-Knowledge Curation | vibe-sb-kc-orchestrator + 3 specialists | ⬜ Not Activated | P1 |
| 04-Knowledge Application | vibe-sb-kapp-orchestrator + 3 specialists | ⬜ Not Activated | P2 |
| 05-Personal Development | vibe-sb-pd-orchestrator + 3 specialists | ⬜ Not Activated | P2 |
| Company GPS | vibe-sb-gps | ⬜ Not Created | P3 |

**Recommended Activation Order:** KP → KA → KC → KAPP → PD → GPS

---

## Planned Skill Map

### Knowledge Processing (P0 — Highest ROI)
| Skill | SOP | Role |
|-------|-----|------|
| vibe-sb-kp-orchestrator | All KP SOPs | Department orchestrator |
| vibe-sb-kp-analyzer | SOP-KP-001 | Analyze content (5-angle framework) |
| vibe-sb-kp-gem-extractor | SOP-KP-002 | Extract and score knowledge gems |
| vibe-sb-kp-synthesizer | SOP-KP-003 | Cross-domain synthesis |

### Knowledge Acquisition (P1)
| Skill | SOP | Role |
|-------|-----|------|
| vibe-sb-ka-orchestrator | All KA SOPs | Department orchestrator |
| vibe-sb-ka-source-discoverer | SOP-KA-001 | Find and capture sources |
| vibe-sb-ka-curator | SOP-KA-002 | Quality scoring and filtering |
| vibe-sb-ka-vault-importer | SOP-KA-003 | Import + taxonomy compliance |

### Knowledge Curation (P1)
| Skill | SOP | Role |
|-------|-----|------|
| vibe-sb-kc-orchestrator | All KC SOPs | Department orchestrator |
| vibe-sb-kc-organizer | SOP-KC-001 | PARA-based vault organization |
| vibe-sb-kc-linker | SOP-KC-002 | Tag taxonomy + wikilink creation |
| vibe-sb-kc-pruner | SOP-KC-003 | Vault health maintenance |

### Knowledge Application (P2)
| Skill | SOP | Role |
|-------|-----|------|
| vibe-sb-kapp-orchestrator | All KAPP SOPs | Department orchestrator |
| vibe-sb-kapp-project-advisor | SOP-KAPP-001 | Knowledge sprint per project |
| vibe-sb-kapp-deliverable-creator | SOP-KAPP-002 | Create knowledge-backed artifacts |
| vibe-sb-kapp-knowledge-transfer | SOP-KAPP-003 | Transfer knowledge to recipients |

### Personal Development (P2)
| Skill | SOP | Role |
|-------|-----|------|
| vibe-sb-pd-orchestrator | All PD SOPs | Department orchestrator |
| vibe-sb-pd-goal-setter | SOP-PD-001 | SMART+WHY goal facilitation |
| vibe-sb-pd-tracker | SOP-PD-002 | Progress tracking + PGS calculation |
| vibe-sb-pd-reflector | SOP-PD-003 | Monthly reflection facilitation |

---

## Company GPS (P3 — After all departments activated)

**Skill name:** vibe-sb-gps
**Role:** AI Chief of Staff — receives any task, routes to correct department worker

**Routing Table:**
| Task Type | Department | AI Worker |
|-----------|-----------|-----------|
| Find knowledge on [topic] | KA | vibe-sb-ka-source-discoverer |
| Analyze this content | KP | vibe-sb-kp-analyzer |
| Extract gems from vault | KP | vibe-sb-kp-gem-extractor |
| Organize my notes | KC | vibe-sb-kc-organizer |
| Apply knowledge to [project] | KAPP | vibe-sb-kapp-project-advisor |
| Write report from vault | KAPP | vibe-sb-kapp-deliverable-creator |
| Set my learning goals | PD | vibe-sb-pd-goal-setter |
| Review my monthly progress | PD | vibe-sb-pd-tracker |

---

## Activation Commands

### Activate single department
```
/vibe-aiworkforce
Input: SOPs from [department]/[process]/template/*.md
COMPANY_ROOT: [path]/second_brain_sample_company
```

### Activate full company
```
Repeat for each department in priority order (P0 → P3)
Then: Create company GPS
```
