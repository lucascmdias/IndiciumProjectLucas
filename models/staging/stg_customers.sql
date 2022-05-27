with
    stg_customers as (
        SELECT * FROM {{source('IndiciumLucasProject','sales_customer')}}
            
    )

SELECT * FROM stg_customers

/* `indiciumlucas.IndiciumLucasProject.sales_customer`  */