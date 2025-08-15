{{
  config(
    materialized='table',
    tags=['bronze', 'income_statement']
  )
}}

SELECT * FROM "vnstock"."income_statement"
