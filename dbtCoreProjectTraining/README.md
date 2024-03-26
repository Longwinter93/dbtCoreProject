# dbtCoreProjectTraining
## DESCRIPTION OF PROJECT

<br />The main goal of this project was to perform and test all ***dbt core's functions***
<br />_dbt-sql server adapter_ was installed.

<br />This project was create to practise resources that were configured on **dbt_project.yml**.
<br />dbt models in a warehouse was periststed by using **Materializations**.
<br />What is more, **incremental model** was also configured.
<br />**Doc function** was used to reference docs blocks in the description field of schema.yml files.
<br />**Jinja** a templating language was combined with SQL especially {{ref}} & {{source}} functions in models and in this project.
<br />In addition, **Macros** in Jinija was also utilized in order to reuse a piece of codes multiple times.
<br />**Variables** were also defined and invocation_id outputs to generate UUID.
<br />**Hooks and operations** in this dbt project was used to version control and execute statements as part of the dbt project.
<br />**A analyses folder** was created in order to compile models, but not to execute.
<br />**A exposures folder** was created so as to define and describe a downstream use of this dbt project. 

## dbt commands

<br />dbt project was configured that it was possible to use these commands: 
- dbt run
- dbt init
- dbt debug
- dbt deps
- dbt clean
- dbt test
- dbt build
- dbt seed
- dbt snapshot
- dbt ls
- dbt compile
- dbt freshness
- dbt docs serve
- dbt docs generate
- dbt show

