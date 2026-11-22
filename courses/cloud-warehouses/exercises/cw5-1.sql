-- Exercise cw5-1 · Lesson 5: Mini project: a cost review
-- Dataset: ops
--
-- The dashboard_bot reads events_raw without a partition filter. Adding one would make it
-- read one day instead of the whole month, roughly 1/30 of the data. Return one row with
-- cost_now_eur and cost_after_eur for the bot in October, at €5 per TB, rounded to 2
-- decimals.
--
-- Hint: The same sum twice; divide the bytes by 30 for the second column.

SELECT
  
FROM query_log
WHERE user_name = 'dashboard_bot';
