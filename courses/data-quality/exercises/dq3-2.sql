-- Exercise dq3-2 · Lesson 3: Late data and gaps
-- Dataset: feeds
--
-- List every day in June 2026 with no orders in the feed, as missing_day.
--
-- Hint: SELECT day_date AS missing_day FROM expected WHERE day_date NOT IN (SELECT order_date FROM raw_orders_feed)

WITH expected AS (
  SELECT d::DATE AS day_date
  FROM generate_series(DATE '2026-06-01', DATE '2026-06-30', INTERVAL 1 DAY) AS t(d)
)
SELECT 
