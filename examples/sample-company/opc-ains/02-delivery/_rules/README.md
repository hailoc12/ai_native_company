# R — Rules: 02-Delivery Department

> "What AI workers MUST NOT do — boundaries, constraints, compliance."

## Policy Documents

| Policy | Path | SOP Code | Summary |
|--------|------|----------|---------|
| Data Security Policy | [policies/data-security-policy.md](../policies/data-security-policy.md) | SOP-DEL-008 | Client data handling, classification, breach response, retention |

## Data Classification

| Level | Description | Handling |
|-------|-------------|----------|
| Confidential | Client proprietary data, PII | Encrypted, role-restricted, 90-day auto-expiry |
| Internal | Project docs, internal reports | Standard access control |
| Public | Published deliverables | No restrictions |

## Decision Authority Matrix

| Decision | Limit | Auto? | Authority |
|----------|-------|-------|-----------|
| Accept project | All | No | Founder approval |
| Scope change | Minor | Yes | AI-05 within 10% |
| Scope change | Major | No | Founder approval |
| Deliverable approval | All | No | Founder review + AI-07 QA |
| Client communication | Routine | Yes | AI-05/AI-06 auto |
| Client communication | Escalation | No | Founder directly |
| Timeline extension | Any | No | Founder approval |
| Budget overrun | > 10% | No | Founder approval |
| Refund/compensation | Any | No | Founder only |

## Data Security Rules

### AI Worker Rules
- No raw client data storage beyond project duration
- All output must be sanitized of PII before archiving
- Auto-expiry of project data after 90 days post-delivery
- No cross-client data usage

### Human Owner Rules
- All client data encrypted at rest (AES-256)
- 2FA required for all client-facing systems
- Monthly security audit of access logs

## Quality Gates

| Gate | Applies To | Minimum Score |
|------|-----------|---------------|
| Client Deliverable | All deliverables | 4.0/5.0 + CEO review |

## Breach Response

| Severity | Response Time | Action |
|----------|--------------|--------|
| Critical (data leak) | < 30 min | Notify CEO + client within 24h |
| High (unauthorized access) | < 2h | Investigate + contain |
| Medium (policy violation) | < 24h | Document + remediate |
| Low (audit finding) | < 48h | Log + fix |

## Constraints

- All client deliverables require CEO review before delivery
- No承诺超出 contract scope without change request
- Support response time: < 4h for all tickets
- Client data retention: project duration + 30 days (personal), 5 years (financial)

---

*KWSR Layer: R (Rules) | Department: 02-Delivery | Version: 1.2 | Updated: 2026-05-12*
