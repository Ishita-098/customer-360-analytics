SELECT current_database();

SELECT
    table_schema,
    table_name
FROM information_schema.tables
WHERE table_schema = 'staging'
ORDER BY table_name;

SELECT *
FROM staging.fact_sales
LIMIT 10;

SELECT
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order,
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    SUM(revenue) AS total_revenue
FROM staging.fact_sales;