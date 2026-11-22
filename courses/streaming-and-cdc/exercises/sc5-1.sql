-- Exercise sc5-1 · Lesson 5: Mini project: full order history from CDC
-- Dataset: feeds
--
-- Build the status history: one row per non-delete event with order_id, status, valid_from
-- (its changed_at) and valid_to (the changed_at of the next event for the same order by
-- lsn, NULL for the latest).
--
-- Hint: LEAD(changed_at) OVER (PARTITION BY order_id ORDER BY lsn) AS valid_to

SELECT
  order_id,
  status,
  changed_at AS valid_from,
  
FROM order_events
WHERE op <> 'd';
