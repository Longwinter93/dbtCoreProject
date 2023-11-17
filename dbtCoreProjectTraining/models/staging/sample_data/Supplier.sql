WITH source_products AS (
    select * from {{ source('WideWorldImportersDW', 'Supplier') }}
)
SELECT * FROM source_products


