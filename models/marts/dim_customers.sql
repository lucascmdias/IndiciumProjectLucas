with
    person as (
        select * 
        from {{ref('stg_person')}}
    )

    , customer as (

        select 
            row_number() over (order by customerid) as customer_sk
            ,customerid
            ,CONCAT(person.firstname, ' ', person.lastname ) as name
        from  {{ ref('stg_customers')}} as customer
        left join person on customer.personid = person.businessentityid
    )

select * from customer