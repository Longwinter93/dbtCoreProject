WITH source_products AS (
    select * from {{ source('AdventureWorks2019', 'Product') }}
)
SELECT * FROM source_products


