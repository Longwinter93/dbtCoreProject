WITH TennisGoat AS (

    SELECT * FROM {{ref('GoatOfTennisCSVEphemeral')}}

),TennisGoatDetailed AS (

    SELECT * FROM {{ref('GoatOfTennisCSV')}}

), final as (
    SELECT 
    TGD.Winner,
    TGD.Runner,
    TG.Tournament,
    TG.Year,
    IIF(TGD.Winner = {{ var('current_champion')}}, 'True', 'False') AS is_champion_Nadal,
    IIF(TG.Year = {{ var('year')}}, 'True', 'False') AS is_current_year
    FROM TennisGoat as TG 
    LEFT JOIN TennisGoatDetailed TGD ON TG."Event Name" = TGD."Event Name" 
    WHERE TG."Event Name" = 'Australian Open'
   
)

SELECT *,'{{ invocation_id }}' as invocation_id FROM final