with
    source_data as (
        SELECT * FROM {{source('IndiciumLucasProject','sales_customer')}}
            
    )

SELECT * FROM source_data

/* `indiciumlucas.IndiciumLucasProject.sales_customer`  */