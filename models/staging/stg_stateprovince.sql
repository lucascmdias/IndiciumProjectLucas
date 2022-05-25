with
    source_data as (
        SELECT *
        FROM {{source('IndiciumLucasProject','person_stateprovince')}}
            
    )

SELECT * FROM source_data