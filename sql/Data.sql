SELECT
    table_schema,
    table_name
FROM information_schema.tables
WHERE table_schema = 'staging'
ORDER BY table_name;

SELECT
    table_name,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'staging'
ORDER BY table_name, ordinal_position;

CREATE SCHEMA IF NOT EXISTS staging;

SELECT schema_name
FROM information_schema.schemata
WHERE schema_name IN ('public', 'staging', 'analytics')
ORDER BY schema_name;

SELECT
    table_name,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'public'
ORDER BY table_name, ordinal_position;

SELECT
    table_name,
    (
        xpath('/row/count/text()', 
              query_to_xml(
                  format('SELECT COUNT(*) FROM public.%I', table_name),
                  false,
                  true,
                  ''
              )
        )
    )[1]::text::bigint AS row_count
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;

SELECT 'business_operations' AS table_name, COUNT(*) AS rows FROM public.business_operations
UNION ALL
SELECT 'dim_agents', COUNT(*) FROM public.dim_agents
UNION ALL
SELECT 'dim_customers', COUNT(*) FROM public.dim_customers
UNION ALL
SELECT 'dim_products', COUNT(*) FROM public.dim_products
UNION ALL
SELECT 'dim_stores', COUNT(*) FROM public.dim_stores
UNION ALL
SELECT 'fact_call_logs', COUNT(*) FROM public.fact_call_logs
UNION ALL
SELECT 'fact_message_interactions', COUNT(*) FROM public.fact_message_interactions
UNION ALL
SELECT 'fact_sales', COUNT(*) FROM public.fact_sales
UNION ALL
SELECT 'fact_targets', COUNT(*) FROM public.fact_targets;

ALTER TABLE public.dim_customers
SET SCHEMA staging;

ALTER TABLE public.dim_stores
SET SCHEMA staging;

ALTER TABLE public.dim_products
SET SCHEMA staging;

ALTER TABLE public.dim_agents
SET SCHEMA staging;

ALTER TABLE public.fact_sales
SET SCHEMA staging;

ALTER TABLE public.fact_call_logs
SET SCHEMA staging;

ALTER TABLE public.fact_message_interactions
SET SCHEMA staging;

ALTER TABLE public.fact_targets
SET SCHEMA staging;

SELECT 'dim_customers' AS table_name, COUNT(*) AS row_count
FROM staging.dim_customers
UNION ALL
SELECT 'dim_stores', COUNT(*)
FROM staging.dim_stores
UNION ALL
SELECT 'dim_products', COUNT(*)
FROM staging.dim_products
UNION ALL
SELECT 'dim_agents', COUNT(*)
FROM staging.dim_agents
UNION ALL
SELECT 'fact_sales', COUNT(*)
FROM staging.fact_sales
UNION ALL
SELECT 'fact_call_logs', COUNT(*)
FROM staging.fact_call_logs
UNION ALL
SELECT 'fact_message_interactions', COUNT(*)
FROM staging.fact_message_interactions
UNION ALL
SELECT 'fact_targets', COUNT(*)
FROM staging.fact_targets;

SELECT *
FROM staging.dim_customers
LIMIT 10;



