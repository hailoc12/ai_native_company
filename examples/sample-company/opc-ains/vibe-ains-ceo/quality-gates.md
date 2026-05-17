# Quality Gates — Human Review Checkpoints

**Version:** 1.0
**Last updated:** 2026-05-01

---

## Tong quan

Quality Gates la cac "tram kiem tra" ma moi output cua AI Workers phai truoc khi duoc release ra ben ngoai (cho client hoac public). Dam bao chat luong va nhat quan cua AINS brand.

---

## Quality Gate Definitions

### Gate 1: Pre-Publish Review (Content)

**Applies to**: AI-03 Content Writer, AI-04 Social Media Manager
**Trigger**: Before publishing any content externally

| Criteria | Standard | Weight |
|----------|----------|--------|
| Brand voice compliance | Matches brand voice guide | 25% |
| Factual accuracy | All claims verified, numbers correct | 25% |
| Vietnamese language quality | Natural, no translation artifacts | 20% |
| SEO optimization | Title, meta, headers optimized | 15% |
| CTA presence | Clear call-to-action included | 15% |

**Scoring**:
- 4.0-5.0: Publish immediately
- 3.0-3.9: Minor revisions needed, AI Worker self-correct
- <3.0: Major revision or CEO review required

**Who reviews**: AI-07 Quality Reviewer (routine), CEO (spot-check 20%)

---

### Gate 2: Client Deliverable Review

**Applies to**: AI-05 PM, AI-06 Tech Consultant
**Trigger**: Before sending any deliverable to client

| Criteria | Standard | Weight |
|----------|----------|--------|
| Completeness | All promised deliverables included | 25% |
| Accuracy | Data, analysis, recommendations correct | 30% |
| Presentation | Professional formatting, clear structure | 15% |
| Client-specific | Customized for client context, not generic | 20% |
| Actionability | Clear next steps, recommendations implementable | 10% |

**Scoring**:
- 4.0-5.0: Deliver to client
- 3.0-3.9: Revisions needed, re-route to AI Worker
- <3.0: CEO must review and approve

**Who reviews**: AI-07 Quality Reviewer + CEO (all client deliverables)

---

### Gate 3: Financial Accuracy

**Applies to**: AI-08 Finance Manager
**Trigger**: Before sending invoices, financial reports, or making payments

| Criteria | Standard | Weight |
|----------|----------|--------|
| Number accuracy | All calculations verified | 40% |
| Documentation | Receipts, references attached | 20% |
| Compliance | Tax regulations followed | 20% |
| Timeliness | Sent within SLA | 20% |

**Scoring**:
- 4.0-5.0: Send/process
- <4.0: CEO review required (financial accuracy is non-negotiable)

**Who reviews**: CEO reviews all financial outputs >$500

---

### Gate 4: Proposal Quality

**Applies to**: AI-01 Sales Rep
**Trigger**: Before sending proposal to prospect

| Criteria | Standard | Weight |
|----------|----------|--------|
| Client understanding | Reflects client's actual needs | 25% |
| Solution fit | Proposed solution matches problem | 25% |
| Pricing accuracy | Correct rates, terms, ROI calculation | 20% |
| Professional presentation | Clean formatting, no errors | 15% |
| Differentiation | AINS advantages highlighted | 15% |

**Scoring**:
- 4.0-5.0: Send to prospect
- 3.0-3.9: CEO review before sending
- <3.0: Rewrite required

**Who reviews**: CEO reviews ALL proposals before sending

---

### Gate 5: Internal Communication

**Applies to**: All AI Workers
**Trigger**: Before sending any email/message to external parties

| Criteria | Standard | Weight |
|----------|----------|--------|
| Tone appropriateness | Matches relationship level | 30% |
| Clarity | Message clear, no ambiguity | 30% |
| Completeness | All necessary info included | 20% |
| Professionalism | No errors, proper formatting | 20% |

**Who reviews**:
- Client emails: AI-05 PM reviews, CEO spot-checks
- Prospects: AI-01 Sales Rep reviews, CEO reviews first 3 emails per new prospect
- Vendors/partners: AI Worker auto-sends, CEO notified

---

## Quality Gate Dashboard (April 2026)

| Gate | Total | Passed | Failed | Pass Rate |
|------|-------|--------|--------|-----------|
| Gate 1: Pre-Publish | 52 | 49 | 3 | 94% |
| Gate 2: Client Deliverable | 18 | 18 | 0 | 100% |
| Gate 3: Financial | 24 | 24 | 0 | 100% |
| Gate 4: Proposal | 8 | 8 | 0 | 100% |
| Gate 5: Communication | 120+ | ~115 | ~5 | ~96% |
| **Total** | **222+** | **214+** | **8** | **96%** |

---

## Human Quality Gates (CEO Required)

These checkpoints ALWAYS require human (CEO) review, regardless of AI quality score:

1. **All proposals** — Before sending to prospect
2. **All invoices >$2,000** — Before sending
3. **All client deliverables (final)** — Before handover
4. **All contracts** — Before signing
5. **All hiring/vendor decisions** — Before commitment
6. **All content making claims about competitors** — Legal risk
7. **All financial commitments >$500** — Budget control
8. **All client escalations (Severity 1-2)** — Relationship management
9. **Strategy changes** — Direction control
10. **New SOP creation/modification** — Process integrity

---

## Quality Gate Automation Level

| Gate | Current Automation | Target (Q3 2026) |
|------|-------------------|-------------------|
| Pre-publish | AI auto-check + CEO spot-check (20%) | AI auto-check + CEO (10%) |
| Client deliverable | AI review + CEO review (100%) | AI review + CEO (50%) |
| Financial | AI review + CEO (>$500) | AI review + CEO (>$1,000) |
| Proposal | CEO review (100%) | AI review + CEO (80%) |
| Communication | AI auto + CEO spot-check | AI auto + CEO (5%) |

---
*Quality Gates v1.0 | Updated quarterly | CEO defines all gate thresholds*
