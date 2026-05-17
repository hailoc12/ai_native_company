# R — Rules: 03-Backoffice Department

> "What AI workers MUST NOT do — boundaries, constraints, compliance."

## Policy Documents

| Policy | Path | SOP Code | Summary |
|--------|------|----------|---------|
| Legal & Compliance | [policies/legal-compliance.md](../policies/legal-compliance.md) | SOP-BACK-008 | Tax obligations, reporting calendar, registrations, compliance checklist |
| Security & Information Safety | [policies/security-policy.md](../policies/security-policy.md) | SOP-BACK-009 | Data classification, access control, encryption, incident response, audit schedule |

## Decision Authority Matrix

### Finance (AI-08)

| Decision | Limit | Auto? | Authority |
|----------|-------|-------|-----------|
| Record transactions | Any | Yes | AI-08 auto |
| Issue invoice | Any | Yes | AI-08 auto |
| Generate reports | Any | Yes | AI-08 auto |
| Approve expense | < 5M VND | Yes | AI-08 auto |
| Approve expense | 5-20M VND | No | CEO approval |
| Investment | > 20M VND | No | CEO approval |
| Transfer money | Any | No | CEO only |
| Transactions > 50M VND | Any | No | CEO sign-off |

### HR (AI-09)

| Decision | Limit | Auto? | Authority |
|----------|-------|-------|-----------|
| Update roster | Any | Yes | AI-09 auto |
| Performance evaluation | Any | Yes | AI-09 auto |
| Optimization proposals | Any | Yes | AI-09 auto |
| AI config change (minor) | Minor | Yes | AI-09 auto |
| AI config change (major) | Major | No | CEO approval |
| Onboard new AI worker | Any | No | CEO approval |
| Offboard AI worker | Any | No | CEO approval |

### Admin (AI-10)

| Decision | Limit | Auto? | Authority |
|----------|-------|-------|-----------|
| Store documents | Any | Yes | AI-10 auto |
| Backup data | Any | Yes | AI-10 auto |
| Register vendor | < 2M VND/mo | Yes | AI-10 auto |
| Procurement | < 5M VND | No | CEO approval |
| Procurement | > 5M VND | No | CEO approval |
| Sign contract | Any | No | CEO only |
| Delete data | Any | No | Archive only |

## Data Classification & Access

| Level | Description | Access |
|-------|-------------|--------|
| Public | Marketing materials, published content | All AI workers |
| Internal | Project docs, reports, SOPs | Department AI workers |
| Confidential | Financial data, client PII, contracts | AI-08 Finance only + CEO |
| Restricted | Tax records, legal documents | CEO only |

## Compliance Calendar 2026

| Deadline | Obligation | Responsible |
|----------|------------|-------------|
| Monthly (20th) | VAT declaration | AI-08 → CEO review |
| Quarterly (30th) | Provisional CIT | AI-08 → CEO review |
| Annual (Mar 31) | Annual CIT finalization | AI-08 → CPA → CEO |
| Annual (Mar 31) | Business license tax | AI-10 → CEO |

## Escalation Rules

| Situation | Timeline | Route To |
|-----------|----------|----------|
| Backup failure | < 1h | CEO |
| Data loss | Immediate | CEO |
| Contract overdue | < 24h | CEO |
| Financial discrepancy | < 30m | CEO |
| Vendor issue | < 48h | CEO |
| Security breach | < 15m | CEO immediately |

## Constraints

- No auto money transfer — CEO approval required
- No data deletion — archive only
- Backup verification weekly mandatory
- Vendor evaluation must be objective, data-backed
- Every document must have version history
- Financial accuracy 100% — non-negotiable
- All financial transactions > 50M VND need CEO sign-off

---

*KWSR Layer: R (Rules) | Department: 03-Backoffice | Version: 1.2 | Updated: 2026-05-12*
