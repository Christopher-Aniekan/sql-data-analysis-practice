# sql-data-analysis-practice
Monthly revenue analysis using SQL window functions, CTEs, percentage change calculations, and revenue trend classification to identify the month with the highest percentage increase.
### Monthly Revenue Analysis

**Objective**

Analyze monthly revenue data to identify revenue trends and determine which month had the highest percentage increase compared with the previous month.

**SQL Concepts Used**
- Common Table Expressions (CTEs)
- Window functions: `LAG()`
- Percentage change calculations
- `NULLIF()` for handling division by zero
- `CASE` expressions for revenue classification
- Filtering with `WHERE`
- Sorting with `ORDER BY`
- Limiting results with `LIMIT`

**Analysis Performed**

1. Retrieved the previous month's revenue.
2. Calculated month-over-month percentage changes.
3. Classified revenue trends as `Increased`, `Decreased`, `No Change`, or `No Previous Month`.
4. Identified the month with the highest percentage increase.

**Key Finding**

April 2026 had the highest month-over-month percentage increase in the sample dataset, at approximately 33.33%.

**File:** `monthly_revenue_analysis.sql`
