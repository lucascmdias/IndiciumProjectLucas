with
    staging as (
        select * 
        from {{ref('stg_customers')}}
)

    , transformed as (

        select 
            row_number() over (order by customerid) as customer_sk
            ,customerid as customer_id
            ,personid as person_id
            ,storeid as store_id
            ,territoryid as territory_id
            ,rowguid as rowgu_id
            ,modifieddate as modified_date
        from staging
    )

select * from transformed