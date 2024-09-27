
with source as (

    select * from {{ ref ('circuits') }}

),

renamed as (

    select
        circuitid,
        circuitref,
        name,
        location,
        country,
        lat,
        lng,
        alt,
        url

    from source

)

select * from renamed

