-- monthly_sales_summary.sql
-- Purpose: Total sales by region for a given month.
-- Owner: Sales Reporting team

SELECT
    region,
    COUNT(DISTINCT order_id)  AS orders,
    SUM(order_amount)         AS total_sales
FROM sales.orders
WHERE order_date >= '2026-09-01'
  AND order_date <  '2026-09-30'   -- month end
  AND status <> 'CANCELLED'
GROUP BY region
ORDER BY total_sales DESC;
