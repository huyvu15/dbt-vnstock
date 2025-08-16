{{
  config(
    materialized='table',
    tags=['silver', 'income_statement']
  )
}}

SELECT 
    *
FROM {{ source('source_vnstock', 'income_statement') }}  
