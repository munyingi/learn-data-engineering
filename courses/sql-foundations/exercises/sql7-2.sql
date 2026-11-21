-- Exercise sql7-2 · Lesson 8: Mini project: the monthly report
-- Dataset: shop
--
-- Best seller per category. By units sold (sum of quantity) across delivered orders, show
-- the top product in each category: category, product_name and units. If two products tie,
-- show both.
--
-- Hint: Add a second CTE with RANK() OVER (PARTITION BY category ORDER BY units DESC), then keep rank 1.

WITH units AS (
  SELECT p.category, p.product_name, SUM(i.quantity) AS units
  FROM order_items AS i
  JOIN orders AS o ON o.order_id = i.order_id
  JOIN products AS p ON p.product_id = i.product_id
  WHERE o.status = 'delivered'
  GROUP BY p.category, p.product_name
)

