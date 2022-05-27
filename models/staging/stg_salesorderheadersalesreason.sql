with
    stg_salesorderheadersalesreason as (
        SELECT *
        FROM {{source('IndiciumLucasProject','sales_salesorderheadersalesreason')}}
            
    )

SELECT * FROM stg_salesorderheadersalesreason