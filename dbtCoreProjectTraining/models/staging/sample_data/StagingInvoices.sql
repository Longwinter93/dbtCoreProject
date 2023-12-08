WITH source_products AS (
    select * from {{ source('DEVdbtCoreTutorial', 'StagingInvoices') }}
)
SELECT * FROM source_products


