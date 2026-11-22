# Orchestration, CI and Backfills

Five short lessons on DAGs, retries, idempotent tasks, monitoring, SLAs and backfills. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/orchestration-and-backfills/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [What an orchestrator does](https://community.samwelmunyingi.org/courses/orchestration-and-backfills/what-an-orchestrator-does/) | `orc1-1` | The marketing team adds two tasks: load_ads (no dependencies) and build_campaign_report, w |
| 2 | [Retries and idempotent tasks](https://community.samwelmunyingi.org/courses/orchestration-and-backfills/retries-and-idempotency/) | `orc2-1` | Write with_retries(fn, attempts=3): call fn() and return its result |
| 2 | [Retries and idempotent tasks](https://community.samwelmunyingi.org/courses/orchestration-and-backfills/retries-and-idempotency/) | `orc2-2` | Which runs needed a retry? Return pipeline, run_date and attempts (the highest attempt num |
| 3 | [Monitoring: gaps, failures and SLAs](https://community.samwelmunyingi.org/courses/orchestration-and-backfills/monitoring-gaps-and-slas/) | `orc3-1` | List every day from 1 September to 15 November 2026 with no successful load_payments run ( |
| 3 | [Monitoring: gaps, failures and SLAs](https://community.samwelmunyingi.org/courses/orchestration-and-backfills/monitoring-gaps-and-slas/) | `orc3-2` | SLA check: build_marts must finish by 06:00 on the day after its run_date |
| 4 | [Backfills](https://community.samwelmunyingi.org/courses/orchestration-and-backfills/backfills/) | `orc4-1` | Build the backfill plan: for each of the three pipelines, every day from 1 September to 15 |
| 4 | [Backfills](https://community.samwelmunyingi.org/courses/orchestration-and-backfills/backfills/) | `orc4-2` | Write backfill_dates(start, end, done): start and end are ISO date strings (inclusive), do |
| 5 | [Mini project: a pipeline health report](https://community.samwelmunyingi.org/courses/orchestration-and-backfills/mini-project-pipeline-health/) | `orc5-1` | For each pipeline, return pipeline, successful_days (days with a successful run), failed_a |

Each file in `exercises/` has the task as a comment and a starter. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.

Python files read the data with paths like `data/shop/orders.csv`, so run them from the root of the repo.
