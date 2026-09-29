-- Customer 360 Analytics Platform
-- Data Quality: NULL checks

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