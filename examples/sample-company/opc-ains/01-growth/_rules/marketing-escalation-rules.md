# Marketing Escalation Rules — Rules Layer

**Version:** 1.0 | **Updated:** 2026-05-12 | **Owner:** Marketing AI
**Approved by:** Founder

---

## Escalation Overview

Escalation rules dinh nghia KHI NAO, BAO NHIEU THOI GIAN, va GUI TOI AI khi co van de ngoai scope cua AI workers.

### Principle
> **"AI tu xu ly routine — Nguoi xu ly exception. Moi exception la co hoi cai tien he thong."**

---

## Escalation Matrix

### Critical (Immediate — <1h)

| Tinh huong | Trigger | Action | Route To |
|-----------|---------|--------|----------|
| Brand violation detected | Content vi pham Brand Policy da publish | Immediate unpublish + notify | Founder directly |
| Negative client feedback (public) | Bad review, public complaint | Draft response + flag | Founder directly |
| Revenue at risk | Lost deal, client churn signal | Immediate analysis | Founder directly |
| Data breach/privacy issue | Subscriber data compromised | Stop all campaigns + notify | Founder directly |
| Legal threat | Cease & desist, complaint | Stop activity + document | Founder directly |

**Response protocol:**
1. AI stops current activity immediately
2. AI documents the issue with timestamps
3. AI notifies Founder via Slack (urgent) + Email
4. AI does NOT respond publicly without Founder approval
5. Founder decides next action

### High Priority (<4h)

| Tinh huong | Trigger | Action | Route To |
|-----------|---------|--------|----------|
| Campaign performance critical | Open rate <10%, CTR <1% | Auto-pause + analyze | Founder via daily brief |
| Social media negative trend | Negative sentiment >10% | Compile report + suggest actions | Founder via daily brief |
| Email deliverability issue | Bounce rate >5%, spam complaints | Pause campaign + investigate | Founder + technical review |
| Competitor threat | Major competitor campaign | Analysis + counter-strategy draft | Founder via weekly report |
| Content quality degradation | Quality score avg <3.5/5 | Stop publishing + root cause | Founder via daily brief |

**Response protocol:**
1. AI pauses affected activity
2. AI prepares analysis report
3. AI flags in daily digest with HIGH priority tag
4. Founder reviews within 4h
5. Decision: Resume / Modify / Kill campaign

### Medium Priority (<24h)

| Tinh huong | Trigger | Action | Route To |
|-----------|---------|--------|----------|
| Lead pipeline low | <50% daily average | Flag + analyze source | Founder via weekly report |
| Content behind schedule | <80% weekly target | Adjust calendar + flag | Founder via weekly report |
| SEO ranking drop | Key keyword drops >5 positions | SEO audit + recommendations | SEO AI + Founder |
| Budget over-run risk | Ad spend trending >110% | Flag + pause low-performing | Founder via weekly report |
| Tool/API outage | Marketing tool unavailable | Switch to backup + document | Founder if >4h |

**Response protocol:**
1. AI documents the issue
2. AI proposes 2-3 solutions
3. AI includes in next scheduled report
4. Founder reviews and decides
5. Implementation + follow-up tracking

### Low Priority (<1 week)

| Tinh huong | Trigger | Action | Route To |
|-----------|---------|--------|----------|
| Content performance plateau | Engagement flat for 2+ weeks | Test new formats/topics | Include in monthly report |
| Follower growth slowdown | <50% growth target | Analyze + propose tactics | Include in monthly report |
| New content opportunity | Trending topic in AI/SME space | Create content brief | Marketing AI self-action |
| SOP improvement needed | Recurring revision requests | SOP update proposal | Founder in monthly review |
| Knowledge gap identified | Missing reference data | Research + add to knowledge base | Self-action + log |

---

## Escalation Flow Diagram

```
Issue Detected
      │
      ▼
Severity Assessment
      │
      ├── CRITICAL (<1h)
      │     │
      │     ▼
      │   Stop Activity + Notify Founder (Slack urgent)
      │     │
      │     ▼
      │   Founder Decision → Execute
      │
      ├── HIGH (<4h)
      │     │
      │     ▼
      │   Pause Activity + Prepare Analysis
      │     │
      │     ▼
      │   Flag in Daily Brief → Founder Review
      │     │
      │     ▼
      │   Decision: Resume / Modify / Kill
      │
      ├── MEDIUM (<24h)
      │     │
      │     ▼
      │   Document + Propose Solutions
      │     │
      │     ▼
      │   Include in Next Report → Founder Review
      │
      └── LOW (<1 week)
            │
            ▼
          Self-Action + Document
            │
            ▼
          Include in Monthly Review → Founder Awareness
```

---

## Post-Escalation Protocol

### Sau moi escalation (bat cu muc do nao):

1. **Document** — Ghi nhan van de, root cause, action taken, result
2. **Lesson Extract** — Rút kinh nghiệm: lam gi de tranh lap lai?
3. **SOP Update** — Can update SOP khong? Neu co → propose change
4. **Skill Update** — Can update AI skill config khong? Neu co → propose
5. **Knowledge Base** — Them vao knowledge base cho future reference

### Lesson Template

```
## Lesson Learned — [Date]

**Incident:** [Brief description]
**Severity:** [Critical/High/Medium/Low]
**Root Cause:** [Why it happened]
**Action Taken:** [What was done]
**Result:** [Outcome]
**Prevention:** [How to prevent in future]
**SOP Update Needed:** [Yes/No — if yes, which SOP]
**Skill Update Needed:** [Yes/No — if yes, which skill]
```

---

## Brand Crisis Escalation (Special Protocol)

### Trigger
- Negative media coverage
- Viral negative social post about AINS
- Client data leak (even suspected)
- Major product/service failure

### Protocol

```
PHASE 1: IMMEDIATE (<30 min)
├── Stop ALL scheduled marketing activities
├── Notify Founder (Slack + Phone)
├── Gather facts (what happened, who affected, scope)
└── Prepare holding statement draft

PHASE 2: ASSESSMENT (<2h)
├── Founder reviews facts
├── Decide: Respond publicly / Monitor / Take legal action
├── If respond: Founder approves response text
└── AI prepares response draft + FAQ

PHASE 3: RESPONSE (<4h)
├── Publish approved response on appropriate channel
├── Monitor reaction (every 30 min for first 4h)
├── Flag any escalation of the crisis
└── Update internal FAQ for team

PHASE 4: RECOVERY (<1 week)
├── Monitor sentiment recovery
├── Compile incident report
├── Extract lessons → Knowledge base
├── Update Brand Policy if needed
└── Resume normal operations (Founder approval)
```

### During Crisis — AI Worker Rules

- AI KHONG DUOC tu phat bai public
- AI KHONG DUOC respond truc tiep den negative comments (tru "cam on ban da phan hoi, chung toi dang xu ly")
- AI CHI duoc draft responses cho Founder review
- AI LUON LUON document timeline va actions taken

---

## Budget Escalation

| Threshold | Action | Approval |
|-----------|--------|----------|
| Ad spend < $100/run | AI self-manage within budget | Auto |
| Ad spend $100-500/run | Flag + request approval | Founder |
| Ad spend > $500/run | Detailed proposal + ROI projection | Founder |
| Monthly total > $1,000 | Comprehensive budget review | Founder |
| Any unbudgeted expense | Flag immediately | Founder |

---

## Decision Authority Quick Reference

| Decision | AI Auto | Founder Approval |
|----------|---------|-----------------|
| Post routine social content | Yes | No |
| Post blog article | No | Yes (always) |
| Send email campaign | No | Yes (always) |
| Pause underperforming campaign | Yes (if >24h data) | Notify |
| Create new content format | No | Yes |
| Modify content calendar | Yes (minor) | Yes (major) |
| Respond to positive comment | Yes | No |
| Respond to negative comment | No | Yes (always) |
| Approve AI output quality | N/A | Yes (always) |
| Spend budget < $100 | Yes | No |
| Spend budget >= $100 | No | Yes (always) |

---

*KWSR Layer: R (Rules) | Marketing Escalation Rules v1.0 | Marketing Function*
