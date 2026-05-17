# W — Workflow: 02-Delivery Department

> "HOW work flows through Delivery — SOP definitions & process maps."

## SOP Workflow Index

### Project Management Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-DEL-001 | Project Management & Onboarding | [project-management/template/](../project-management/template/) | AI-05 PM | Per project |
| SOP-DEL-003 | Customer Onboarding | [customer-onboarding/template/](../customer-onboarding/template/) | AI-05 PM | Per new client |
| SOP-DEL-005 | Change Management | [change-management/template/](../change-management/template/) | AI-05 PM | Per change request |
| SOP-DEL-006 | Project Evaluation | [project-evaluation/template/](../project-evaluation/template/) | AI-05 PM + AI-06 Tech | Per milestone/end |

### Quality Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-DEL-004 | Quality Assurance Review | [quality-assurance/template/](../quality-assurance/template/) | AI-07 QA | Per deliverable |

### Support Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-DEL-007 | Customer Support | [customer-support/template/](../customer-support/template/) | AI-06 Tech | Per ticket |
| SOP-DEL-009 | Complaint Handling | [complaint-handling/template/](../complaint-handling/template/) | AI-05 PM | Per complaint |

### Note: SOP-DEL-002 and SOP-DEL-008

- SOP-DEL-002: Technical Delivery — embedded within project-management workflow
- SOP-DEL-008: Data Security Policy — see [_rules/](../_rules/README.md)

## State Machine (Standard SOP Flow)

```
INPUT → PROCESSING/ai-draft → PROCESSING/human-review → OUTPUT → ARCHIVE/[YYYY-MM]/
```

## SOP Dependencies

```
SOP-DEL-001 (Project Mgmt) → SOP-DEL-003 (Onboarding) → SOP-DEL-004 (QA) → SOP-DEL-006 (Evaluation)
     ↓                                                              ↑
SOP-DEL-005 (Change Mgmt) ← triggers re-planning                   |
SOP-DEL-007 (Support) ← post-delivery                               |
SOP-DEL-009 (Complaint) ← escalation from support                   |
```

---

*Coverage: 8/10 SOPs indexed (2 embedded in other workflows) | KWSR Layer: W (Workflow) | Department: 02-Delivery | Version: 1.2 | Updated: 2026-05-12*
