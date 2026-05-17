# KWSR Overview — SecondBrain Co.

> **"4 folders per department. AI worker reads them = instant context."**

---

## What is KWSR?

Each department has 4 structured folders that give any AI worker instant context to operate:

| Folder | Content | Purpose |
|--------|---------|---------|
| `_knowledge/` | Charters, KPIs, domain knowledge, targets | WHAT the department does and WHY |
| `_workflow/` | SOP index, dependencies, triggers | HOW the department operates |
| `_skills-agents/` | AI roster, capabilities, SOP coverage | WHO the AI workers are |
| `_rules/` | Policies, decision authority, quality gates, escalation | CONSTRAINTS and AUTHORITY |

**AI Onboarding:** Read 4 READMEs → understand enough to operate correctly.

---

## Department KWSR Status

| Department | _knowledge | _workflow | _skills-agents | _rules |
|-----------|-----------|----------|--------------|-------|
| 01-Knowledge Acquisition | ✅ | ✅ | ✅ | ✅ |
| 02-Knowledge Processing | ✅ | ✅ | ✅ | ✅ |
| 03-Knowledge Curation | ✅ | ✅ | ✅ | ✅ |
| 04-Knowledge Application | ✅ | ✅ | ✅ | ✅ |
| 05-Personal Development | ✅ | ✅ | ✅ | ✅ |
| 06-Product | ⬜ | ⬜ | ⬜ | ⬜ |
| 07-HR | ⬜ | ⬜ | ⬜ | ⬜ |
| 08-Finance | ⬜ | ⬜ | ⬜ | ⬜ |

---

## Full Company Map

```
second_brain_sample_company/
├── 00-company/             ← Company-level documents
├── 01-knowledge-acquisition/
│   ├── _knowledge/         ← Department knowledge base
│   ├── _workflow/          ← SOP index + triggers
│   ├── _skills-agents/     ← AI workforce roster
│   ├── _rules/             ← Policies + authority
│   ├── capture-source/     ← OPERATIONAL SOP (state machine)
│   ├── curate-input/       ← OPERATIONAL SOP (state machine)
│   └── import-to-vault/    ← OPERATIONAL SOP (state machine)
├── 02-knowledge-processing/
│   └── [same structure]
├── 03-knowledge-curation/
│   └── [same structure]
├── 04-knowledge-application/
│   └── [same structure]
├── 05-personal-development/
│   └── [same structure]
├── 06-product/
├── 07-hr/
├── 08-finance/
├── _shared/
│   ├── templates/
│   └── policies/
├── _ai-workforce/
│   ├── README.md           ← AI workforce overview
│   ├── workforce-map_v1.0_2026-05-15.md
│   └── build-plan_v1.0_2026-05-15.md
└── KWSR-OVERVIEW.md        ← This file
```
