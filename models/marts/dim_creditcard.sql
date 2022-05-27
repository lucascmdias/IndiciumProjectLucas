with

    credicard as (

        select 
            row_number() over (order by creditcardid) as creditcard_sk
            ,cardtype
            ,cardnumber
            ,expmonth
            ,expyear
        from  {{ ref('stg_credicard')}} as credicard
    )

select * from credicard