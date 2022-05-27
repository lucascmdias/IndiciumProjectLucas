with
    stg_salesreason as (
        SELECT *
        FROM {{source('IndiciumLucasProject','sales_salesreason')}}
            
    )

SELECT * FROM stg_salesreason