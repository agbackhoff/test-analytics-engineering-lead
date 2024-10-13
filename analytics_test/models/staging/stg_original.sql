SELECT
    *
FROM {{ source('raw_marketing_data', 'original')}}