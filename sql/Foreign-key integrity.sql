/* Check foreign-key integrity */

/* Sales → Customers */
SELECT COUNT(*) AS orphan_customers
FROM staging.fact_sales s
LEFT JOIN staging.dim_customers c
    ON s.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

/* Sales → Products */
SELECT COUNT(*) AS orphan_products
FROM staging.fact_sales s
LEFT JOIN staging.dim_products p
    ON s.product_id = p.product_id
WHERE p.product_id IS NULL;

/* Sales → Stores */
SELECT COUNT(*) AS orphan_stores
FROM staging.fact_sales s
LEFT JOIN staging.dim_stores st
    ON s.store_id = st.store_id
WHERE st.store_id IS NULL;

/* Calls → Customers */
SELECT COUNT(*) AS orphan_call_customers
FROM staging.fact_call_logs f
LEFT JOIN staging.dim_customers c
    ON f.customer_id = c.customer_id
WHERE c.customer_id IS NULL;