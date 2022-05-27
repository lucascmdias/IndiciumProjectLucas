with
    stg_credicard as (
        SELECT *
        FROM {{source('IndiciumLucasProject','sales_creditcard')}}
            
    )

SELECT * FROM stg_credicard