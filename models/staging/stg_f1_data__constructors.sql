
with source as (

    select * from {{ source('f1_data', 'constructors') }}

),

renamed as (

    select
        constructorid,
        constructorref,
        name,
        nationality,
        url

    from source

)

select * from renamed

