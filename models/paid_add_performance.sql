{{ config(
materialized='table'
) }}

WITH cost_per_eng AS (
    SELECT
        channel,
        CASE 
            WHEN SUM(engagements) = 0 THEN NULL 
            ELSE SUM(spend) / NULLIF(SUM(engagements), 0)
        END AS cost_per_engage
    FROM
        {{ ref('mcdm_paid_ads_basic_performance') }}
    GROUP BY
        channel
), 
    conversion_cost AS (
        SELECT
            channel,
            CASE 
                WHEN SUM(total_conversions) = 0 THEN NULL 
                ELSE SUM(spend) / NULLIF(SUM(total_conversions), 0)
            END AS conversion_cost
        FROM
            {{ ref('mcdm_paid_ads_basic_performance') }}
        GROUP BY
            channel
),

    impressions AS (
        SELECT
            channel,
            SUM(impressions) AS impressions
        FROM
            {{ ref('mcdm_paid_ads_basic_performance') }}
        GROUP BY
            channel
),
    cpc AS (
        SELECT
            channel,
            CASE 
                WHEN SUM(clicks) = 0 THEN NULL 
                ELSE SUM(spend) / NULLIF(SUM(clicks), 0)
            END AS cpc
        FROM
            {{ ref('mcdm_paid_ads_basic_performance') }}
        GROUP BY
            channel
    )

SELECT 
    cc.channel,
    cpe.cost_per_engage,
    cc.conversion_cost,
    im.impressions,
    cpc.cpc
FROM
    cost_per_eng AS cpe
JOIN
    conversion_cost AS cc
ON
    cpe.channel = cc.channel
JOIN
    impressions AS im
ON
    cc.channel = im.channel
JOIN
    cpc
ON
    cpc.channel = im.channel

