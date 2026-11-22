-- Exercise dm2-2 · Lesson 2: Fact tables
-- Dataset: shop
--
-- Using your fact as a CTE called fct, show revenue per channel (from orders) as revenue,
-- rounded to 2 decimals. Hint: add o.channel to the fact.
--
-- Hint: SELECT channel, ROUND(SUM(line_value), 2) AS revenue FROM fct GROUP BY channel

WITH fct AS (
  SELECT o.order_id, o.channel, i.quantity * i.unit_price AS line_value
  FROM orders AS o
  JOIN order_items AS i ON i.order_id = o.order_id
  WHERE o.status = 'delivered'
)
SELECT 
