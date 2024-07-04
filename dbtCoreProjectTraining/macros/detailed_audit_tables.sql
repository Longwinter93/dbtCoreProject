{% macro detailedaudittable() %}

{% set schema = 'AuditTable' %}
{% set tablename = 'DetailedAuditTables' %}

{% set createddetailedaudittable %}

IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = '{{ schema }}'))
BEGIN 
    EXEC ('CREATE SCHEMA {{ schema }} AUTHORIZATION [dbo] ')
END 

IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = '{{ tablename }}' and xtype = 'U')
CREATE TABLE {{target.database}}.{{ schema }}.{{ tablename }} (
    RunID nvarchar(255),
    StartTimeOfRunning datetime,
    Status nvarchar(255)
    )
{% endset %}

{% do run_query(createddetailedaudittable) %}

{% endmacro %}

{% macro insertstartdatatodetailedaudittable() %}

{% set schema = 'AuditTable' %}
{% set tablename = 'DetailedAuditTables' %}

{% set insertdata %}


INSERT INTO {{target.database}}.{{ schema }}.{{ tablename }}
VALUES ('{{ invocation_id }}', getdate(), 'StartProcess')

{% endset %}

{% do run_query(insertdata) %}

{% endmacro %}

{% macro insertenddatatodetailedaudittable() %}

{% set schema = 'AuditTable' %}
{% set tablename = 'DetailedAuditTables' %}

{% set insertdata %}


INSERT INTO {{target.database}}.{{ schema }}.{{ tablename }}
VALUES ('{{ invocation_id }}', getdate(), 'EndProcess')

{% endset %}

{% do run_query(insertdata) %}

{% endmacro %}




