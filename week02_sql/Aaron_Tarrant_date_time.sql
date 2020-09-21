SELECT created_at,
-- Add 30 days to the purchase date.
created_at + INTERVAL '30 days' AS after_30,
-- Subtract 90 days from the purchase date.
created_at - INTERVAL '90 days' AS before_90,
-- Convert the purchase date to a date string using the formatting of your choice.
TO_CHAR(created_at, 'DD/MM/YYYY') AS date_string,
-- Truncate the purchase date to the hour.
DATE_TRUNC('hour', created_at) AS created_at_hour,
-- Extract from the purchase date the year, month, day, weekday name, and week number.
DATE_PART('year', created_at) AS created_at_year,
DATE_PART('month', created_at) AS created_at_month,
DATE_PART('day', created_at) AS created_at_day,
TO_CHAR(created_at, 'DAY') AS created_at_day_name,
TO_CHAR(created_at, 'WW') AS week_number
FROM purchases
LIMIT 100;
