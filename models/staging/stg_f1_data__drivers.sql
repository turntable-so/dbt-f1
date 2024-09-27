
with source as (

    select * from {{ source('f1_data', 'drivers') }}

),

renamed as (

    select
        driverid,
        driverref,
        number,
        code,
        forename,
        surname,
        dob,
        nationality,
        url

    from source

)

select * from renamed

