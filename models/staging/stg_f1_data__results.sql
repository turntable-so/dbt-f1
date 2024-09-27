
with source as (

    select * from {{ source('f1_data', 'results') }}

),

renamed as (

    select
        resultid,
        raceid,
        driverid,
        constructorid,
        number,
        grid,
        position,
        positiontext,
        positionorder,
        points,
        laps,
        time,
        milliseconds,
        fastestlap,
        rank,
        fastestlaptime,
        fastestlapspeed,
        statusid

    from source

)

select * from renamed

