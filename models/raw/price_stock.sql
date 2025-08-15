{{
  config(
    materialized='table',
    tags=['bronze', 'price_stock']
  )
}}

SELECT * FROM "vnstock"."price_stock"
