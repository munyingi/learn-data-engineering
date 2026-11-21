# Learn Data Engineering

Free, hands-on data engineering exercises by [Samwel Munyingi](https://samwelmunyingi.org). Read the lessons on the website, solve the exercises here, and get your answers checked automatically on every pull request.

**Website:** https://community.samwelmunyingi.org · **Sandbox:** https://community.samwelmunyingi.org/sandbox/

## Courses

| Course | Level | Exercises |
|---|---|---|
| [SQL Foundations](courses/sql-foundations/) | Beginner | 20 SQL exercises on a shop and on Helsinki city bikes |
| [Python challenges](courses/python-challenges/) | Beginner | 3 small pipeline tasks |

More courses are on the way: Python for Data, Data Modelling, dbt in Practice, Data Quality, Orchestration, Cloud Warehouses, Streaming and CDC, and Privacy by Design.

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
