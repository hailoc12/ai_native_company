# W — Workflow: 01-Growth Department

> "HOW work flows through Growth — SOP definitions & process maps."

## SOP Workflow Index

### Sales Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-GRO-004 | Lead Generation & Qualification | [sales/lead-generation/template/](../sales/lead-generation/template/) | AI-01 Sales | Daily |
| SOP-GRO-005 | Sales Process & Negotiation | [sales/sales-process/template/](../sales/sales-process/template/) | AI-01 Sales | Per deal |
| SOP-GRO-008 | Proposal Creation | [sales/proposal-creation/template/](../sales/proposal-creation/template/) | AI-01 Sales | Per opportunity |
| SOP-GRO-009 | Client Management | [sales/client-management/template/](../sales/client-management/template/) | AI-01 Sales | Ongoing |
| SOP-GRO-010 | CRM Management | [sales/crm-management/template/](../sales/crm-management/template/) | AI-01 Sales | Daily |

### Marketing Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-GRO-001 | Content Creation | [marketing/create-content/template/](../marketing/create-content/template/) | AI-02 Content Mgr, AI-03 Writer | Weekly |
| SOP-GRO-002 | Email Marketing | [marketing/email-marketing/template/](../marketing/email-marketing/template/) | AI-02 Content Mgr | Weekly |
| SOP-GRO-003 | Social Media Management | [marketing/manage-social-media/template/](../marketing/manage-social-media/template/) | AI-04 Social Media | Daily |

### Analytics Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-GRO-006 | Marketing Reporting & Analytics | [analytics/marketing-reporting/template/](../analytics/marketing-reporting/template/) | AI-04 Social Media | Weekly |

## State Machine (Standard SOP Flow)

```
INPUT → PROCESSING/ai-draft → PROCESSING/human-review → OUTPUT → ARCHIVE/[YYYY-MM]/
```

- **INPUT**: Raw data, requests, triggers
- **PROCESSING/ai-draft**: AI Worker generates initial output
- **PROCESSING/human-review**: Human review gate (if required)
- **OUTPUT**: Final approved deliverable
- **ARCHIVE**: Monthly archive of completed work

## Marketing Workflow Operational Guide

| Document | Path | Summary |
|----------|------|---------|
| Marketing Workflow State Machine | [marketing-workflow-state-machine.md](marketing-workflow-state-machine.md) | 4 workflow pipelines (Content, Social, Email, Reporting), cross-workflow dependencies, scheduling matrix, health checks, naming conventions |

## SOP Dependencies

```
SOP-GRO-004 (Lead Gen) → SOP-GRO-005 (Sales Process) → SOP-GRO-008 (Proposal)
     ↓
SOP-GRO-010 (CRM) ← feeds all sales SOPs
SOP-GRO-001 (Content) → SOP-GRO-003 (Social Media) → SOP-GRO-006 (Reporting)
SOP-GRO-002 (Email) → SOP-GRO-006 (Reporting)
SOP-GRO-009 (Client Mgmt) ← after SOP-GRO-005 close
```

---

*Coverage: 10/10 SOPs indexed | KWSR Layer: W (Workflow) | Department: 01-Growth | Version: 1.2 | Updated: 2026-05-12*
