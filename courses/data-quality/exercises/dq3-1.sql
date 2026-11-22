-- Exercise dq3-1 · Lesson 3: Late data and gaps
-- Dataset: feeds
--
-- Count the rows that arrived 3 or more days after their order_date. Return one column,
-- late_rows.
--
-- Hint: date_diff('day', order_date, loaded_at::DATE) >= 3

SELECT COUNT(*) AS late_rows
FROM raw_orders_feed
WHERE 
