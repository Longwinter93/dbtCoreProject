{{ config(
    materialized='ephemeral'
)}}


select * from {{ ref('GoatOfTennis') }}
