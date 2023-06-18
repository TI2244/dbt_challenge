WITH
    tw AS (
        SELECT *
        FROM {{ ref('stg_twitter_data') }}
    ),
    tk AS (
        SELECT *
        FROM {{ ref('stg_tiktok_data') }}
    ),
    fb AS (
        SELECT *
        FROM {{ ref('stg_facebook_data') }}
    ),
    bg AS (
        SELECT *
        FROM {{ ref('stg_bing_data') }}
    )

SELECT 
    * 
FROM 
    tw
UNION ALL
SELECT * FROM tk
UNION ALL
SELECT * FROM fb
UNION ALL
SELECT * FROM bg
