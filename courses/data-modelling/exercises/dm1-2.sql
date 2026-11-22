-- Exercise dm1-2 · Lesson 1: Why model data? Start with the grain
-- Dataset: shop
--
-- Test the grain of order_items: it should have one row per order_id and product_id.
-- Return one column duplicate_pairs: how many pairs appear more than once (the right
-- answer for a good table is 0).
--
-- Hint: GROUP BY order_id, product_id HAVING COUNT(*) > 1 inside the subquery.

SELECT COUNT(*) AS duplicate_pairs
FROM (
  
) AS t;
