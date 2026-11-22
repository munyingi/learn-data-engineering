# Learn Data Engineering

Free, hands-on data engineering exercises by [Samwel Munyingi](https://samwelmunyingi.org). Read the lessons on the website, solve the exercises here, and get your answers checked automatically on every pull request.

**Website:** https://community.samwelmunyingi.org · **Sandbox:** https://community.samwelmunyingi.org/sandbox/

## Courses

| Course | Level | Exercises |
|---|---|---|
| [SQL Foundations](courses/sql-foundations/) | Beginner | 20 SQL exercises on a shop and on Helsinki city bikes |
| [Python for Data](courses/python-for-data/) | Beginner | 15 Python and pandas exercises, ending with a loader for a messy feed |
| [Data Modelling](courses/data-modelling/) | Intermediate | 13 SQL exercises: grain, facts, dimensions, SCD Type 2 |
| [Data Quality and Reconciliation](courses/data-quality/) | Intermediate | 12 SQL exercises on raw feeds with duplicates, gaps and bad values |
| [dbt in Practice](courses/dbt-in-practice/) | Intermediate | 10 SQL exercises: staging, tests, macros, incremental models |
| [Orchestration, CI and Backfills](courses/orchestration-and-backfills/) | Intermediate | 8 Python and SQL exercises on DAGs, retries, SLAs and backfills |
| [Cloud Warehouses](courses/cloud-warehouses/) | Intermediate | 7 SQL exercises on a month of warehouse query history |
| [Streaming and Change Data Capture](courses/streaming-and-cdc/) | Advanced | 9 SQL exercises on a stream of order changes |
| [Privacy by Design](courses/privacy-by-design/) | Advanced | 7 SQL exercises on personal data and deletion requests |
| [Your Portfolio and the Job Search](courses/portfolio-and-job-search/) | Intermediate | 6 SQL and Python interview questions |
| [Python challenges](courses/python-challenges/) | Beginner | 3 small pipeline tasks |

All ten courses are open.

## Three ways to use this repo

1. **Learn privately:** click **Use this template**, solve the exercises in your own copy and run `python scripts/check.py`.
2. **Learn in public:** fork, solve, and open a pull request. An automatic check comments with your results, and your work shows on your GitHub profile. See [CONTRIBUTING.md](CONTRIBUTING.md).
3. **Join the graduates:** finished a course? Add yourself to [GRADUATES.md](GRADUATES.md).

## Quick start

```bash
pip install duckdb pandas
python scripts/start.py YOUR-GITHUB-USERNAME      # copies the exercises into submissions/YOUR-GITHUB-USERNAME/
python scripts/check.py submissions/YOUR-GITHUB-USERNAME
```

## What is inside

```
courses/        exercises with the task written at the top of each file
data/README.md  what every table and column means (read this first)
data/           the datasets (CSV), the same ones used on the website
submissions/    learners' answers, one folder per GitHub username
scripts/        start.py (set up your folder) and check.py (check answers)
checker/        reference answers used by the checker
```

## How checking works

SQL answers run on DuckDB with file and network access switched off, and the result is compared with the reference answer (numbers to 2 decimals, order only where the task asks for it). Python answers run with a 30-second limit and a few assertions. In pull requests, the check runs with read-only permissions and a separate workflow posts the comment.

## Data

- `data/shop/` is a made-up shop, created for teaching. Free to use for anything.
- `data/citybikes/` is derived from Helsinki Region Transport (HSL) city bike open data and Finnish Meteorological Institute weather data, both licensed under CC BY 4.0.

## Licence

Code and exercises: MIT. See [LICENSE](LICENSE).
