# SOP-BACK-007: Quan ly tai lieu

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Admin AI

---

## 1. Muc dich

Quan ly toan bo tai lieu cua AINS — bao gom SOPs, contracts, invoices, reports va tai lieu khac — dam bao duoc luu tru co cau truc, de truy xuat va duoc backup dinh ky.

## 2. Pham vi

- Ap dung cho: Tat ca tai lieu trong AINS folder structure
- Ap dung tu: Luc tao moi hoac nhan tai lieu
- Admin AI phu trach, CEO phe duyet thay doi chinh sach

## 3. Vai tro (RACI)

| Vai tro | nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Admin AI | Luu tru, indexing, archive |
| **A** — Accountable | CEO | Phe duyet chinh sach |
| **C** — Consulted | All AI workers | Document ownership |
| **I** — Informed | All staff | Document availability |

## 4. IPO Analysis

### Input
- Tai lieu moi (SOPs, contracts, invoices, reports)
- Tai lieu nhan tu ben ngoai (vendor docs, legal docs)
| Document change requests

### Process
1. Nhan tai lieu
2. Phan loai theo category
3. Dat ten theo convention
4. Luu vao dung thu muc
5. Cap nhat document register
6. Verify backup

### Output
- Document register (trong `output/document-register_YYYY-MM.md`)
- Filing audit report (trong `output/filing-audit_YYYY-MM.md`)
- Archived documents

## 5. Quy trinh chi tiet

### 5.1 Naming Convention
```
[loai]-[ma]-[mo-ta]_YYYY-MM-DD.ext

Vi du:
  SOP-BACK-001_ke-toan-doanh-thu_2026-05-07.md
  INV-2026-001_techcorp_2026-04-15.md
  RPT-financial_monthly_2026-04_2026-05-05.md
  CT-client-techcorp_2026-05-01.md
```

### 5.2 Category & Location
| Loai | Prefix | Thu muc |
|------|--------|---------|
| SOP | SOP- | [department]/[process]/template/ |
| Invoice | INV- | 03-backoffice/invoicing/output/ |
| Report | RPT- | [department]/reports/ |
| Contract | CT- | 03-backoffice/contract-management/output/ |
| Policy | POL- | 03-backoffice/policies/ |
| Template | TPL- | [department]/[process]/template/ |

### 5.3 Document Lifecycle
| Stage | Action | Duration |
|-------|--------|----------|
| Draft | Tao moi trong processing/ai-draft/ | <7 ngay |
| Review | Chuyen sang processing/human-review/ | <3 ngay |
| Approved | Chuyen sang output/ | Permanent |
| Archived | Chuyen sang archive/ | Permanent |
| Deleted | Khong xoa — luon archive | N/A |

### 5.4 Version Control
- Moi tai lieu co Version History section
- Tang minor version (1.0 -> 1.1) cho edits nho
- Tang major version (1.x -> 2.0) cho thay doi lon
- Luu version cu trong archive/

### 5.5 Document Register
- Cap nhat moi khi co tai lieu moi hoac thay doi
- Thong tin: ID, Ten, Category, Owner, Location, Version, Status, Last updated
- Monthly audit de verify

## 6. Template & Checklist

### Monthly Filing Audit Checklist
- [ ] Tat ca tai lieu moi da duoc luu tru
- [ ] Naming convention duoc follow
- [ ] Document register cap nhat
- [ ] Archive chuyen dung thu muc
- [ ] Backup verify
- [ ] Orphan files da xu ly
- [ ] Expired documents da archive

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Filing accuracy | >= 99% | Monthly audit |
| Naming compliance | 100% | Monthly audit |
| Register up-to-date | 100% | Monthly |
| Retrieval time | <5 min | Per document |

## 8. AI Integration Points

- **Admin AI** tu dong nhan dien tai lieu moi
- **Admin AI** tu dong dat ten theo convention
- **Admin AI** tu dong luu vao dung thu muc
- **Admin AI** tu dong cap nhat document register
- **CEO** review monthly audit

## 9. Upstream/Downstream SOPs

### Upstream
- Tat ca SOPs (tao tai lieu output)

### Downstream
- SOP-BACK-010: Backup & DR (backup tai lieu)
- SOP-BACK-012: Contract management (luu tru hop dong)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Admin AI |

---
*SOP-BACK-007 v1.0 — AINS Backoffice*
