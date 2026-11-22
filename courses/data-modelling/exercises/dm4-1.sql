-- Exercise dm4-1 · Lesson 4: The star schema
-- Dataset: shop
--
-- Using the fact and dimensions, show delivered revenue by customer country and product
-- category, as revenue rounded to 2 decimals.
--
-- Hint: Join fct to customers and products, then GROUP BY c.country, p.category.

WITH fct AS (
  SELECT o.customer_id, i.product_id, i.quantity * i.unit_price AS line_value
  FROM orders AS o JOIN order_items AS i ON i.order_id = o.order_id
  WHERE o.status = 'delivered'
)
SELECT 
