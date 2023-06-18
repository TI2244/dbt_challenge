# Marketing Common Data Modelling Challenge

Welcome to the Ads Performance dashboard! This dashboard integrates data from four advertising channels:

- Facebook
- TikTok
- Twitter
- Bing

The dashboard provides insights into:

- Conversion costs by channel
- Cost per engagement
- Impressions by channel
- Cost per click (CPC), calculated as the total spend divided by the number of clicks

You can access the dashboard via this link: [Ads Performance Dashboard](https://lookerstudio.google.com/u/1/reporting/3b7227f1-b27e-4a1a-a5de-4836d60941bf/page/tEnnC)

## How to Add Data from a New Channel

If you want to add and compare data from an additional advertising channel, follow these steps:

1. Clone the Repository.
2. Add your CSV data file to the **seeds** folder.
3. Create a staging model in the **models/staging** folder. Please use the same column name convention as provided in the [mcdm_paid_ads_basic_performance_structure.csv](seeds/mcdm_paid_ads_basic_performance_structure.csv) file. If any column in your data is empty, fill it with 0 or null.
4. Incorporate your data into the **mcdm_paid_ads_basic_performance** model using the same **UNION ALL** pattern.
5. Run the dbt build command.

Congratulations! Your data have been added to the dashboard. Now, open the [Ads Performance Dashboard](https://lookerstudio.google.com/u/1/reporting/3b7227f1-b27e-4a1a-a5de-4836d60941bf/page/tEnnC) to compare the performance across different channels.
