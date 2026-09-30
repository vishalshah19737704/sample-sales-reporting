-- customer_churn.sql
-- Purpose: Customers with no orders in the last 90 days.

SELECT c.customer_id,
       c.customer_name,
       MAX(o.order_date) AS last_order_date
FROM sales.customers c
LEFT JOIN sales.orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING MAX(o.order_date) < CURRENT_DATE - INTERVAL '90 days';
