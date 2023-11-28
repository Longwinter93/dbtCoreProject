{% macro flatten_json(model_name, json_column) %}

{% set json_query %}
SELECT DISTINCT Keys.[key]
FROM {{ model_name }}  t
CROSS APPLY (
    SELECT [key] [key]
    FROM OPENJSON((SELECT t.{{ json_column }}))
) Keys
{% endset %}


{% set results = run_query(json_query) %}

{% if execute %}
{# Return the first column #}
{% set results_list = results.columns[0].values() %}
{% else %}
{% set results_list =  [] %}
{% endif %}

select
{{ json_column }},
{% for column_name in results_list %}
JSON_VALUE({{ json_column }}, '$.{{column_name }}') as {{ column_name }}
{% if not loop.last %},{% endif %}

{% endfor %}
FROM {{ model_name }} 


{% endmacro %}