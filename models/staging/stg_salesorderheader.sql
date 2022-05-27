with
    source_data as (
        SELECT 
            salesorderid
            ,customerid
            ,revisionnumber
            ,orderdate
            ,duedate
            ,status
            ,onlineorderflag
            ,billtoaddressid
            ,shiptoaddressid
            ,subtotal
            ,creditcardid
            ,taxamt
            ,freight
            ,totaldue
            ,rowguid
            ,modifieddate
        FROM {{source('IndiciumLucasProject','sales_salesorderheader')}}
            
    )

SELECT * FROM source_data