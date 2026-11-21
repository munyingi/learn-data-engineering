-- Exercise sql4-1 · Lesson 4: Joining tables
-- Dataset: shop
--
-- For every order, show order_id, order_date and the customer's first_name.
--
-- Hint: JOIN customers AS c ON c.customer_id = o.customer_id

SELECT o.order_id, o.order_date, c.first_name
FROM orders AS o

