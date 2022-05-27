with
    source_data as (
        SELECT 
            addressid
            ,city
            ,stateprovinceid
            ,addressline1
            ,postalcode
            ,modifieddate
        FROM {{source('IndiciumLucasProject','person_address')}}
            
    )

SELECT * FROM source_data