with
    source_data as (
        SELECT 
            namestyle
            ,firstname
            ,lastname
            ,emailpromotion
            ,rowguid
            ,modifieddate
        FROM {{source('IndiciumLucasProject','person_person')}}
            
    )

SELECT * FROM source_data