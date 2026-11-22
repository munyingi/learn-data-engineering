# The datasets

Every exercise uses one of these three datasets. Read this before you start: it explains what one row means and what every column holds.

## Nordic Shop (`data/shop/`)

A small online shop based in Finland that sells electronics, home goods, sports gear, books and outdoor clothing. Customers sign up, place orders on the website or in the app, and each order contains one or more products. The data is made up for learning, but it behaves like the real thing: some customers never order, some orders are cancelled, and one customer did not give a city.

- **Time period:** Sign-ups from January 2024; orders from February 2024 to November 2026
- **Source:** Made up for teaching. Free to use for anything.

### `customers`: 300 rows

One row is one person or company that signed up. Everyone who has an account. 262 of them have placed at least one order; 38 have not. Unique key: `customer_id`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `customer_id` | number | Unique id for the customer | `17` |
| `first_name` | text | First name (not unique: many customers share a name) | `Linnea` |
| `city` | text | Where they live. Empty (NULL) for one customer | `Tallinn` |
| `country` | text | Finland, Sweden or Estonia | `Estonia` |
| `signup_date` | date | The day they created their account | `2025-04-18` |
| `segment` | text | Consumer (a person) or Business (a company) | `Consumer` |

- 270 customers are in Finland, 16 in Sweden and 14 in Estonia.
- 247 are Consumer and 53 are Business.

### `products`: 29 rows

One row is one product the shop sells. The catalogue: 29 products in 5 categories. Unique key: `product_id`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `product_id` | number | Unique id for the product | `8` |
| `product_name` | text | Name shown in the shop | `Linen Towel Set` |
| `category` | text | Electronics, Home, Sports, Books or Outdoor | `Home` |
| `price` | decimal | Today's price in euros, including VAT | `34.50` |

- Prices go from €12.90 to €149.00.

### `orders`: 1,135 rows

One row is one order (one checkout). Every order placed. The products inside an order are in order_items. Unique key: `order_id`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `order_id` | number | Unique id for the order | `1756` |
| `customer_id` | number | Who placed it. Links to customers.customer_id | `225` |
| `order_date` | date | The day the order was placed | `2024-02-10` |
| `status` | text | delivered, shipped (on its way), cancelled or returned | `delivered` |
| `channel` | text | web (website) or app (mobile app) | `app` |

- Status counts: 875 delivered, 102 shipped, 84 cancelled, 74 returned.
- Only delivered orders count as real revenue. Cancelled and returned orders do not.

### `order_items`: 1,942 rows

One row is one product inside one order. The lines of each order. An order with three different products has three rows here. Unique key: `order_id + product_id`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `order_id` | number | Which order. Links to orders.order_id | `1000` |
| `product_id` | number | Which product. Links to products.product_id | `17` |
| `quantity` | number | How many were bought (1 to 3) | `2` |
| `unit_price` | decimal | Price of one item when it was bought, in euros | `18.50` |

- Line value = quantity × unit_price. Order value = the sum of its lines.

**How the tables connect:**

- orders.customer_id → customers.customer_id (who placed the order)
- order_items.order_id → orders.order_id (which order the line belongs to)
- order_items.product_id → products.product_id (which product was bought)

## Helsinki City Bikes (`data/citybikes/`)

Real open data from the city bike system in Helsinki and Espoo. Bikes are available from April to October each year, so there is no data for the winter months. Each day also has the weather, so you can ask questions like "do people ride less when it rains?"

- **Time period:** Every day of the bike season, April to October, 2021 to 2025
- **Source:** Helsinki Region Transport (HSL) and the Finnish Meteorological Institute, licensed under CC BY 4.0.

### `stations`: 464 rows

One row is one bike station. Every place you can pick up or leave a bike. Unique key: `station_id`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `station_id` | number | Unique id for the station | `95` |
| `station_name` | text | Name shown on the station | `Munkkiniemen aukio` |
| `city` | text | Helsinki, Espoo, or Other | `Helsinki` |
| `capacity` | number | How many bikes the station holds. Empty (NULL) for 7 stations | `18` |

- 347 stations are in Helsinki and 115 in Espoo.

### `daily_trips`: 1,070 rows

One row is one day of the bike season. How many trips were made each day, how long they were, and what the weather was like. Unique key: `trip_date`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `trip_date` | date | The day | `2023-06-14` |
| `trips` | number | Number of trips started that day | `19573` |
| `avg_duration_min` | decimal | Average trip length in minutes | `13.41` |
| `avg_distance_km` | decimal | Average trip distance in kilometres | `2.51` |
| `is_weekend` | true/false | true on Saturdays and Sundays | `false` |
| `temp_mean_c` | decimal | Average temperature that day, in °C | `18.6` |
| `precipitation_mm` | decimal | Rain that day, in millimetres | `0.0` |

- Trips per day range from 702 to 23,893.

**How the tables connect:**

- The two tables are not joined to each other: stations describes places, daily_trips describes days.

## Nordic Shop raw feeds (`data/feeds/`)

The same Nordic Shop, but before anyone cleaned the data. Every night a job loads the day's orders from the shop system, the payment provider sends its own file, and the customer system keeps a log of every change to a customer. Jobs sometimes rerun, run late or fail, so these feeds contain the problems real teams deal with: duplicate rows, late rows, missing days, misspelt values, and orders and payments that do not agree. The clean shop tables (customers, products, orders, order_items) are loaded alongside, so you can compare.

- **Time period:** Orders from 1 January to 15 November 2026; customer changes from January 2024
- **Source:** Made up for teaching, built from the Nordic Shop orders. Free to use for anything.

### `raw_orders_feed`: 758 rows

One row is one order as it was loaded by the nightly job (an order can appear more than once). Every 2026 order as the load job delivered it. 734 different orders, but some were loaded twice by a rerun, some arrived days late, and nothing at all arrived for a few days in June. Unique key: `none (order_id + loaded_at)`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `order_id` | number | Which order. Matches orders.order_id | `1232` |
| `customer_id` | number | Who placed it. Empty (NULL) on a few broken rows | `253` |
| `order_date` | date | The day the order was placed | `2026-01-01` |
| `status` | text | delivered, shipped, cancelled or returned (plus a few misspelt values) | `delivered` |
| `amount_eur` | decimal | Order total in euros. Should always be above 0 | `267.90` |
| `loaded_at` | timestamp | When the nightly job loaded this row | `2026-01-02 02:41` |

- Usually loaded the night after the order. 90 rows arrived 3 or more days late.
- A reloaded order can have a newer status in its later row, for example shipped and then delivered.

### `payments`: 730 rows

One row is one payment or refund from the payment provider. Money received for orders. Refunds for returned orders appear as negative amounts with method refund. Unique key: `payment_id`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `payment_id` | number | Unique id from the payment provider | `50000` |
| `order_id` | number | Which order was paid. Matches raw_orders_feed.order_id | `1232` |
| `paid_at` | timestamp | When the money moved | `2026-01-01 11:41` |
| `amount_eur` | decimal | Amount in euros. Negative for refunds | `267.90` |
| `method` | text | card, mobilepay, paypal or refund | `card` |

- Cancelled orders are never paid. A few delivered orders are missing a payment, and a few customers were charged twice.

### `customer_history`: 108 rows

One row is one version of a customer, valid from a date until the next version starts. The change log for the 45 customers who moved city or changed segment. The customers table only shows where they are today; this table shows where they were before. Unique key: `customer_id + valid_from`.

| Column | Type | What it means | Example |
|---|---|---|---|
| `customer_id` | number | Which customer. Matches customers.customer_id | `15` |
| `valid_from` | date | First day this version was true | `2026-03-23` |
| `city` | text | Where the customer lived from that day | `Jyväskylä` |
| `segment` | text | Consumer or Business from that day | `Consumer` |

- 34 of the 45 customers have lived in more than one city. The newest version of each customer matches the customers table.

**How the tables connect:**

- raw_orders_feed.order_id → payments.order_id (orders and their payments)
- raw_orders_feed.customer_id → customers.customer_id
- customer_history.customer_id → customers.customer_id (old versions of a customer)
- orders.order_date between a version's dates → the city the customer lived in at the time
