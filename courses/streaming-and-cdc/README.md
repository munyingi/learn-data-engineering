# Streaming and Change Data Capture

Five short lessons on CDC events, rebuilding state, out-of-order events, windows and history tables. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/streaming-and-cdc/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [Events, not tables](https://community.samwelmunyingi.org/courses/streaming-and-cdc/events-not-tables/) | `sc1-1` | How many events of each kind are in the stream? Return op and events. |
| 2 | [Rebuilding the current state](https://community.samwelmunyingi.org/courses/streaming-and-cdc/rebuilding-current-state/) | `sc2-1` | Rebuild the current orders table from the stream: order_id, status and amount_eur, using t |
| 2 | [Rebuilding the current state](https://community.samwelmunyingi.org/courses/streaming-and-cdc/rebuilding-current-state/) | `sc2-2` | How many orders are in each status right now? Return status and orders, based on the curre |
| 3 | [Out-of-order and late events](https://community.samwelmunyingi.org/courses/streaming-and-cdc/out-of-order-and-late-events/) | `sc3-1` | Sorted by received_at (then lsn), which events arrived with a lower lsn than the event rec |
| 3 | [Out-of-order and late events](https://community.samwelmunyingi.org/courses/streaming-and-cdc/out-of-order-and-late-events/) | `sc3-2` | How much damage would "last arrival wins" do? Count the orders whose latest event by recei |
| 4 | [Windows and live metrics](https://community.samwelmunyingi.org/courses/streaming-and-cdc/windows-and-metrics/) | `sc4-1` | Daily tumbling window: return day and new_orders (create events) for every day in October  |
| 4 | [Windows and live metrics](https://community.samwelmunyingi.org/courses/streaming-and-cdc/windows-and-metrics/) | `sc4-2` | How long does delivery take? For orders that reached delivered, return avg_hours: the aver |
| 5 | [Mini project: full order history from CDC](https://community.samwelmunyingi.org/courses/streaming-and-cdc/mini-project-order-history/) | `sc5-1` | Build the status history: one row per non-delete event with order_id, status, valid_from ( |
| 5 | [Mini project: full order history from CDC](https://community.samwelmunyingi.org/courses/streaming-and-cdc/mini-project-order-history/) | `sc5-2` | Customer service wants orders stuck in transit: orders whose current status is shipped and |

Each file in `exercises/` has the task as a comment and a starter. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.
