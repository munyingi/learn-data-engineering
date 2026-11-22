-- Exercise jb3-1 · Lesson 3: SQL interview classics
-- Dataset: shop
--
-- Top N per group: the 2 best-selling products in each category by revenue from delivered
-- orders. Return category, product_name and revenue (rounded to 2 decimals). Break ties by
-- product_name.
--
-- Hint: QUALIFY ROW_NUMBER() OVER (PARTITION BY category ORDER BY revenue DESC, product_name) <= 2

WITH revenue AS (
  SELECT p.category, p.product_name, ROUND(SUM(i.quantity * i.unit_price), 2) AS revenue
  FROM order_items AS i
  JOIN orders AS o ON o.order_id = i.order_id
  JOIN products AS p ON p.product_id = i.product_id
  WHERE o.status = 'delivered'
  GROUP BY p.category, p.product_name
)
SELECT category, product_name, revenue
FROM revenue

