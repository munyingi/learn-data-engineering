-- Exercise sql2-3 · Lesson 3: Filtering and sorting
-- Dataset: shop
--
-- Not every customer gave a city. Show the customer_id and first_name of customers with no
-- city.
--
-- Hint: Remember: = NULL never matches. Use IS NULL.

SELECT customer_id, first_name
FROM customers
WHERE 
