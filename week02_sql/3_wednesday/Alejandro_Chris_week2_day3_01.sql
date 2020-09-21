SELECT created_at AS date_of_purchase, 
created_at + INTERVAL '30 days' AS add_30,
created_at - INTERVAL '90 days'AS sub_90,
TO_CHAR(created_at, 'YYYY-MM-DD') AS date_string,
DATE_TRUNC('hour', created_at) AS hour,
DATE_PART('year', created_at) AS year,
DATE_PART('month', created_at) AS month,
DATE_PART('day', created_at) AS day,
TO_CHAR(created_at, 'Day') AS weekday,
TO_CHAR(created_at, 'D') AS weekday_num
FROM purchases