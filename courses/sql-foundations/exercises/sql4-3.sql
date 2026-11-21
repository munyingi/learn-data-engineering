-- Exercise sql4-3 · Lesson 4: Joining tables
-- Dataset: shop
--
-- Calculate revenue per product category as revenue: the sum of quantity * unit_price
-- across all order lines, rounded to 2 decimals.
--
-- Hint: ROUND(SUM(i.quantity * i.unit_price), 2) AS revenue, and GROUP BY p.category.

SELECT p.category, 
FROM order_items AS i
JOIN products AS p ON p.product_id = i.product_id

