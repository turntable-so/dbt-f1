
with source as (

    select * from {{ source('f1_data', 'races') }}

),

renamed as (

    select
        raceid,
        year,
        round,
        circuitid,
        name,
        date,
        time,
        url,
        fp1_date,
        fp1_time,
        fp2_date,
        fp2_time,
        fp3_date,
        fp3_time,
        quali_date,
        quali_time,
        sprint_date,
        sprint_time

    from source

)

select * from renamed

