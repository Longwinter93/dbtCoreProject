{% test is_adam_winner(model, column_name) %}

with validation as (

    select
        {{ column_name }} as Winner

    from {{ model }}

),

validation_errors as (

    select
        Winner

    from validation
    where Winner = 'Adam Kowalski'

)

select *
from validation_errors

{% endtest %}