{% snapshot ads_snapshosts %}

{{
    config(
      target_database='DEVdbtCoreTutorial',
      target_schema='snapshots',
      unique_key='ad_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}


select * from {{source('ad_platform', 'ad_platform')}}

{% endsnapshot %}