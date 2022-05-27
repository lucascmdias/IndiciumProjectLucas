with
    stg_person as (
        SELECT
            businessentityid
            ,namestyle
            ,firstname
            ,lastname
            ,emailpromotion
            ,rowguid
            ,modifieddate
        FROM {{source('IndiciumLucasProject','person_person')}}
            
    )

SELECT * FROM stg_person