# Data Modelling

Six short lessons on grain, facts, dimensions, star schemas, SCD Type 2 and point-in-time joins. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/data-modelling/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [Why model data? Start with the grain](https://community.samwelmunyingi.org/courses/data-modelling/why-model-grain/) | `dm1-1` | How many orders contain more than one order line? Return a single column orders. |
| 1 | [Why model data? Start with the grain](https://community.samwelmunyingi.org/courses/data-modelling/why-model-grain/) | `dm1-2` | Test the grain of order_items: it should have one row per order_id and product_id |
| 2 | [Fact tables](https://community.samwelmunyingi.org/courses/data-modelling/fact-tables/) | `dm2-1` | Build the fact table for delivered orders with exactly these columns: order_id, order_date |
| 2 | [Fact tables](https://community.samwelmunyingi.org/courses/data-modelling/fact-tables/) | `dm2-2` | Using your fact as a CTE called fct, show revenue per channel (from orders) as revenue, ro |
| 3 | [Dimension tables](https://community.samwelmunyingi.org/courses/data-modelling/dimension-tables/) | `dm3-1` | Build dim_product: product_id, product_name, category and price_band, where the band is bu |
| 3 | [Dimension tables](https://community.samwelmunyingi.org/courses/data-modelling/dimension-tables/) | `dm3-2` | Build a date dimension for the whole of 2026 with the columns date_day, year, month and is |
| 4 | [The star schema](https://community.samwelmunyingi.org/courses/data-modelling/star-schema/) | `dm4-1` | Using the fact and dimensions, show delivered revenue by customer country and product cate |
| 4 | [The star schema](https://community.samwelmunyingi.org/courses/data-modelling/star-schema/) | `dm4-2` | Weekend or weekday? For delivered orders in 2026, show is_weekend and revenue (rounded to  |
| 5 | [Keeping history: slowly changing dimensions](https://community.samwelmunyingi.org/courses/data-modelling/slowly-changing-dimensions/) | `dm5-1` | Build the SCD2 table for every customer in customer_history: customer_id, city, segment, v |
| 5 | [Keeping history: slowly changing dimensions](https://community.samwelmunyingi.org/courses/data-modelling/slowly-changing-dimensions/) | `dm5-2` | Where did customer 15 live on 1 June 2026? Return one column, city. |
| 5 | [Keeping history: slowly changing dimensions](https://community.samwelmunyingi.org/courses/data-modelling/slowly-changing-dimensions/) | `dm5-3` | Which customers have lived in more than one city? Show customer_id and the number of diffe |
| 6 | [Mini project: revenue by where customers really lived](https://community.samwelmunyingi.org/courses/data-modelling/mini-project-point-in-time/) | `dm6-1` | For customers in customer_history, show delivered revenue in 2026 by the city they lived i |
| 6 | [Mini project: revenue by where customers really lived](https://community.samwelmunyingi.org/courses/data-modelling/mini-project-point-in-time/) | `dm6-2` | How big is the mistake if you ignore history? Count the orders (any status, any year) wher |

Each file in `exercises/` has the task as a comment and a starter. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.
