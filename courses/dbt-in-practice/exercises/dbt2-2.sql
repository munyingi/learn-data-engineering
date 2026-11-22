-- Exercise dbt2-2 · Lesson 2: Tests that catch real problems
-- Dataset: shop
--
-- Write the relationships test: return the order_id and customer_id of every order whose
-- customer does not exist in customers.
--
-- Hint: After a LEFT JOIN, a missing match shows up as c.customer_id IS NULL.

SELECT o.order_id, o.customer_id
FROM orders AS o
LEFT JOIN customers AS c ON c.customer_id = o.customer_id
WHERE 
