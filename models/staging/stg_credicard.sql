with
    source_data as (
        SELECT *
        FROM {{source('IndiciumLucasProject','sales_creditcard')}}
            
    )

SELECT * FROM source_data