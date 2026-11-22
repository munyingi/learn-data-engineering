-- Exercise orc5-1 · Lesson 5: Mini project: a pipeline health report
-- Dataset: ops
--
-- For each pipeline, return pipeline, successful_days (days with a successful run),
-- failed_attempts (all failed attempts) and missing_days (days from 1 September to 15
-- November 2026 with no successful run).
--
-- Hint: COUNT(DISTINCT run_date) FILTER (WHERE status = 'success'); missing_days is the number of days minus that.

WITH days AS (
  SELECT d::DATE AS run_date
  FROM generate_series(DATE '2026-09-01', DATE '2026-11-15', INTERVAL 1 DAY) AS t(d)
)
SELECT
  pipeline,
  
FROM pipeline_runs
GROUP BY pipeline;
