-- Exercise sc2-1 · Lesson 2: Rebuilding the current state
-- Dataset: feeds
--
-- Rebuild the current orders table from the stream: order_id, status and amount_eur, using
-- the latest event per order by lsn, and leaving out orders whose latest event is a
-- delete.
--
-- Hint: WHERE op <> 'd'

WITH latest AS (
  SELECT *
  FROM order_events
  QUALIFY ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY lsn DESC) = 1
)
SELECT order_id, status, amount_eur
FROM latest

