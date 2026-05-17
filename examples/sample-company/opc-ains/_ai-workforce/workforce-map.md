# AI Workforce Map — Full 10 Workers

**Version:** 1.0
**Last updated:** 2026-05-01

---

## Growth Department (4 AI Workers)

### AI-01: AI Sales Rep
| Field | Detail |
|-------|--------|
| **Role** | Lead qualification, outreach, proposal drafting |
| **Primary Goal** | Generate 15+ qualified leads/month, close 2-3 deals |
| **Tools** | Claude Project (sales context), LinkedIn, Email |
| **SOPs** | SOP-GRO-001 (Lead Generation), SOP-GRO-002 (Lead Qualification), SOP-GRO-006 (Proposal Creation) |
| **Build Method** | TEMPLATED |
| **Status** | Active (deployed Feb 2026) |
| **Quality Score** | 4.3/5.0 |
| **Escalation** | Discount >10%, legal questions, revenue commitments |

### AI-02: AI Content Manager
| Field | Detail |
|-------|--------|
| **Role** | Content strategy, editorial calendar, content ops coordination |
| **Primary Goal** | Deliver 14+ content pieces/month, manage editorial calendar |
| **Tools** | Claude Project (content context), Notion, Canva |
| **SOPs** | SOP-GRO-003 (Content Planning), SOP-GRO-004 (Content Review) |
| **Build Method** | EXPERT-CLONE (modeled on content marketing expert) |
| **Status** | Active (deployed Feb 2026) |
| **Quality Score** | 4.2/5.0 |

### AI-03: AI Content Writer
| Field | Detail |
|-------|--------|
| **Role** | Blog posts, newsletters, case studies, long-form content |
| **Primary Goal** | Write 4+ blog posts, 4 newsletters, 1 case study per month |
| **Tools** | Claude Project (brand voice + templates), Cursor |
| **SOPs** | SOP-GRO-005 (Content Writing), SOP-GRO-006 (Brand Voice Compliance) |
| **Build Method** | TEMPLATED + fine-tuned for Vietnamese content |
| **Status** | Active (deployed Mar 2026) |
| **Quality Score** | 3.8/5.0 (needs prompt tuning) |
| **Note** | Quality inconsistent — scheduled for prompt optimization in W19 |

### AI-04: AI Social Media Manager
| Field | Detail |
|-------|--------|
| **Role** | LinkedIn, Facebook, Zalo management, engagement, analytics |
| **Primary Goal** | 8+ social posts/week, respond to comments within 4h, grow followers |
| **Tools** | Claude Project (social context), Canva, LinkedIn |
| **SOPs** | SOP-GRO-007 (Social Media Management), SOP-GRO-008 (Engagement Protocol) |
| **Build Method** | TEMPLATED |
| **Status** | Active (deployed Mar 2026) |
| **Quality Score** | 4.4/5.0 |

---

## Delivery Department (3 AI Workers)

### AI-05: AI Project Manager
| Field | Detail |
|-------|--------|
| **Role** | Project coordination, timeline management, client communication |
| **Primary Goal** | On-time delivery 95%+, client satisfaction 4.5+/5 |
| **Tools** | Claude Project (project context), Notion, Email |
| **SOPs** | SOP-DEL-001 (Project Onboarding), SOP-DEL-002 (Project Execution), SOP-DEL-003 (Client Communication), SOP-DEL-005 (Client Handover) |
| **Build Method** | GPS-ENHANCED |
| **Status** | Active (deployed Jan 2026) |
| **Quality Score** | 4.5/5.0 |
| **Note** | Top performer — most tasks completed, highest quality |

### AI-06: AI Technical Consultant
| Field | Detail |
|-------|--------|
| **Role** | Technical delivery, analysis, code, ML model building |
| **Primary Goal** | Deliver technical outputs with 90%+ accuracy |
| **Tools** | Claude Project (tech context), Cursor, Python, Jupyter |
| **SOPs** | SOP-DEL-004 (Technical Delivery), SOP-DEL-006 (Code Review), SOP-DEL-007 (Documentation) |
| **Build Method** | EXPERT-CLONE (modeled on senior data scientist) |
| **Status** | Active (deployed Feb 2026) |
| **Quality Score** | 4.7/5.0 |
| **Note** | Highest quality score across all workers |

### AI-07: AI Quality Reviewer
| Field | Detail |
|-------|--------|
| **Role** | Output quality review, SOP compliance checking, fact-checking |
| **Primary Goal** | Catch 95%+ quality issues before client delivery |
| **Tools** | Claude Project (quality standards + SOPs) |
| **SOPs** | SOP-DEL-008 (Quality Review Process), SOP-DEL-009 (Fact-Checking Protocol) |
| **Build Method** | GPS-ENHANCED |
| **Status** | Active (deployed Mar 2026) |
| **Quality Score** | 4.6/5.0 |

---

## Backoffice Department (3 AI Workers)

### AI-08: AI Finance Manager
| Field | Detail |
|-------|--------|
| **Role** | Bookkeeping, invoicing, financial reporting, cash flow management |
| **Primary Goal** | Accurate financial tracking, timely invoicing, monthly reports |
| **Tools** | Claude Project (financial context), Google Sheets, MISA |
| **SOPs** | SOP-BKO-001 (Invoicing), SOP-BKO-002 (Financial Reporting), SOP-BKO-003 (Cash Flow Management) |
| **Build Method** | TEMPLATED |
| **Status** | Active (deployed Jan 2026) |
| **Quality Score** | 4.4/5.0 |

### AI-09: AI HR/Admin
| Field | Detail |
|-------|--------|
| **Role** | Scheduling, admin tasks, compliance, CEO productivity support |
| **Primary Goal** | Handle 95%+ admin tasks without CEO intervention |
| **Tools** | Claude Project (admin context), Google Calendar, Gmail |
| **SOPs** | SOP-BKO-004 (Scheduling), SOP-BKO-005 (Admin Tasks), SOP-BKO-006 (Compliance) |
| **Build Method** | TEMPLATED |
| **Status** | Active (deployed Feb 2026) |
| **Quality Score** | 4.2/5.0 |

### AI-10: AI Knowledge Manager
| Field | Detail |
|-------|--------|
| **Role** | Knowledge base maintenance, SOP updates, research, learning |
| **Primary Goal** | Maintain 30+ KB articles, update SOPs monthly, research support |
| **Tools** | Claude Project (knowledge context), Notion, DEVONthink |
| **SOPs** | SOP-BKO-007 (Knowledge Management), SOP-BKO-008 (SOP Maintenance), SOP-BKO-009 (Research Protocol) |
| **Build Method** | GPS-ENHANCED |
| **Status** | Active (deployed Apr 2026) |
| **Quality Score** | 4.0/5.0 |
| **Note** | Newest worker, still in optimization phase |

---

## Worker Dependency Map

```
                    CEO
                     |
                Company GPS
                     |
    ┌────────────────┼────────────────┐
    |                |                |
  Growth          Delivery        Backoffice
    |                |                |
  AI-01 ──→ AI-05 (leads → projects)
  AI-02 ──→ AI-03 (assigns writing tasks)
  AI-03 ──→ AI-07 (content → quality check)
  AI-04 ──→ AI-03 (social insights → content ideas)
  AI-05 ──→ AI-06 (coordination → tech delivery)
  AI-06 ──→ AI-07 (tech output → quality review)
  AI-07 ──→ CEO (escalation if quality <4.0)
  AI-08 ──→ AI-05 (invoices → project tracking)
  AI-09 ──→ CEO (schedule optimization)
  AI-10 ──→ All (knowledge support)
```

---
*Workforce Map v1.0 | Updated monthly | Next review: June 2026*
