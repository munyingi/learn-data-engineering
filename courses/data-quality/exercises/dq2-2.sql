-- Exercise dq2-2 · Lesson 2: Duplicates
-- Dataset: feeds
--
-- Which reloaded orders changed status between loads? Show order_id, the status in the
-- first load as first_status and in the last load as last_status, only where they differ.
--
-- Hint: arg_max(status, loaded_at) gives the status of the latest load. Filter groups with HAVING first <> last.

SELECT order_id,
  arg_min(status, loaded_at) AS first_status,
  
FROM raw_orders_feed
GROUP BY order_id

