WITH ads AS (


    SELECT * FROM {{ref('ads_snapshosts')}}

),
final as (
    SELECT 
        id,
	    ad_id,
	    ad_title,
	    ad_status,
	    ad_objective,
	    created_at,
	    updated_at,
	    dbt_scd_id,
	    dbt_updated_at,
	    dbt_valid_from,
	    dbt_valid_to
    FROM ads 
    WHERE dbt_valid_to IS NULL

)

SELECT * FROM final