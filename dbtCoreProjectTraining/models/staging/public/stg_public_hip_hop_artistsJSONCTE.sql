with source_model as (
    {{ flatten_json(
    model_name =  source('HIPHOPARTIST', 'HIP_HOP_ARTIST'),
    json_column ='artist_data'
)}}

),
final as (

    select * from source_model
)
select * from final