WITH facebook AS (
    SELECT 
        ad_id AS ad_id,
        add_to_cart AS add_to_cart,
        adset_id AS adset_id,
        campaign_id AS campaign_id,
        channel AS channel,
        clicks AS clicks,
        comments AS comments,
        creative_id AS creative_id,
        date AS date,
        (views + inline_link_clicks) AS engagements,
        impressions AS impressions,
        mobile_app_install AS installs,
        likes AS likes,
        inline_link_clicks AS link_clicks,
        NULL AS placement_id,      
        0 AS post_click_conversions,
        0 AS post_view_conversions, 
        0 AS posts, 
        purchase AS purchase,
        complete_registration AS registrations,
        purchase_value AS revenue,
        shares AS shares,
        spend AS spend,
        purchase AS total_conversions, 
        0 AS video_views
    FROM
        {{ ref('src_ads_creative_facebook_all_data') }}
)

SELECT 
    *
FROM
    facebook
