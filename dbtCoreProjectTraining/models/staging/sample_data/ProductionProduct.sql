WITH source_products AS (
    select * from {{ source('AdventureWorks2019', 'Product') }}
)
SELECT *,'{{ invocation_id }}' as invocation_id FROM source_products


