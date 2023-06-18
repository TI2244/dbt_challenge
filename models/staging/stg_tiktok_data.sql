WITH tiktok AS (
    SELECT 
        ad_id AS ad_id,
        add_to_cart AS add_to_cart,
        NULL AS adset_id,
        campaign_id AS campaign_id,
        channel AS channel,
        clicks AS clicks,
        NULL AS comments,
        NULL AS creative_id,
        date AS date,
        0 AS engagements,
        impressions AS impressions,
        (rt_installs + skan_app_install) AS installs,
        0 AS likes,
        0 AS link_clicks,
        NULL AS placement_id,
        0 AS post_click_conversions,
        0 AS post_view_conversions,
        0 AS posts,
        purchase AS purchase,
        registrations AS registrations,
        0 AS revenue,
        0 AS shares,
        spend AS spend,
        (conversions + skan_conversion) AS total_conversions,
        video_views AS video_views
    FROM
        {{ ref('src_ads_tiktok_ads_all_data') }}
)

SELECT 
    *
FROM
    tiktok
