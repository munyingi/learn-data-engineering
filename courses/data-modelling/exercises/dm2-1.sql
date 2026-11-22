-- Exercise dm2-1 · Lesson 2: Fact tables
-- Dataset: shop
--
-- Build the fact table for delivered orders with exactly these columns: order_id,
-- order_date, customer_id, product_id, quantity and line_value (quantity × unit_price).
--
-- Hint: Select the four keys, quantity, and i.quantity * i.unit_price AS line_value, with WHERE o.status = 'delivered'.

SELECT
  
FROM orders AS o
JOIN order_items AS i ON i.order_id = o.order_id
WHERE 
