SELECT *
FROM purchases
LIMIT 5;

SELECT DATE_TRUNC('day', created_at) AS purchase_date,
created_at + INTERVAL '30 days' AS plus_30_days,
created_at - INTERVAL '90 days' AS minus_90_days,
TO_CHAR(created_at, 'MM/DD/YYYY') AS date_purchased,
DATE_TRUNC('hour', created_at) AS trunc_hour,
TO_CHAR(created_at, 'YYYY') AS year_purchased,
TO_CHAR(created_at, 'Month') AS month_purchased,
TO_CHAR(created_at, 'DD') AS day_purchased,
TO_CHAR(created_at, 'Day') AS weekday_purchased,
TO_CHAR(created_at, 'W') AS week_num_month,
TO_CHAR(created_at, 'WW') AS week_num_year
FROM purchases;

