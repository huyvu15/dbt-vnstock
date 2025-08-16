{{
  config(
    materialized='table',
    tags=['silver', 'cashflow']
  )
}}

SELECT 
    *
FROM {{ source('source_vnstock', 'cashflow') }}  
