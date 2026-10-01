/*checking for duplicates*/

/*1. customers */
SELECT
    customer_id,
    COUNT(*) AS occurrences
FROM staging.dim_customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

/* 2. Products*/
SELECT
    product_id,
    COUNT(*) AS occurrences
FROM staging.dim_products
GROUP BY product_id
HAVING COUNT(*) > 1;

/* 3. Stores */
SELECT
    store_id,
    COUNT(*) AS occurrences
FROM staging.dim_stores
GROUP BY store_id
HAVING COUNT(*) > 1;

/* 4. Sales */
SELECT
    order_id,
    COUNT(*) AS occurrences
FROM staging.fact_sales
GROUP BY order_id
HAVING COUNT(*) > 1;