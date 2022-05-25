with
    source_data as (
        SELECT *
        FROM {{source('IndiciumLucasProject','sales_salesorderheadersalesreason')}}
            
    )

SELECT * FROM source_data