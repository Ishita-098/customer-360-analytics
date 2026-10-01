/* Check sales */

/* Quantity must be positive */
SELECT COUNT(*) AS invalid_quantity
FROM staging.fact_sales
WHERE quantity <= 0;

/* Unit price cannot be negative */
SELECT COUNT(*) AS invalid_price
FROM staging.fact_sales
WHERE unit_price < 0;

/* Discount should be between 0 and 1 */
SELECT COUNT(*) AS invalid_discount
FROM staging.fact_sales
WHERE discount < 0
   OR discount > 1;

/* Revenue cannot be negative */
SELECT COUNT(*) AS invalid_revenue
FROM staging.fact_sales
WHERE revenue < 0;