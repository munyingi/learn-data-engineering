-- Exercise sc3-2 · Lesson 3: Out-of-order and late events
-- Dataset: feeds
--
-- How much damage would "last arrival wins" do? Count the orders whose latest event by
-- received_at is a different event from the latest by lsn. Return orders_wrong.
--
-- Hint: WHERE a.lsn <> b.lsn

WITH by_lsn AS (
  SELECT order_id, arg_max(lsn, lsn) AS lsn FROM order_events GROUP BY order_id
),
by_arrival AS (
  SELECT order_id, arg_max(lsn, received_at) AS lsn FROM order_events GROUP BY order_id
)
SELECT COUNT(*) AS orders_wrong
FROM by_lsn AS a
JOIN by_arrival AS b ON b.order_id = a.order_id

