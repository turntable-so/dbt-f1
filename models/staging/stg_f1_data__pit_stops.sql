
with source as (

    select * from {{ source('f1_data', 'pit_stops') }}

),

renamed as (

    select
        raceid,
        driverid,
        stop,
        lap,
        time,
        duration,
        milliseconds

    from source

)

select * from renamed

