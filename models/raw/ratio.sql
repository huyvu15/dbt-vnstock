{{
  config(
    materialized='table',
    tags=['bronze', 'ratio']
  )
}}

SELECT * FROM "vnstock"."ratio"
