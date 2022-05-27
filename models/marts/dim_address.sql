with
    countryregion as (
        select * 
        from {{ref('stg_countryregion')}}
    )

    ,stateprovince as (
        select * 
        from {{ref('stg_stateprovince')}}

    )

    , address as (

        select 
            row_number() over (order by addressid) as address_sk
            ,addressline1
            ,city
            ,postalcode
            ,countryregion.name as namecountryregion
            ,stateprovince.name as namestateprovince
            ,addressid
        from  {{ ref('stg_address')}} as address
        left join stateprovince on address.stateprovinceid = stateprovince.stateprovinceid
        left join countryregion on stateprovince.countryregioncode = countryregion.countryregioncode

    )

select * from address