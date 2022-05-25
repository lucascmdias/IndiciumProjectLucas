with
    source_data as (
        SELECT 
            productid
            ,name
            ,productnumber
            ,makeflag
            ,finishedgoodsflag
            ,safetystocklevel
            ,reorderpoint
            ,standardcost
            ,listprice
            ,daystomanufacture
            ,sellstartdate
            ,sellenddate
            ,rowguid
            ,modifieddate
        FROM {{source('IndiciumLucasProject','production_product')}}
            
    )

SELECT * FROM source_data