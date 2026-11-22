-- Exercise orc2-2 · Lesson 2: Retries and idempotent tasks
-- Dataset: ops
--
-- Which runs needed a retry? Return pipeline, run_date and attempts (the highest attempt
-- number) for every pipeline and day with more than one attempt.
--
-- Hint: GROUP BY pipeline, run_date HAVING MAX(attempt) > 1

SELECT pipeline, run_date, 
FROM pipeline_runs

