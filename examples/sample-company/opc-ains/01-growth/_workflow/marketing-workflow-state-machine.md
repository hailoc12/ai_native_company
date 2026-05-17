# Marketing Workflow State Machine — Operational Guide

**Version:** 1.0 | **Updated:** 2026-05-12 | **Owner:** Marketing AI

---

## State Machine Overview

Moi marketing SOP dieu hanh theo state machine chuan:

```
INPUT → PROCESSING/ai-draft → PROCESSING/human-review → OUTPUT → ARCHIVE/[YYYY-MM]/
```

### State Definitions

| State | Folder | Meaning | AI Action | Human Action |
|-------|--------|---------|-----------|--------------|
| **INPUT** | `input/` | Files cho xu ly, moi nhan | Nhan task, doc brief | Gui request |
| **AI-DRAFT** | `processing/ai-draft/` | AI dang xu ly | Tao draft output | Cho |
| **HUMAN-REVIEW** | `processing/human-review/` | Can nguoi review | Submit review package | Review + approve/reject |
| **OUTPUT** | `output/` | Ket qua cuoi cung | Format + finalize | Nhan ket qua |
| **ARCHIVE** | `archive/[YYYY-MM]/` | Da hoan thanh | Archive + cleanup | N/A |

---

## Marketing Workflow Map

### Workflow 1: Content Creation Pipeline

```
SOP-GROW-001: Tao noi dung marketing
═══════════════════════════════════

[Monday 08:00] CONTENT PLANNING
       │
       ▼
   INPUT/
   ├── Content brief (type, topic, keywords, CTA)
   ├── Keyword data (tu SEO AI)
   ├── Brand Policy reference
   └── Previous month performance data
       │
       ▼
[08:15] AI DRAFT GENERATION
       │
       ▼
   PROCESSING/ai-draft/
   ├── Draft content (blog/social/email)
   ├── SEO checklist completed
   ├── Self-review score
   └── Suggested publish time
       │
       │  Score >= 4.0?
       │  YES ──────────────────┐
       │  NO                   │
       ▼                       │
   AI Revision                 │
   (max 2 rounds)              │
       │                       │
       ▼                       ▼
   PROCESSING/human-review/
   ├── Review package
   ├── Draft + brief + checklist
   └── Review notes
       │
       │  Founder reviews (SLA: 24h)
       │  Approve / Reject
       ▼
   OUTPUT/
   ├── Final formatted content
   ├── Scheduled publish confirmation
   └── Analytics AI notification
       │
       ▼ [End of month]
   ARCHIVE/[YYYY-MM]/
   └── {type}_{topic-slug}_{YYYY-MM-DD}.md
```

### Workflow 2: Social Media Daily Loop

```
SOP-GROW-002: Quan ly social media
═══════════════════════════════════

[Daily 08:00] SCHEDULING
       │
       ▼
   INPUT/
   ├── Approved social posts (tu SOP-GROW-001 output)
   ├── Content calendar
   └── Optimal posting times data
       │
       ▼
[08:30] POST SCHEDULING
   ├── Schedule posts qua tool
   └── Log schedule vao input/
       │
       ▼
[3x/day] MONITORING & ENGAGEMENT
       │
       ▼
   PROCESSING/ai-draft/
   ├── Responses to comments (positive → auto)
   ├── Responses to questions (draft)
   ├── DM classifications (prospect → Sales AI)
   └── Flagged items (negative, sensitive)
       │
       │  Routine?     Sensitive?
       │  YES          YES
       ▼              ▼
   Auto-publish    PROCESSING/human-review/
                      └── Flagged items for Founder
                             │
                             ▼  Founder reviews
                         OUTPUT/
                         ├── Published responses
                         ├── Daily social summary
                         └── Lead handoff to Sales AI
       │
       ▼ [Friday]
   Weekly Optimization
   └── Compile analytics → Analytics AI
       │
       ▼ [End of month]
   ARCHIVE/[YYYY-MM]/
```

### Workflow 3: Email Campaign Pipeline

```
SOP-GROW-003: Email marketing automation
════════════════════════════════════════

[Trigger] CAMPAIGN PLANNING
       │
       ▼
   INPUT/
   ├── Campaign plan (type, segment, goals)
   ├── Subscriber list & segment data
   ├── Campaign calendar
   └── Previous campaign performance
       │
       ▼
   PROCESSING/ai-draft/
   ├── Subject line variants (3 options)
   ├── Email body draft
   ├── A/B test configuration
   └── Segment configuration
       │
       ▼
   PROCESSING/human-review/
   ├── Review package
   ├── Test email sent
   └── Founder approval (SLA: 12h)
       │
       ▼
   OUTPUT/
   ├── Campaign sent/scheduled
   ├── Real-time monitoring (2h dau)
   ├── A/B test results (sau 24h)
   └── Campaign performance report
       │
       ▼ [48h sau campaign end]
   OPTIMIZATION
   └── Final report + insights + archive
       │
       ▼
   ARCHIVE/[YYYY-MM]/
```

### Workflow 4: Marketing Reporting Cycle

```
SOP-GROW-006: Bao cao hieu suat marketing
═════════════════════════════════════════

[Daily 08:00] DATA COLLECTION
       │
       ▼
   INPUT/
   ├── GA data (traffic, behavior)
   ├── CRM data (pipeline, deals)
   ├── Social platform data
   ├── Email platform data
   └── SEO tool data
       │
       ▼
   PROCESSING/ai-draft/
   ├── Data validation & cleaning
   ├── Analysis (daily/weekly/monthly depth)
   ├── Report draft
   └── Insights & recommendations
       │
       ▼
   PROCESSING/human-review/
   └── Founder review (Daily: 5min, Weekly: 15min, Monthly: 30min)
       │
       ▼
   OUTPUT/
   ├── Report distributed (Slack/Email)
   ├── Dashboard updated
   ├── Alerts triggered (if KPIs off-target)
   └── Raw data archived
       │
       ▼ [End of month]
   ARCHIVE/[YYYY-MM]/
```

---

## Cross-Workflow Dependencies

```
SEO AI Research ──────► Content Brief ──────► Content Creation
                                                   │
                              ┌────────────────────┤
                              ▼                    ▼
                        Social Media          Email Campaign
                              │                    │
                              ▼                    ▼
                         Social Output        Email Output
                              │                    │
                              └────────┬───────────┘
                                       ▼
                               Analytics AI
                            (Data Collection)
                                       │
                                       ▼
                              Performance Report
                                       │
                                       ▼
                              Founder Review
                                       │
                              ┌────────┼────────┐
                              ▼        ▼        ▼
                         Lessons   SOP Update  Strategy
                         Capture   (if needed) Adjustment
```

---

## Workflow Scheduling Matrix

### Daily Tasks

| Time | Workflow | Worker | Task | Folder |
|------|----------|--------|------|--------|
| 08:00 | W1 Content | Content Mgr | Content planning + brief | `create-content/input/` |
| 08:00 | W4 Reporting | Analytics AI | Daily data pull | `marketing-reporting/input/` |
| 08:15 | W1 Content | Content Mgr | Draft content | `create-content/processing/ai-draft/` |
| 08:30 | W2 Social | Content Mgr | Schedule posts | `manage-social-media/input/` |
| 09:15 | W1 Content | Content Mgr | Submit for review | `create-content/processing/human-review/` |
| 09:30 | W3 Email | Content Mgr | Email campaign work | `email-marketing/processing/ai-draft/` |
| 10:00 | W2 Social | Content Mgr | Monitor engagement (1) | `manage-social-media/processing/ai-draft/` |
| 12:00 | W2 Social | Content Mgr | Monitor engagement (2) | `manage-social-media/processing/ai-draft/` |
| 17:00 | W4 Reporting | Analytics AI | Update dashboard | `marketing-reporting/output/` |
| 20:00 | W2 Social | Content Mgr | Monitor engagement (3) | `manage-social-media/processing/ai-draft/` |

### Weekly Tasks

| Day | Workflow | Worker | Task |
|-----|----------|--------|------|
| Monday | W4 Reporting | Analytics AI | Weekly performance report |
| Monday | W1 Content | SEO Writer | Keyword research for next week |
| Tuesday | W1 Content | SEO Writer | SEO audit last week's posts |
| Wednesday | W1 Content | SEO Writer | Technical SEO check |
| Thursday | W1 Content | SEO Writer | Competitor analysis |
| Friday | W1 Content | Content Mgr | Content brief for next week |
| Friday | W2 Social | Content Mgr | Weekly social optimization |
| Friday | W4 Reporting | SEO Writer | Weekly SEO report → Analytics AI |

### Monthly Tasks

| Time | Workflow | Worker | Task |
|------|----------|--------|------|
| 1st | W4 Reporting | Analytics AI | Monthly comprehensive report |
| 1st | W1 Content | Content Mgr | Archive all outputs |
| 1st | W3 Email | Content Mgr | Email performance review |
| 1st | W1 Content | Content Mgr | Next month content calendar |

---

## Workflow Health Check

### Weekly Verification (Friday)

- [ ] Tat ca SOP folders co file trong dung state (khong bi stuck)
- [ ] Processing/ khong co file > 48h (stale drafts)
- [ ] Output/ khong chua file > 7 ngay (can archive)
- [ ] Archive/ monthly folder ton tai va co files
- [ ] Naming convention dung cho moi file

### Stale File Rules

| State | Max Time | Action if Exceeded |
|-------|----------|-------------------|
| INPUT | 24h | Escalate — task bi tre |
| PROCESSING/ai-draft | 48h | Check blocker, escalate neu can |
| PROCESSING/human-review | 24h (SLA) | Reminder to Founder |
| OUTPUT | 7 ngay | Auto-archive |
| ARCHIVE | Unlimited | No action |

---

## Naming Conventions

### File Naming Pattern

```
{type}_{topic-slug}_{YYYY-MM-DD}.{ext}

Examples:
  blog_ai-chuyen-doi-so-sme_2026-05-05.md
  social_linkedin_ai-workforce_2026-05-06.md
  email_newsletter_may-week1_2026-05-01.md
  report_weekly_growth_2026-W18.md
  seo_keyword-research_may_2026-05-01.md
```

### Folder Structure Per SOP

```
[workflow-folder]/
├── template/
│   └── sop_[name]_v[X.Y].md          ← SOP source of truth (READ-ONLY)
├── input/                              ← Files cho xu ly
├── processing/
│   ├── ai-draft/                       ← AI working drafts
│   └── human-review/                   ← Pending human review
├── output/                             ← Final approved outputs
└── archive/
    └── [YYYY-MM]/                      ← Completed runs
```

---

*KWSR Layer: W (Workflow) | Marketing Workflow State Machine v1.0 | Updated: 2026-05-12*
