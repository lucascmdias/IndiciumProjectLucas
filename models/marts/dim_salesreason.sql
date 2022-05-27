with
    salesreason as (
        select * 
        from {{ref('stg_salesreason')}}
    )

    , reason as (

        select 
            row_number() over (order by salesorderid) as salesorder_sk
            ,salesorderid
        from  {{ ref('stg_salesorderheadersalesreason')}} as reason
        left join salesreason on salesreason.salesreasonid = reason.salesreasonid
    )

select * from reason