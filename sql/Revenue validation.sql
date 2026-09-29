SELECT
    COUNT(*) AS invalid_revenue_rows
FROM staging.fact_sales
WHERE ABS(
    revenue -
    (quantity * unit_price * (1 - discount))
) > 0.01;