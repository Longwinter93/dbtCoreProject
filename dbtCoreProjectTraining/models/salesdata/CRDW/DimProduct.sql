{{ config(
    materialized='ephemeral'
)}}

SELECT * FROM {{ source('ContosoRetailDW','DimProduct') }}
