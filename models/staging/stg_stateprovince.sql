with
    stg_stateprovince as (
        SELECT *
        FROM {{source('IndiciumLucasProject','person_stateprovince')}}
            
    )

SELECT * FROM stg_stateprovince