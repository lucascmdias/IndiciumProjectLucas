with
    source_data as (
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

SELECT * FROM source_data