{{
  config(
    materialized='table',
    tags=['bronze', 'listing_companies']
  )
}}

SELECT * FROM "vnstock"."listing_companies"
