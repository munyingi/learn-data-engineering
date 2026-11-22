-- Exercise orc3-2 · Lesson 3: Monitoring: gaps, failures and SLAs
-- Dataset: ops
--
-- SLA check: build_marts must finish by 06:00 on the day after its run_date. Return
-- run_date and finished_at for every successful build_marts run that finished later than
-- that.
--
-- Hint: finished_at > run_date + INTERVAL 1 DAY + INTERVAL 6 HOUR

SELECT run_date, finished_at
FROM pipeline_runs
WHERE pipeline = 'build_marts'
  AND status = 'success'
  AND 
