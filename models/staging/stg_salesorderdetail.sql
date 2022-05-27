with
    stg_salesorderdetail as (
        SELECT 
            salesorderid
            ,salesorderdetailid
            ,orderqty
            ,productid
            ,specialofferid
            ,unitprice
            ,unitpricediscount
            ,rowguid
            ,modifieddate
        FROM {{source('IndiciumLucasProject','sales_salesorderdetail')}}
            
    )

SELECT * FROM stg_salesorderdetail