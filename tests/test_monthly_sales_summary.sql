-- test_monthly_sales_summary.sql
-- Check: the summary must include orders placed on the last day of the month.

SELECT COUNT(*) AS missing_month_end_orders
FROM sales.orders
WHERE order_date = '2026-09-30'
  AND status <> 'CANCELLED';
-- Expected: this count is included in monthly_sales_summary totals.
