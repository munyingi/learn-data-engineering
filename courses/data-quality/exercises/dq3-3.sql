-- Exercise dq3-3 · Lesson 3: Late data and gaps
-- Dataset: feeds
--
-- Find the outage: the longest run of consecutive days in 2026 (1 January to 15 November)
-- with no orders. Return first_day, last_day and days.
--
-- Hint: GROUP BY run_id, with MIN, MAX and COUNT(*), then ORDER BY days DESC LIMIT 1.

WITH expected AS (
  SELECT d::DATE AS day_date
  FROM generate_series(DATE '2026-01-01', DATE '2026-11-15', INTERVAL 1 DAY) AS t(d)
),
missing AS (
  SELECT day_date FROM expected
  WHERE day_date NOT IN (SELECT order_date FROM raw_orders_feed)
),
runs AS (
  -- days in the same run get the same value of run_id
  SELECT day_date, day_date - CAST(ROW_NUMBER() OVER (ORDER BY day_date) AS INTEGER) AS run_id
  FROM missing
)
SELECT 
