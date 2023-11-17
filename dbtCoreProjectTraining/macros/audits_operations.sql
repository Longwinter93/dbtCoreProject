{% macro insert_audits(action_name) -%}

INSERT INTO dbt_audits (audit_type) VALUES ('{{ action_name }}')

{%- endmacro %}