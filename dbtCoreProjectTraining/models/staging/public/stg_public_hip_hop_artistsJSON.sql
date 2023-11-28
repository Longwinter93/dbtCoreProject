{{ flatten_json(
    model_name =  source('HIPHOPARTIST', 'HIP_HOP_ARTIST'),
    json_column ='artist_data'
)}}