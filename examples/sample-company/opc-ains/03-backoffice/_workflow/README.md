# W — Workflow: 03-Backoffice Department

> "HOW work flows through Backoffice — SOP definitions & process maps."

## SOP Workflow Index

### Finance Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-BACK-001 | Accounting & Revenue Recording | [accounting/template/](../accounting/template/) | AI-08 Finance | Daily |
| SOP-BACK-002 | Cost & Budget Management | [accounting/template/](../accounting/template/) | AI-08 Finance | Daily |
| SOP-BACK-003 | Invoicing & Accounts Receivable | [invoicing/template/](../invoicing/template/) | AI-08 Finance | Per transaction |
| SOP-BACK-004 | Monthly Financial Reporting | [financial-reporting/template/](../financial-reporting/template/) | AI-08 Finance | Monthly |

### HR & Workforce Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-BACK-005 | AI Workforce Management | [ai-workforce-management/template/](../ai-workforce-management/template/) | AI-09 HR | Weekly |
| SOP-BACK-006 | AI Performance Review | [ai-performance-review/template/](../ai-performance-review/template/) | AI-09 HR | Monthly |

### Admin Workflows

| SOP Code | Process | Template Path | AI Worker | Frequency |
|----------|---------|---------------|-----------|-----------|
| SOP-BACK-007 | Document Management | [document-management/template/](../document-management/template/) | AI-10 Admin | Daily |
| SOP-BACK-010 | Backup & Disaster Recovery | [backup-disaster-recovery/template/](../backup-disaster-recovery/template/) | AI-10 Admin | Weekly |
| SOP-BACK-011 | Procurement & Vendor Management | [procurement/template/](../procurement/template/) | AI-10 Admin | As needed |
| SOP-BACK-012 | Contract Management | [contract-management/template/](../contract-management/template/) | AI-10 Admin | Per contract |

### Policy Workflows (see _rules/)

| SOP Code | Process | Type |
|----------|---------|------|
| SOP-BACK-008 | Legal & Compliance | Policy (enforcement workflow) |
| SOP-BACK-009 | Security & Information Safety | Policy (enforcement workflow) |

## State Machine (Standard SOP Flow)

```
INPUT → PROCESSING/ai-draft → PROCESSING/human-review → OUTPUT → ARCHIVE/[YYYY-MM]/
```

## SOP Dependencies

```
SOP-BACK-001 (Accounting) → SOP-BACK-004 (Financial Reporting) → CEO review
SOP-BACK-002 (Cost Mgmt) → SOP-BACK-004 (Financial Reporting)
SOP-BACK-003 (Invoicing) → SOP-BACK-001 (Accounting)
SOP-BACK-005 (Workforce Mgmt) → SOP-BACK-006 (Performance Review)
SOP-BACK-007 (Document Mgmt) ← supports all SOPs
SOP-BACK-010 (Backup) ← protects all SOP outputs
SOP-BACK-011 (Procurement) → SOP-BACK-012 (Contract)
SOP-BACK-008/009 (Policies) → governs all SOPs
```

---

*Coverage: 12/12 SOPs indexed | KWSR Layer: W (Workflow) | Department: 03-Backoffice | Version: 1.2 | Updated: 2026-05-12*
