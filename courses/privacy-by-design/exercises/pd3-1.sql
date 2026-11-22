-- Exercise pd3-1 · Lesson 3: Minimisation and safe aggregates
-- Dataset: feeds
--
-- Build a safe report: city, birth_decade and customers, joining customers to
-- customer_contacts, and keeping only groups with at least 5 customers. (Leave out
-- customers with no city.)
--
-- Hint: WHERE c.city IS NOT NULL, GROUP BY ALL, HAVING COUNT(*) >= 5

SELECT c.city, cc.birth_year // 10 * 10 AS birth_decade, COUNT(*) AS customers
FROM customers AS c
JOIN customer_contacts AS cc ON cc.customer_id = c.customer_id

