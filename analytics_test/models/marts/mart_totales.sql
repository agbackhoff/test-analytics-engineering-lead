WITH quality_condition AS (
    SELECT 'a' AS a FROM {{ ref('source_original_quality_check')}}
),

base_data AS (
    SELECT
        y AS conversion
    FROM {{ ref('stg_original') }}
)

SELECT
    COUNT(*) AS total_contacts,
    COUNT(CASE WHEN conversion = 'yes' THEN 1 END) AS successful_contacts,
    ROUND((COUNT(CASE WHEN conversion = 'yes' THEN 1 END) / COUNT(*)), 4) AS rate_conversions,
    CONCAT(CAST(ROUND((COUNT(CASE WHEN conversion = 'yes' THEN 1 END) * 100 / COUNT(*)), 2) AS STRING), '%') AS porcentaje_conversion
FROM base_data