-- Exercise jb3-2 · Lesson 3: SQL interview classics
-- Dataset: shop
--
-- Retention: how many customers placed an order in 2025 and at least one order in 2026?
-- Return customers.
--
-- Hint: WHERE customer_id IN (SELECT customer_id FROM orders WHERE year(order_date) = 2026)

SELECT COUNT(*) AS customers
FROM (
  SELECT DISTINCT customer_id FROM orders WHERE year(order_date) = 2025
) AS y25
WHERE 
