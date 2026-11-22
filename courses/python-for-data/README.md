# Python for Data

Six short lessons: Python basics, pandas, cleaning and joining, calling APIs safely, and a loader that is safe to run twice. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/python-for-data/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [Python basics for data work](https://community.samwelmunyingi.org/courses/python-for-data/python-basics/) | `py2-1` | Create a variable total_with_vat that adds 25.5% VAT to net = 80.0, rounded to 2 decimals |
| 1 | [Python basics for data work](https://community.samwelmunyingi.org/courses/python-for-data/python-basics/) | `py2-2` | Given the list values, create average (the mean, rounded to 2 decimals) and biggest (the l |
| 1 | [Python basics for data work](https://community.samwelmunyingi.org/courses/python-for-data/python-basics/) | `py2-3` | Write a sentence with an f-string: set message to Order 1042 is worth €49.00 using the var |
| 2 | [Rows, dictionaries and loops](https://community.samwelmunyingi.org/courses/python-for-data/lists-dicts-loops/) | `py3-1` | Create delivered_total: the sum of amount for orders whose status is delivered. |
| 2 | [Rows, dictionaries and loops](https://community.samwelmunyingi.org/courses/python-for-data/lists-dicts-loops/) | `py3-2` | Write a function count_by(rows, key) that returns a dictionary counting how often each val |
| 2 | [Rows, dictionaries and loops](https://community.samwelmunyingi.org/courses/python-for-data/lists-dicts-loops/) | `py3-3` | Using a list comprehension, create big_orders: the order_id of every order with an amount  |
| 3 | [Reading data with pandas](https://community.samwelmunyingi.org/courses/python-for-data/reading-data-with-pandas/) | `py4-1` | Load data/shop/orders.csv into orders (parse order_date as a date) and create orders_2025: |
| 3 | [Reading data with pandas](https://community.samwelmunyingi.org/courses/python-for-data/reading-data-with-pandas/) | `py4-2` | Load data/shop/products.csv and create avg_price: the average price per category, rounded  |
| 3 | [Reading data with pandas](https://community.samwelmunyingi.org/courses/python-for-data/reading-data-with-pandas/) | `py4-3` | Create top_customer: the customer_id that placed the most orders |
| 4 | [Cleaning and joining](https://community.samwelmunyingi.org/courses/python-for-data/cleaning-and-joining/) | `py5-1` | Create revenue_by_category: total revenue (quantity × unit_price) per product category acr |
| 4 | [Cleaning and joining](https://community.samwelmunyingi.org/courses/python-for-data/cleaning-and-joining/) | `py5-2` | Create spend: a DataFrame with one row per customer who has a delivered order, and the col |
| 5 | [Calling APIs safely](https://community.samwelmunyingi.org/courses/python-for-data/calling-apis-safely/) | `py6-1` | Write fetch_with_retry(call, attempts) that calls call() up to attempts times |
| 5 | [Calling APIs safely](https://community.samwelmunyingi.org/courses/python-for-data/calling-apis-safely/) | `py6-2` | Write backoff_waits(attempts, first=1) that returns the list of waits between attempts, do |
| 6 | [Mini project: a loader that is safe to run twice](https://community.samwelmunyingi.org/courses/python-for-data/mini-project-safe-loader/) | `py7-1` | Write load(existing, batch) that returns a DataFrame with one row per order_id, keeping th |
| 6 | [Mini project: a loader that is safe to run twice](https://community.samwelmunyingi.org/courses/python-for-data/mini-project-safe-loader/) | `py7-2` | Use your skills on the real raw feed |

Each file in `exercises/` has the task as a comment and a starter. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.

Python files read the data with paths like `data/shop/orders.csv`, so run them from the root of the repo.
