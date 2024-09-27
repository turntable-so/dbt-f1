
with source as (

    select * from {{ source('f1_data', 'sprint_results') }}

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
        fastestlaptime,
        statusid

    from source

)

select * from renamed

