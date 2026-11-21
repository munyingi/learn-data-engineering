# SQL Foundations

Seven short lessons, from your first query to window functions. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/sql-foundations/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [Your first query](https://community.samwelmunyingi.org/courses/sql-foundations/your-first-query/) | `sql1-1` | Show the product_name and price of every product. |
| 1 | [Your first query](https://community.samwelmunyingi.org/courses/sql-foundations/your-first-query/) | `sql1-2` | List every different country that customers come from |
| 1 | [Your first query](https://community.samwelmunyingi.org/courses/sql-foundations/your-first-query/) | `sql1-3` | Finnish prices include 25.5% VAT |
| 2 | [Filtering and sorting](https://community.samwelmunyingi.org/courses/sql-foundations/filtering-and-sorting/) | `sql2-1` | Show the product_name and price of products in the Books category that cost less than 35,  |
| 2 | [Filtering and sorting](https://community.samwelmunyingi.org/courses/sql-foundations/filtering-and-sorting/) | `sql2-2` | Find Business customers who live in Helsinki or Espoo |
| 2 | [Filtering and sorting](https://community.samwelmunyingi.org/courses/sql-foundations/filtering-and-sorting/) | `sql2-3` | Not every customer gave a city |
| 2 | [Filtering and sorting](https://community.samwelmunyingi.org/courses/sql-foundations/filtering-and-sorting/) | `sql2-4` | Show the 5 most expensive products: product_name and price, most expensive first. |
| 3 | [Counting and summarising](https://community.samwelmunyingi.org/courses/sql-foundations/aggregations/) | `sql3-1` | How many orders are there in each status? Show status and the count as orders. |
| 3 | [Counting and summarising](https://community.samwelmunyingi.org/courses/sql-foundations/aggregations/) | `sql3-2` | For each category, show the number of products as products and the average price rounded t |
| 3 | [Counting and summarising](https://community.samwelmunyingi.org/courses/sql-foundations/aggregations/) | `sql3-3` | Which cities have more than 20 customers? Show city and the number of customers as custome |
| 4 | [Joining tables](https://community.samwelmunyingi.org/courses/sql-foundations/joins/) | `sql4-1` | For every order, show order_id, order_date and the customer's first_name. |
| 4 | [Joining tables](https://community.samwelmunyingi.org/courses/sql-foundations/joins/) | `sql4-2` | Which customers have never placed an order? Show their customer_id and first_name. |
| 4 | [Joining tables](https://community.samwelmunyingi.org/courses/sql-foundations/joins/) | `sql4-3` | Calculate revenue per product category as revenue: the sum of quantity * unit_price across |
| 5 | [Subqueries and CTEs](https://community.samwelmunyingi.org/courses/sql-foundations/subqueries-and-ctes/) | `sql5-1` | Show the product_name and price of products that cost more than the average product price. |
| 5 | [Subqueries and CTEs](https://community.samwelmunyingi.org/courses/sql-foundations/subqueries-and-ctes/) | `sql5-2` | Using a CTE, find the 10 customers who spent the most on delivered orders |
| 6 | [Window functions](https://community.samwelmunyingi.org/courses/sql-foundations/window-functions/) | `sql6-1` | Number the products by price within each category, most expensive first, as price_rank usi |
| 6 | [Window functions](https://community.samwelmunyingi.org/courses/sql-foundations/window-functions/) | `sql6-2` | For each year in daily_trips, find the single busiest day |
| 7 | [Mini project: the monthly report](https://community.samwelmunyingi.org/courses/sql-foundations/mini-project-monthly-report/) | `sql7-1` | Revenue by month |
| 7 | [Mini project: the monthly report](https://community.samwelmunyingi.org/courses/sql-foundations/mini-project-monthly-report/) | `sql7-2` | Best seller per category |
| 7 | [Mini project: the monthly report](https://community.samwelmunyingi.org/courses/sql-foundations/mini-project-monthly-report/) | `sql7-3` | Repeat customers |

Each file in `exercises/` has the task as a comment and a starter query. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.
