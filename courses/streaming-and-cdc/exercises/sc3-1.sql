-- Exercise sc3-1 · Lesson 3: Out-of-order and late events
-- Dataset: feeds
--
-- Sorted by received_at (then lsn), which events arrived with a lower lsn than the event
-- received just before them? Return lsn and order_id.
--
-- Hint: WHERE lsn < previous_lsn

WITH arrivals AS (
  SELECT lsn, order_id, LAG(lsn) OVER (ORDER BY received_at, lsn) AS previous_lsn
  FROM order_events
)
SELECT lsn, order_id
FROM arrivals
WHERE 
