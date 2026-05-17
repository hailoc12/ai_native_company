# GPS Routing Rules

**Version:** 1.0
**Last updated:** 2026-05-01

---

## Task Classification & Routing

### Step 1: Classify Task Type

```
Incoming Task →
│
├─ Contains "lead", "client", "sale", "proposal", "deal"?
│  └─ YES → GROWTH DEPARTMENT
│
├─ Contains "project", "deliver", "client deliverable", "code", "model"?
│  └─ YES → DELIVERY DEPARTMENT
│
├─ Contains "invoice", "payment", "schedule", "report", "admin", "knowledge"?
│  └─ YES → BACKOFFICE DEPARTMENT
│
├─ Contains "strategy", "direction", "decision", "approve"?
│  └─ YES → CEO DIRECTLY (no auto-routing)
│
└─ Unclear?
   └─ → CEO for manual triage
```

---

## Step 2: Route to Specific AI Worker

### Growth Department Routing

| Task Type | Route to | SOP | Priority |
|-----------|---------|-----|----------|
| New lead received | AI-01 Sales Rep | SOP-GRO-001 | High |
| Lead qualification needed | AI-01 Sales Rep | SOP-GRO-002 | High |
| Proposal request | AI-01 Sales Rep | SOP-GRO-006 | High |
| Content topic needed | AI-02 Content Manager | SOP-GRO-003 | Medium |
| Blog post to write | AI-03 Content Writer | SOP-GRO-005 | Medium |
| Social media post | AI-04 Social Media | SOP-GRO-007 | Low |
| Newsletter drafting | AI-03 Content Writer | SOP-GRO-005 | Medium |
| Client inquiry (pre-sale) | AI-01 Sales Rep | SOP-GRO-009 | High |
| Competitor information | AI-02 Content Manager | SOP-GRO-010 | Low |

### Delivery Department Routing

| Task Type | Route to | SOP | Priority |
|-----------|---------|-----|----------|
| New project kickoff | AI-05 Project Manager | SOP-DEL-001 | High |
| Client communication | AI-05 Project Manager | SOP-DEL-003 | High |
| Technical deliverable | AI-06 Tech Consultant | SOP-DEL-004 | High |
| Code/model review | AI-06 Tech Consultant | SOP-DEL-006 | Medium |
| Quality review needed | AI-07 Quality Reviewer | SOP-DEL-008 | Medium |
| Client handover | AI-05 Project Manager | SOP-DEL-005 | High |
| Documentation | AI-06 Tech Consultant | SOP-DEL-007 | Low |
| Project status report | AI-05 Project Manager | SOP-DEL-010 | Medium |

### Backoffice Department Routing

| Task Type | Route to | SOP | Priority |
|-----------|---------|-----|----------|
| Invoice creation | AI-08 Finance Manager | SOP-BKO-001 | High |
| Financial report | AI-08 Finance Manager | SOP-BKO-002 | Medium |
| Cash flow update | AI-08 Finance Manager | SOP-BKO-003 | Medium |
| Meeting scheduling | AI-09 HR/Admin | SOP-BKO-004 | Low |
| Admin task | AI-09 HR/Admin | SOP-BKO-005 | Low |
| Compliance check | AI-09 HR/Admin | SOP-BKO-006 | Medium |
| Knowledge base update | AI-10 Knowledge Manager | SOP-BKO-007 | Low |
| SOP update | AI-10 Knowledge Manager | SOP-BKO-008 | Low |
| Research request | AI-10 Knowledge Manager | SOP-BKO-009 | Medium |

---

## Step 3: Priority Handling

### Priority Levels

| Priority | Response Time | CEO Notification |
|----------|--------------|-----------------|
| **Critical** (P1) | Immediate | Yes — within 1h |
| **High** (P2) | Within 4h | Yes — in daily brief |
| **Medium** (P3) | Within 24h | No — weekly report only |
| **Low** (P4) | Within 48h | No — monthly report only |

### Auto-Escalation Rules

| Condition | Action |
|-----------|--------|
| Client expresses dissatisfaction | P1 → CEO immediately |
| Revenue at risk ($500+) | P1 → CEO immediately |
| Deadline < 24h and not started | P2 → CEO in daily brief |
| AI Worker quality score < 3.5 | P2 → Flag in daily brief |
| New lead from referral | P2 → Priority processing |
| Scope change request | P2 → CEO approval needed |
| Routine content creation | P4 → Auto-process |

---

## Step 4: Execution Monitoring

### Execution Flow
```
Task received → Classify → Route → Assign to AI Worker
    → AI Worker executes per SOP → Output generated
    → Quality Gate check → Pass?
        → YES: Deliver / Publish / Send
        → NO: Return to AI Worker for revision (max 2 retries)
            → Still fails? → Escalate to CEO
```

### Monitoring Dashboard (Auto-updated)
| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Tasks routed correctly | 95%+ | 97% | On Track |
| Average routing time | <5 min | 2 min | On Track |
| SOP compliance | 95%+ | 97% | On Track |
| Quality gate pass rate | 90%+ | 92% | On Track |

---
*Routing Rules v1.0 | Updated quarterly*
