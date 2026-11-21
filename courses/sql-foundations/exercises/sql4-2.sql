-- Exercise sql4-2 · Lesson 4: Joining tables
-- Dataset: shop
--
-- Which customers have never placed an order? Show their customer_id and first_name.
--
-- Hint: LEFT JOIN orders, then keep only rows WHERE o.order_id IS NULL.

SELECT c.customer_id, c.first_name
FROM customers AS c

