# _skills-agents — Knowledge Acquisition Department

## AI Workforce Status: ⬜ Not Activated

## Planned AI Roster

| # | Skill Name | SOP Source | Quality Tier | Status |
|---|-----------|-----------|-------------|--------|
| 0 | vibe-sb-ka-orchestrator | All KA SOPs | GPS-Enhanced | ⬜ Not built |
| 1 | vibe-sb-ka-source-discoverer | SOP-KA-001 | AI ASSIST | ⬜ Not built |
| 2 | vibe-sb-ka-curator | SOP-KA-002 | AI AUGMENT | ⬜ Not built |
| 3 | vibe-sb-ka-vault-importer | SOP-KA-003 | AI WORKFORCE | ⬜ Not built |

## Capability Matrix

| Capability | Human Only | AI ASSIST | AI AUGMENT | AI WORKFORCE |
|-----------|-----------|-----------|-----------|-------------|
| Find new sources | ✓ | vibe-sb-ka-source-discoverer | — | — |
| Quality scoring | ✓ | — | vibe-sb-ka-curator | — |
| Vault import | ✓ | — | — | vibe-sb-ka-vault-importer |

## Activation Command
```
/vibe-aiworkforce for KA department with:
  - SOP: capture-source/template/sop_ka-001_...
  - SOP: curate-input/template/sop_ka-002_...
  - SOP: import-to-vault/template/sop_ka-003_...
  - COMPANY_ROOT: [path]/second_brain_sample_company
```
