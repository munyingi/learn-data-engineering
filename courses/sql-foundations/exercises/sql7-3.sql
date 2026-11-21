-- Exercise sql7-3 · Lesson 8: Mini project: the monthly report
-- Dataset: shop
--
-- Repeat customers. Of the customers who have placed at least one order, what share placed
-- two or more? Show one column, repeat_share_pct, as a percentage rounded to 1 decimal.
--
-- Hint: 100.0 * COUNT(*) FILTER (WHERE orders >= 2) / COUNT(*), or use SUM(CASE WHEN orders >= 2 THEN 1 ELSE 0 END).

WITH per_customer AS (
  SELECT customer_id, COUNT(*) AS orders
  FROM orders
  GROUP BY customer_id
)
SELECT 
