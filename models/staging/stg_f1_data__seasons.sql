
with source as (

    select * from {{ source('f1_data', 'seasons') }}

),

renamed as (

    select
        year,
        url

    from source

)

select * from renamed

