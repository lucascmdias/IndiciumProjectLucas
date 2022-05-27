with
    stg_countryregion as (
        SELECT *
        FROM {{source('IndiciumLucasProject','person_countryregion')}}
            
    )

SELECT * FROM stg_countryregion