-- Exercise dm1-1 · Lesson 1: Why model data? Start with the grain
-- Dataset: shop
--
-- How many orders contain more than one order line? Return a single column orders.
--
-- Hint: Inside the subquery: GROUP BY order_id HAVING COUNT(*) > 1.

SELECT COUNT(*) AS orders
FROM (
  SELECT order_id
  FROM order_items
  
) AS t;
