{{
  config(
    materialized='table',
    tags=['silver', 'ratio']
  )
}}

SELECT 
    *
FROM {{ source('source_vnstock', 'ratio') }}  
