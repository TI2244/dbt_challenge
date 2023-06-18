WITH bing AS (
    SELECT
        ad_id AS ad_id,
        NULL AS add_to_cart,
        adset_id AS adset_id,
        campaign_id AS campaign_id,
        channel AS channel,
        clicks AS clicks,
        NULL AS comments,
        NULL AS creative_id,
        date AS date,
        0 AS engagements,
        imps AS impressions,
        0 AS installs,
        0 AS likes,
        0 AS link_clicks,
        NULL AS placement_id,
        0 AS post_click_conversions,
        0 AS post_view_conversions,
        0 AS posts,
        0 AS purchase,
        0 AS registrations,
        revenue AS revenue,
        0 AS shares,
        spend AS spend,
        conv AS total_conversions,
        0 AS video_views
    FROM
        {{ ref('src_ads_bing_all_data') }}
)

SELECT 
    *
FROM
    bing
