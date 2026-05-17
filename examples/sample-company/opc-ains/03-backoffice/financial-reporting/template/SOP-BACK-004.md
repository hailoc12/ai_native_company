# SOP-BACK-004: Bao cao tai chinh thang

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Finance AI

---

## 1. Muc dich

Tao bao cao tai chinh hang thang toan dien, bao gom Profit & Loss, Cash Flow, Balance Sheet va KPI tracking, giup CEO hinh dung ro net suc khoe tai chinh cua AINS.

## 2. Pham vi

- Ap dung cho: Bao cao tai chinh hang thang, quy, nam
- Ap dung tu: Cuoi moi thang (deadline: ngay 5 thang sau)
- Nguoi nhan: CEO

## 3. Vai tro (RACI)

| Vai tro | nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Finance AI | Thu thap data, tao bao cao |
| **A** — Accountable | CEO | Review va approve |
| **C** — Consulted | Admin AI, HR AI | Chi phi, workforce data |
| **I** — Informed | CEO | Nhan bao cao |

## 4. IPO Analysis

### Input
- Revenue log thang (SOP-BACK-001)
- Expense tracking thang (SOP-BACK-002)
- Invoice data (SOP-BACK-003)
- Bank statements
- Previous month financial report

### Process
1. Thu thap du lieu tu tat ca nguon
2. Tong hop doanh thu
3. Tong hop chi phi
4. Tinh P&L
5. Tao Cash Flow statement
6. Cap nhat Balance Sheet
7. Tinh KPIs
8. Viet CEO brief
9. Gui cho CEO review

### Output
- Monthly financial report (trong `output/financial-report_monthly_YYYY-MM.md`)
- CEO financial brief (trong `output/ceo-financial-brief_YYYY-MM.md`)
- KPI dashboard update

## 5. Quy trinh chi tiet

### 5.1 Timeline
| Ngay | Hoat dong |
|------|-----------|
| Ngay 1 | Lock data thang truoc |
| Ngay 1-2 | Thu thap va tong hop |
| Ngay 2-3 | Tao bao cao |
| Ngay 3-4 | Review tu dong (Finance AI) |
| Ngay 5 | Gui CEO |
| Ngay 5-7 | CEO review & feedback |
| Ngay 7 | Final version |

### 5.2 P&L Structure
```
DOANH THU
  + Consulting Revenue
  + Training Revenue
  + Digital Products Revenue
  + Subscription Revenue
  = TONG DOANH THU

CHI PHI
  - Tools & Software
  - Infrastructure
  - Outsourcing
  - Administrative
  - Marketing
  = TONG CHI PHI

THUE
  - VAT payable
  - CIT provision
  = TONG THUE

NET PROFIT = Tong Doanh Thu - Tong Chi Phi - Thue
```

### 5.3 Cash Flow Structure
```
CASH FLOW FROM OPERATIONS
  + Cash received from customers
  - Cash paid to vendors
  - Cash paid for tools/subscriptions
  = Net Cash from Operations

CASH FLOW FROM INVESTING
  - Asset purchases
  = Net Cash from Investing

NET CASH CHANGE = Operations + Investing
CASH BEGINNING + NET CASH CHANGE = CASH ENDING
```

### 5.4 KPI Tracking
| KPI | Formula | Target |
|-----|---------|--------|
| Gross Margin | (Revenue - COGS) / Revenue | >70% |
| Net Margin | Net Profit / Revenue | >30% |
| Revenue Growth | (Rev this month - Rev last) / Rev last | >5% MoM |
| Burn Rate | Monthly OpEx | < budget |
| Runway | Cash / Burn Rate | >12 months |

## 6. Template & Checklist

### Monthly Close Checklist
- [ ] Tat ca giao dich da duoc ghi nhan
- [ ] Tat ca hoa don da xuat
- [ ] Tat ca chi phi da ghi nhan
- [ ] Bank reconciliation hoan tat
- [ ] P&L statement hoan tat
- [ ] Cash flow statement hoan tat
- [ ] Balance sheet cap nhat
- [ ] KPIs calculated
- [ ] Variance analysis hoan tat
- [ ] CEO brief da viet
- [ ] Report formatted va gui

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Report timeliness | 100% on-time | Monthly |
| Data accuracy | 99%+ | Monthly |
| CEO satisfaction | N/A | Quarterly feedback |

## 8. AI Integration Points

- **Finance AI** tu dong thu thap data tu tat ca nguon
- **Finance AI** tu dong tinh toan P&L, Cash Flow, KPIs
- **Finance AI** tu dong tao CEO brief voi insights
- **CEO** review trong 2h financial review weekly
- **Admin AI** cung cap expense data tu vendors

## 9. Upstream/Downstream SOPs

### Upstream
- SOP-BACK-001: Ke toan (revenue data)
- SOP-BACK-002: Chi phi (expense data)
- SOP-BACK-003: Hoa don (invoice & AR data)
- SOP-BACK-005: AI workforce (workforce cost data)

### Downstream
- CEO strategic decisions
- Quarterly tax filing
- Annual financial statements

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Finance AI |

---
*SOP-BACK-004 v1.0 — AAINS Backoffice*
