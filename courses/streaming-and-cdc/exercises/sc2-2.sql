-- Exercise sc2-2 · Lesson 2: Rebuilding the current state
-- Dataset: feeds
--
-- How many orders are in each status right now? Return status and orders, based on the
-- current state you just built.
--
-- Hint: Filter out deletes, then GROUP BY status.

WITH latest AS (
  SELECT *
  FROM order_events
  QUALIFY ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY lsn DESC) = 1
)
SELECT 
