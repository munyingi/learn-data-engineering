-- Exercise orc3-1 · Lesson 3: Monitoring: gaps, failures and SLAs
-- Dataset: ops
--
-- List every day from 1 September to 15 November 2026 with no successful load_payments run
-- (it never ran, or every attempt failed), as run_date.
--
-- Hint: run_date NOT IN (SELECT run_date FROM pipeline_runs WHERE pipeline = 'load_payments' AND status = 'success')

WITH days AS (
  SELECT d::DATE AS run_date
  FROM generate_series(DATE '2026-09-01', DATE '2026-11-15', INTERVAL 1 DAY) AS t(d)
)
SELECT run_date
FROM days
WHERE 
