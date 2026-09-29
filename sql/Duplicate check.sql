SELECT
    order_id,
    COUNT(*) AS occurrence_count
FROM staging.fact_sales
GROUP BY order_id
HAVING COUNT(*) > 1
ORDER BY occurrence_count DESC;

SELECT
    COUNT(*) AS duplicate_order_groups
FROM (
    SELECT order_id
    FROM staging.fact_sales
    GROUP BY order_id
    HAVING COUNT(*) > 1
) d;