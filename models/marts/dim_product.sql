with

    product as (

        select 
            row_number() over (order by productid) as product_sk
            ,name
            ,productnumber
            ,makeflag
            ,finishedgoodsflag
            ,safetystocklevel
            ,reorderpoint
            ,standardcost
            ,listprice
            ,daystomanufacture
            ,sellstartdate
        from  {{ ref('stg_product')}} as product
    )

select * from product