WITH source_products AS (
    select * from {{ source('AdventureWorksDW2019', 'DimProduct') }}
)
SELECT *,'{{ invocation_id }}' as invocation_id FROM source_products


