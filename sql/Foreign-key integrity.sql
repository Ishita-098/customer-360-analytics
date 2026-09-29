SELECT COUNT(*) AS orphan_customer_sales
FROM staging.fact_sales s
LEFT JOIN staging.dim_customers c
    ON s.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

SELECT COUNT(*) AS orphan_store_sales
FROM staging.fact_sales s
LEFT JOIN staging.dim_stores st
    ON s.store_id = st.store_id
WHERE st.store_id IS NULL;

SELECT COUNT(*) AS orphan_product_sales
FROM staging.fact_sales s
LEFT JOIN staging.dim_products p
    ON s.product_id = p.product_id
WHERE p.product_id IS NULL;