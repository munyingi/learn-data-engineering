-- Exercise orc4-1 · Lesson 4: Backfills
-- Dataset: ops
--
-- Build the backfill plan: for each of the three pipelines, every day from 1 September to
-- 15 November 2026 with no successful run. Return pipeline and run_date, sorted by
-- pipeline and then run_date.
--
-- Hint: LEFT JOIN pipeline_runs on pipeline, run_date and status = 'success', keep rows where r.run_id IS NULL, then ORDER BY.

WITH days AS (
  SELECT d::DATE AS run_date
  FROM generate_series(DATE '2026-09-01', DATE '2026-11-15', INTERVAL 1 DAY) AS t(d)
),
pipelines AS (
  SELECT DISTINCT pipeline FROM pipeline_runs
),
expected AS (
  SELECT p.pipeline, d.run_date FROM pipelines AS p CROSS JOIN days AS d
)
SELECT e.pipeline, e.run_date
FROM expected AS e

