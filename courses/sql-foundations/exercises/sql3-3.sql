-- Exercise sql3-3 · Lesson 4: Counting and summarising
-- Dataset: shop
--
-- Which cities have more than 20 customers? Show city and the number of customers as
-- customers. Leave out customers with no city.
--
-- Hint: WHERE city IS NOT NULL, GROUP BY city, then HAVING COUNT(*) > 20.

SELECT city, COUNT(*) AS customers
FROM customers

