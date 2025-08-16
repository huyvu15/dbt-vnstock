# dbt Stock Data Warehouse

dbt run --target raw --select raw

# Chạy silver models  
dbt run --target silver --select silver

# Serve docs locally

dbt docs generate

dbt docs serve