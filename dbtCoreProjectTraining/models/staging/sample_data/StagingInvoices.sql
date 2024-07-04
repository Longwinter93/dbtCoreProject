WITH source_products AS (
    select * from {{ source('dbtCoreTutorial', 'StagingInvoices') }}
)
SELECT * FROM source_products