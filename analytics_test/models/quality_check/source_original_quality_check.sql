{{ config(
    materialized='incremental',
    unique_key='unique_id',
    on_schema_change='append'
) }}

WITH raw_count AS (
    SELECT
        'a' AS a,
        COUNT(*) AS raw_records
    FROM {{ source('raw_marketing_data', 'original') }}
),
clean_count AS (
    SELECT
        'a' AS a,
        COUNT(*) AS clean_records
    FROM {{ ref('stg_original') }}
),
calculated AS (
    SELECT
        rc.raw_records,
        cc.clean_records,
        ROUND((cc.clean_records/rc.raw_records), 4) AS passed_quality_rate,
        CONCAT(CAST(ROUND((cc.clean_records/rc.raw_records) * 100, 2) AS STRING), '%') AS passed_quality_check_percentage,
        CURRENT_TIMESTAMP() AS calculated_at_timestamp,
        GENERATE_UUID() AS unique_id
    FROM raw_count rc 
    FULL JOIN clean_count cc ON rc.a = cc.a
)


{% if is_incremental() %}
    SELECT *
    FROM calculated
    WHERE unique_id NOT IN (SELECT unique_id FROM {{ this }})
{% else %}
    SELECT *
    FROM calculated
{% endif %}