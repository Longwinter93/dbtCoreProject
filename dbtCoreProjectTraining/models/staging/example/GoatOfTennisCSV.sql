select * from {{ ref('GoatOfTennis') }}
{% if target.name == 'dev' %}
where [Event Name] = 'Australian Open'
{% endif %}