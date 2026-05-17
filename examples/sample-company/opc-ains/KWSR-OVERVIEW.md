# KWSR Structure — AINS Company Overview

> Model: Knowledge → Workflow → Skill → Rule (KWSR by Nguyen Duy Tung)
> Applied: 2026-05-11 | Upgraded to v1.2: 2026-05-12

## What is KWSR?

4-layer framework for organizing AI workforce knowledge, inspired by how humans mature in a role:

| Layer | Question | Analogy | Folder |
|-------|----------|---------|--------|
| **K**nowledge | What does AI need to KNOW? | Newbie reading docs | `_knowledge/` |
| **W**orkflow | HOW does work flow? | Operator following process | `_workflow/` |
| **S**kill | What CAN AI do? | Expert executing tasks | `_skills-agents/` |
| **R**ule | What MUST AI NOT do? | Senior understanding boundaries | `_rules/` |

## Company KWSR Map

```
opc-ains/
├── 01-growth/
│   ├── _knowledge/       ← K: charter, KPIs, market intelligence
│   ├── _workflow/        ← W: 10 SOP templates indexed
│   ├── _skills-agents/   ← S: 4 AI workers (AI-01 to AI-04)
│   ├── _rules/           ← R: brand policy, decision authority, quality gates
│   └── ...existing SOP runtime folders
│
├── 02-delivery/
│   ├── _knowledge/       ← K: charter, KPIs
│   ├── _workflow/        ← W: 10 SOP templates indexed
│   ├── _skills-agents/   ← S: 3 AI workers (AI-05 to AI-07)
│   ├── _rules/           ← R: data security, decision authority, breach response
│   └── ...existing SOP runtime folders
│
├── 03-backoffice/
│   ├── _knowledge/       ← K: charter, KPIs, regulatory knowledge
│   ├── _workflow/        ← W: 12 SOP templates indexed
│   ├── _skills-agents/   ← S: 3 AI workers (AI-08 to AI-10)
│   ├── _rules/           ← R: legal compliance, security, financial constraints
│   └── ...existing SOP runtime folders
│
├── knowledge/            ← Company-wide knowledge base (raw → structured → AI-ready)
├── charter/              ← Company charter, vision, mission, strategy
├── legal/                ← Contracts templates, legal policies
├── templates/            ← Company-wide templates
├── _ai-workforce/        ← Workforce roster, skills matrix
└── vibe-ains-ceo/        ← CEO skill (Company GPS)
```

## How to Use KWSR

### Onboarding a New AI Worker

1. **Read K first** — `_knowledge/README.md` gives context (mission, targets, domain)
2. **Understand W** — `_workflow/README.md` shows available processes and dependencies
3. **Activate S** — `_skills-agents/README.md` maps capabilities to installed skills
4. **Enforce R** — `_rules/README.md` sets boundaries and decision authority

### Auditing a Department

1. K complete? — Charter, KPIs, domain references exist
2. W complete? — All SOPs indexed with templates, dependencies mapped
3. S complete? — 100% SOP-to-Skill coverage verified
4. R complete? — Policies, decision authority, escalation rules documented

### Adding New SOP

1. Create workflow in `_workflow/` — add SOP to index
2. Assign to skill in `_skills-agents/` — update coverage matrix
3. Extract knowledge to `_knowledge/` — add domain reference
4. Add rules to `_rules/` — document constraints and authority

## Coverage Summary

| Department | Knowledge | Workflow | Skills | Rules | SOP Coverage |
|-----------|-----------|----------|--------|-------|-------------|
| 01-Growth | Charter, KPIs, Market | 10/10 SOPs | 4 workers | Brand, Authority | 100% |
| 02-Delivery | Charter, KPIs | 10/10 SOPs | 3 workers | Data Security, Authority | 100% |
| 03-Backoffice | Charter, KPIs, Regulatory | 12/12 SOPs | 3 workers | Legal, Security, Finance | 100% |
| **Total** | | **32/32** | **10 workers** | | **100%** |

---

*KWSR Overview v1.2 | AINS | 2026-05-12*
