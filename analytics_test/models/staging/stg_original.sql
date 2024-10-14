SELECT
    CAST(`age` AS INT64) AS age,
    CAST(`job` AS STRING) AS job,
    CAST(`marital` AS STRING) AS marital,
    CAST(`education` AS STRING) AS education,
    CAST(`default` AS STRING) AS credit_default, 
    CAST(`balance` AS INT64) AS balance,
    CAST(`housing` AS STRING) AS housing,
    CAST(`loan` AS STRING) AS loan,
    CAST((CASE WHEN `contact` IS NULL THEN 'unknown' ELSE `contact` END) AS STRING) AS contact,
    CAST(`day_of_week` AS INT64) AS day_of_week,
    CAST(`month` AS STRING) AS month,
    CAST(`duration` AS INT64) AS duration,
    CAST(`campaign` AS INT64) AS campaign,
    CAST(`pdays` AS INT64) AS pdays,
    CAST(`previous` AS INT64) AS previous,
    CAST((CASE WHEN `poutcome` IS NULL THEN 'unknown' ELSE `poutcome` END) AS STRING) AS poutcome,
    CAST(`y` AS STRING) AS y
FROM 
    {{ source('raw_marketing_data', 'original') }}
WHERE `age` IS NOT NULL
AND `job` IS NOT NULL
AND `marital` IS NOT NULL
AND `education` IS NOT NULL
AND `default` IS NOT NULL
AND `balance` IS NOT NULL
AND `housing` IS NOT NULL
AND `loan` IS NOT NULL
AND `day_of_week` IS NOT NULL
AND `month` IS NOT NULL
AND `duration` IS NOT NULL
AND `campaign` IS NOT NULL
AND `previous` IS NOT NULL
AND `y` IS NOT NULL