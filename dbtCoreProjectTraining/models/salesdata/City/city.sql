WITH Final AS (

    SELECT 
        'Lodz' as City,
        'Lodzkie' as Voivodeship
    UNION ALL
        SELECT 
        'Warsaw' as City,
        'Mazowieckie' as Voivodeship
)
SELECT * 
FROM Final