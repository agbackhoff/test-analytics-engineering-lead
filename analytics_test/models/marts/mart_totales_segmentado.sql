WITH quality_condition AS (
    SELECT 'a' AS a FROM {{ ref('source_original_quality_check')}}
),

base_data AS (
    SELECT
        CASE
            WHEN age BETWEEN 18 AND 29 THEN '18-29'
            WHEN age BETWEEN 30 AND 39 THEN '30-39'
            WHEN age BETWEEN 40 AND 49 THEN '40-49'
            WHEN age BETWEEN 50 AND 59 THEN '50-59'
            WHEN age >= 60 THEN '60+'
        END AS age_range,
        job,
        marital,
        education,
        y AS conversion
    FROM {{ ref('stg_original') }}
)

SELECT
    age_range,
    job,
    marital,
    education,
    COUNT(*) AS total_contacts,
    COUNT(CASE WHEN conversion = 'yes' THEN 1 END) AS successful_contacts,
    ROUND((COUNT(CASE WHEN conversion = 'yes' THEN 1 END) / COUNT(*)), 4) AS rate_conversion,
    CONCAT(CAST(ROUND((COUNT(CASE WHEN conversion = 'yes' THEN 1 END) * 100 / COUNT(*)), 2) AS STRING), '%') AS porcentaje_conversion
FROM base_data
GROUP BY age_range, job, marital, education
ORDER BY 1 ASC, 2, 3, 4 ASC