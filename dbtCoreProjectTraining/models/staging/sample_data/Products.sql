WITH source_products AS (
    select * from {{ source('AdventureWorksDW2019', 'DimProduct') }}
)
SELECT * FROM source_products


