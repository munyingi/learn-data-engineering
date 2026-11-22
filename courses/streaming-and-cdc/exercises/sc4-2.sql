-- Exercise sc4-2 · Lesson 4: Windows and live metrics
-- Dataset: feeds
--
-- How long does delivery take? For orders that reached delivered, return avg_hours: the
-- average time from the placed event to the delivered event, in hours, rounded to 1
-- decimal.
--
-- Hint: date_diff('minute', placed_at, delivered_at) / 60 gives hours. Keep only rows where delivered_at IS NOT NULL.

WITH times AS (
  SELECT
    order_id,
    MIN(changed_at) FILTER (WHERE status = 'placed') AS placed_at,
    MIN(changed_at) FILTER (WHERE status = 'delivered') AS delivered_at
  FROM order_events
  GROUP BY order_id
)
SELECT 
