-- Exercise dm5-3 · Lesson 5: Keeping history: slowly changing dimensions
-- Dataset: feeds
--
-- Which customers have lived in more than one city? Show customer_id and the number of
-- different cities as cities.
--
-- Hint: COUNT(DISTINCT city), GROUP BY customer_id, HAVING COUNT(DISTINCT city) > 1.

SELECT customer_id, 
FROM customer_history

