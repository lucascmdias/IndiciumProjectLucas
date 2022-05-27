with
    stg_address as (
        SELECT 
            addressid
            ,city
            ,stateprovinceid
            ,addressline1
            ,postalcode
            ,modifieddate
        FROM {{source('IndiciumLucasProject','person_address')}}
            
    )

SELECT * FROM stg_address