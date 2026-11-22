-- Exercise sc5-2 · Lesson 5: Mini project: full order history from CDC
-- Dataset: feeds
--
-- Customer service wants orders stuck in transit: orders whose current status is shipped
-- and that were shipped more than 7 days before 19 November 2026. Return order_id and
-- shipped_at.
--
-- Hint: status = 'shipped' AND changed_at < TIMESTAMP '2026-11-19' - INTERVAL 7 DAY

WITH latest AS (
  SELECT *
  FROM order_events
  QUALIFY ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY lsn DESC) = 1
)
SELECT order_id, changed_at AS shipped_at
FROM latest
WHERE 
