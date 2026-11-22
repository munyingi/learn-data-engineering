# Data Quality and Reconciliation

Six short lessons on duplicates, late data, gaps, validity checks, reconciliation and a daily quality report. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/data-quality/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [What can go wrong with data](https://community.samwelmunyingi.org/courses/data-quality/meet-the-raw-feeds/) | `dq1-1` | Compare rows with distinct orders in the feed |
| 2 | [Duplicates](https://community.samwelmunyingi.org/courses/data-quality/duplicates/) | `dq2-1` | List every order loaded more than once: order_id and times_loaded. |
| 2 | [Duplicates](https://community.samwelmunyingi.org/courses/data-quality/duplicates/) | `dq2-2` | Which reloaded orders changed status between loads? Show order_id, the status in the first |
| 2 | [Duplicates](https://community.samwelmunyingi.org/courses/data-quality/duplicates/) | `dq2-3` | Build the clean, deduplicated feed: one row per order_id, the latest load only, with the c |
| 3 | [Late data and gaps](https://community.samwelmunyingi.org/courses/data-quality/late-data-and-gaps/) | `dq3-1` | Count the rows that arrived 3 or more days after their order_date |
| 3 | [Late data and gaps](https://community.samwelmunyingi.org/courses/data-quality/late-data-and-gaps/) | `dq3-2` | List every day in June 2026 with no orders in the feed, as missing_day. |
| 3 | [Late data and gaps](https://community.samwelmunyingi.org/courses/data-quality/late-data-and-gaps/) | `dq3-3` | Find the outage: the longest run of consecutive days in 2026 (1 January to 15 November) wi |
| 4 | [Validity checks](https://community.samwelmunyingi.org/courses/data-quality/validity-checks/) | `dq4-1` | Show the rows whose status is not one of delivered, shipped, cancelled or returned: column |
| 4 | [Validity checks](https://community.samwelmunyingi.org/courses/data-quality/validity-checks/) | `dq4-2` | Combine three checks into one list of problems with the columns order_id and problem, wher |
| 5 | [Reconciliation](https://community.samwelmunyingi.org/courses/data-quality/reconciliation/) | `dq5-1` | Which delivered orders have no payment at all? Use the deduplicated feed (latest load per  |
| 5 | [Reconciliation](https://community.samwelmunyingi.org/courses/data-quality/reconciliation/) | `dq5-2` | Find customers who were charged twice: orders with more than one non-refund payment |
| 6 | [Mini project: the daily data quality report](https://community.samwelmunyingi.org/courses/data-quality/mini-project-quality-report/) | `dq6-1` | Build the report with two columns, check_name and failed_rows, and one row for each check: |

Each file in `exercises/` has the task as a comment and a starter. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.
