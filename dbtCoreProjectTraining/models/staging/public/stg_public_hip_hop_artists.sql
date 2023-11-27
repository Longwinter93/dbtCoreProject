{% set json_query %}
SELECT DISTINCT Keys.[key]
FROM dbo.HIP_HOP_ARTIST t
CROSS APPLY (
    SELECT [key] [key]
    FROM OPENJSON((SELECT t.ARTIST_DATA))
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
artist_data,
{% for column_name in results_list %}
JSON_VALUE(artist_data, '$.{{column_name }}') as {{ column_name }}
{% if not loop.last %},{% endif %}

{% endfor %}
FROM {{ source('HIPHOPARTIST', 'HIP_HOP_ARTIST')}} 

