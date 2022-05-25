with
    source_data as (
        SELECT *
        FROM {{source('IndiciumLucasProject','sales_salesreason')}}
            
    )

SELECT * FROM source_data