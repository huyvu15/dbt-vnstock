{{
  config(
    materialized='table',
    tags=['bronze', 'cashflow']
  )
}}

SELECT * FROM "vnstock"."cashflow"
