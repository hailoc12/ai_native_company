# _workflow — Knowledge Acquisition Department

## SOP Index

| SOP | Process | Type | AI Worker | Input | Output | Dependency |
|-----|---------|------|-----------|-------|--------|-----------|
| SOP-KA-001 | Capture Source | OPERATIONAL | — | External sources | Fleeting notes in inbox | — |
| SOP-KA-002 | Curate Input | OPERATIONAL | AI AUGMENT | `#inbox` notes | `#import-ready` notes | After KA-001 |
| SOP-KA-003 | Import to Vault | OPERATIONAL | AI WORKFORCE | `#import-ready` | Vault inbox notes | After KA-002 |

## SOP Coverage: 3/3 (100%)

## Workflow Sequence
```
External Source 
    → [SOP-KA-001] → Fleeting Note (inbox)
    → [SOP-KA-002] → Curated Note (#import-ready)
    → [SOP-KA-003] → Vault Note (#needs-processing)
    → [SOP-KP-001] Knowledge Processing team...
```

## Trigger Events
| Trigger | SOP | Who |
|---------|-----|-----|
| Encounter interesting content | KA-001 | Any member |
| Inbox > 20 items | KA-002 | Source Curator |
| Inbox approaching EOD | KA-003 | Capture Specialist |
