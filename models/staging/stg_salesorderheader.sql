with
    source_data as (
        SELECT 
            salesorderid
            ,revisionnumber
            ,orderdate
            ,duedate
            ,status
            ,onlineorderflag
            ,billtoaddressid
            ,shiptoaddressid
            ,subtotal
            ,taxamt
            ,freight
            ,totaldue
            ,rowguid
            ,modifieddate
        FROM {{source('IndiciumLucasProject','sales_salesorderheader')}}
            
    )

SELECT * FROM source_data