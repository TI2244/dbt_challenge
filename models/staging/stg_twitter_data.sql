WITH twitter AS (
    SELECT    
        NULL AS ad_id,
        0 AS add_to_cart,
        NULL AS adset_id,
        campaign_id AS campaign_id,
        channel AS channel,
        clicks AS clicks,
        comments AS comments,
        NULL AS creative_id,
        date AS date,
        engagements AS engagements,
        impressions AS impressions,
        0 AS installs,
        likes AS likes,
        url_clicks AS link_clicks,
        NULL AS placement_id,
        0 AS post_click_conversions,
        0 AS post_view_conversions,
        0 AS posts,
        0 AS purchase,
        0 AS registrations,
        0 AS revenue,
        0 AS shares,
        spend AS spend,
        0 AS total_conversions,
        video_total_views AS video_views
    FROM
        {{ ref('src_promoted_tweets_twitter_all_data') }}
)

SELECT 
    *
FROM
    twitter
