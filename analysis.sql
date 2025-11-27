-- analysis.sql
-- Monthly sales aggregation (PostgreSQL)

CREATE TABLE IF NOT EXISTS sales (
    order_id      INTEGER,
    order_date    DATE,
    amount        DECIMAL(10,2)
);

-- Monthly revenue and order count (PostgreSQL)
SELECT 
    EXTRACT(YEAR FROM order_date)  AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    TO_CHAR(order_date, 'YYYY-MM') AS month_label,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY year, month, month_label
ORDER BY year, month;
