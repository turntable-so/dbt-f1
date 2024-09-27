
with source as (

    select * from {{ source('f1_data', 'status') }}

),

renamed as (

    select
        statusid,
        status

    from source

)

select * from renamed

