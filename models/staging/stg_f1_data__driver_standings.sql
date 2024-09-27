
with source as (

    select * from {{ source('f1_data', 'driver_standings') }}

),

renamed as (

    select
        driverstandingsid,
        raceid,
        driverid,
        points,
        position,
        positiontext,
        wins

    from source

)

select * from renamed

