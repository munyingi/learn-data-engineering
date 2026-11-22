# Cloud Warehouses

Five short lessons on how warehouses store data and charge for it, partitioning, warehouse sizes and a cost review. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/cloud-warehouses/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [How cloud warehouses work](https://community.samwelmunyingi.org/courses/cloud-warehouses/how-cloud-warehouses-work/) | `cw1-1` | How much data did each table get scanned for in October? Return table_name and tb_scanned  |
| 2 | [What a query costs](https://community.samwelmunyingi.org/courses/cloud-warehouses/what-a-query-costs/) | `cw2-1` | At €5 per TB, what did each user cost in October? Return user_name and cost_eur rounded to |
| 2 | [What a query costs](https://community.samwelmunyingi.org/courses/cloud-warehouses/what-a-query-costs/) | `cw2-2` | Which people (not services) cost the most? Return user_name and queries for users whose to |
| 3 | [Partitioning and clustering](https://community.samwelmunyingi.org/courses/cloud-warehouses/partitioning-and-clustering/) | `cw3-1` | For each table, return table_name, queries and unfiltered (how many of those queries had n |
| 3 | [Partitioning and clustering](https://community.samwelmunyingi.org/courses/cloud-warehouses/partitioning-and-clustering/) | `cw3-2` | Imagine daily_trips is partitioned by year |
| 4 | [Compute and warehouse sizes](https://community.samwelmunyingi.org/courses/cloud-warehouses/compute-and-warehouse-sizes/) | `cw4-1` | Return warehouse_size and credits (rounded to 2 decimals): hours of query time multiplied  |
| 5 | [Mini project: a cost review](https://community.samwelmunyingi.org/courses/cloud-warehouses/mini-project-cost-review/) | `cw5-1` | The dashboard_bot reads events_raw without a partition filter |

Each file in `exercises/` has the task as a comment and a starter. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.
