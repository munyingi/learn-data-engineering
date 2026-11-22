# dbt in Practice

Five short lessons on staging and marts, tests, macros and incremental models, practised as the SQL dbt runs. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/dbt-in-practice/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [Sources, staging and marts](https://community.samwelmunyingi.org/courses/dbt-in-practice/sources-staging-marts/) | `dbt1-1` | Write stg_daily_trips: the columns trip_date, trips, avg_duration_min (rounded to 1 decima |
| 1 | [Sources, staging and marts](https://community.samwelmunyingi.org/courses/dbt-in-practice/sources-staging-marts/) | `dbt1-2` | Now a mart built on your staging model: year, month, total trips and rainy_days (how many  |
| 2 | [Tests that catch real problems](https://community.samwelmunyingi.org/courses/dbt-in-practice/tests-that-catch-problems/) | `dbt2-1` | Write the unique test for stations.station_id: return station_id and n (how many times it  |
| 2 | [Tests that catch real problems](https://community.samwelmunyingi.org/courses/dbt-in-practice/tests-that-catch-problems/) | `dbt2-2` | Write the relationships test: return the order_id and customer_id of every order whose cus |
| 2 | [Tests that catch real problems](https://community.samwelmunyingi.org/courses/dbt-in-practice/tests-that-catch-problems/) | `dbt2-3` | Write a custom test for stations: return station_id, station_name and capacity for station |
| 3 | [Macros and documentation](https://community.samwelmunyingi.org/courses/dbt-in-practice/macros-and-documentation/) | `dbt3-1` | Use the compiled temp_band macro to answer: do people ride more when it is warm? Return te |
| 4 | [Incremental models](https://community.samwelmunyingi.org/courses/dbt-in-practice/incremental-models/) | `dbt4-1` | The table was last built up to 30 June 2025 |
| 4 | [Incremental models](https://community.samwelmunyingi.org/courses/dbt-in-practice/incremental-models/) | `dbt4-2` | Same table, but with a 3-day lookback: reprocess every row from 3 days before the latest d |
| 5 | [Mini project: five seasons of city bikes](https://community.samwelmunyingi.org/courses/dbt-in-practice/mini-project-five-seasons/) | `dbt5-1` | Build fct_season: one row per year with year, trips (total), avg_temp_c (rounded to 1 deci |
| 5 | [Mini project: five seasons of city bikes](https://community.samwelmunyingi.org/courses/dbt-in-practice/mini-project-five-seasons/) | `dbt5-2` | Write the test: a season runs from 1 April to 31 October, which is 214 days |

Each file in `exercises/` has the task as a comment and a starter. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.
