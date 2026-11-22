-- Exercise dm3-2 · Lesson 3: Dimension tables
-- Dataset: shop
--
-- Build a date dimension for the whole of 2026 with the columns date_day, year, month and
-- is_weekend (true on Saturday and Sunday). It should have 365 rows.
--
-- Hint: year(d) AS year, month(d) AS month, isodow(d) >= 6 AS is_weekend

SELECT
  d::DATE AS date_day,
  
FROM generate_series(DATE '2026-01-01', DATE '2026-12-31', INTERVAL 1 DAY) AS t(d);
