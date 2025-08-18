{{
  config(
    materialized='table',
    tags=['silver', 'listing_companies']
  )
}}

SELECT 
    *
FROM {{ source('source_vnstock', 'listing_companies') }}  
