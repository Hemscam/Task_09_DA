# Sales Trend Analysis Using SQL Aggregations

## Objective
Perform time-based analysis of sales data using SQL aggregation techniques to identify monthly revenue and order volume trends.

## Files
- `analysis.sql` — PostgreSQL queries for monthly aggregation.
- `results.csv` — Aggregated monthly results (month_label,total_revenue,total_orders).
- `generate_chart.py` — Python script that creates `monthly_revenue.png`.
- `monthly_revenue.png` — Visual summary of monthly revenue.
- `requirements.txt` — Python dependencies.
- `.gitignore` — Common ignored files.

## Key Insights
- Top 3 months by revenue: 2023-12 (10200), 2023-11 (9300), 2023-08 (9100)

## How to reproduce
1. Place raw transactional data into a `sales` table or CSV.
2. Run the queries in `analysis.sql` or use `generate_chart.py`.
