-- Exercise sql5-2 · Lesson 5: Subqueries and CTEs
-- Dataset: shop
--
-- Using a CTE, find the 10 customers who spent the most on delivered orders. Show
-- customer_id, first_name and total_spend (rounded to 2 decimals), highest first.
--
-- Hint: Filter WHERE o.status = 'delivered' in the CTE, then join the CTE to customers, ORDER BY total_spend DESC LIMIT 10.

WITH spend AS (
  SELECT o.customer_id, SUM(i.quantity * i.unit_price) AS total_spend
  FROM orders AS o
  JOIN order_items AS i ON i.order_id = o.order_id
  WHERE 
  GROUP BY o.customer_id
)
SELECT 
