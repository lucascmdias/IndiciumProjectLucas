with
    source_data as (
        SELECT *
        FROM {{source('IndiciumLucasProject','person_countryregion')}}
            
    )

SELECT * FROM source_data