{{
  config(
    materialized='table',
    tags=['silver', 'price_stock']
  )
}}

SELECT 
    *
FROM {{ source('source_vnstock', 'price_stock') }}  
