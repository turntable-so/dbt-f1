
with source as (

    select * from {{ source('f1_data', 'qualifying') }}

),

renamed as (

    select
        qualifyid,
        raceid,
        driverid,
        constructorid,
        number,
        position,
        q1,
        q2,
        q3

    from source

)

select * from renamed

