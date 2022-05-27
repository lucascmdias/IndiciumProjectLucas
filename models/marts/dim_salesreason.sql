with
    salesreason as (
        select * 
        from {{ref('stg_salesreason')}}
    )

    ,salesorderheadersalesreason as (

        select 
            row_number() over (order by salesorderid) as salesorder_sk
        from  {{ ref('stg_salesorderheadersalesreason')}} as salesorderheadersalesreason
        left join salesorderheadersalesreason on salesreason.salesreasonid = salesorderheadersalesreason.salesreasonid
    )

select * from salesorderheadersalesreason