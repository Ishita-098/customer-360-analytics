-- Customer 360 Analytics Platform
-- Data Quality: NULL checks

/*customers*/

SELECT
    COUNT(*) AS total_rows,
    COUNT(*) - COUNT(customer_id) AS null_customer_id,
    COUNT(*) - COUNT(customer_name) AS null_customer_name,
    COUNT(*) - COUNT(city) AS null_city,
    COUNT(*) - COUNT(customer_segment) AS null_customer_segment,
    COUNT(*) - COUNT(join_date) AS null_join_date
FROM staging.dim_customers;

/*sales*/

SELECT
    COUNT(*) AS total_rows,
    COUNT(*) - COUNT(customer_id) AS null_customer_id,
    COUNT(*) - COUNT(order_date) AS null_order_date,
    COUNT(*) - COUNT(store_id) AS null_store_id,
    COUNT(*) - COUNT(product_id) AS null_product_id,
    COUNT(*) - COUNT(quantity) AS null_quantity,
    COUNT(*) - COUNT(unit_price) AS null_unit_price,
    COUNT(*) - COUNT(discount) AS null_discount,
    COUNT(*) - COUNT(revenue) AS null_revenue
FROM staging.fact_sales;