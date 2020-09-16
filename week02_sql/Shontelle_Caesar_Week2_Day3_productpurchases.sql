/*
The date the purchase was made (created_at field).
Add 30 days to the purchase date.
Subtract 90 days from the purchase date.
Convert the purchase date to a date string using the formatting of your choice.
Truncate the purchase date to the hour.
Extract from the purchase date the year, month, day, weekday name, and week number.
*/

SELECT created_at,
created_at + INTERVAL '30 days' AS plus_30d,
created_at - INTERVAL '90 days' AS minus_90d,
TO_CHAR(created_at, 'MM/DD/YYYY') AS date_string,
DATE_TRUNC('hour', created_at) AS trunc_hour,
TO_CHAR(created_at, 'YYYY') as year,
TO_CHAR(created_at, 'Month') as month,
TO_CHAR(created_at, 'DD') as day,
TO_CHAR(created_at, 'Day') as weekday_name,
TO_CHAR(created_at, 'WW') as year_week
FROM purchases AS purchase_2020
LIMIT 100