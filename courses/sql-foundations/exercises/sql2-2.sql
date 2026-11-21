-- Exercise sql2-2 · Lesson 3: Filtering and sorting
-- Dataset: shop
--
-- Find Business customers who live in Helsinki or Espoo. Show customer_id, first_name and
-- city.
--
-- Hint: segment = 'Business' AND city IN ('Helsinki', 'Espoo')

SELECT customer_id, first_name, city
FROM customers
WHERE 
