{{
  config(
    materialized='table',
    tags=['bronze', 'balance_sheet']
  )
}}

SELECT * FROM "vnstock"."balance_sheet"
