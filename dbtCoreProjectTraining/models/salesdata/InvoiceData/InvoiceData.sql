{{ config(materialized='incremental',
          unique_key ="id",
          on_schema_change='append_new_columns'
    )
}}


with invoices AS (
    SELECT * FROM  {{ ref('StagingInvoices') }}

    {% if is_incremental() %}

    where create_date > (select max(create_date) from {{ this }})

    {% endif %}
),
final as (

    SELECT 
        id,
        create_date,
        customer_id,
        amount_due,
        due_date,
        payment_terms,
        '{{ invocation_id }}' as batch_id

    from invoices
)

SELECT * 
FROM  final