-- Exercise cw2-1 · Lesson 2: What a query costs
-- Dataset: ops
--
-- At €5 per TB, what did each user cost in October? Return user_name and cost_eur rounded
-- to 2 decimals.
--
-- Hint: ROUND(SUM(bytes_scanned) / 1e12 * 5, 2)

SELECT user_name, 
FROM query_log

