# Exercise orc1-1 · Lesson 1: What an orchestrator does
#
# The marketing team adds two tasks: load_ads (no dependencies) and build_campaign_report,
# which needs load_ads and build_marts. Add them to dag, then set order to a list of all
# six tasks in an order that respects every dependency.
#
# Hint: dag["load_ads"] = [] and dag["build_campaign_report"] = ["load_ads", "build_marts"], then list(TopologicalSorter(dag).static_order()).
# Run it from the repo root: python courses/orchestration-and-backfills/exercises/orc1-1.py

from graphlib import TopologicalSorter

dag = {
    "load_orders": [],
    "load_payments": [],
    "build_marts": ["load_orders", "load_payments"],
    "refresh_dashboard": ["build_marts"],
}
# add the two new tasks here

order = 
print(order)
