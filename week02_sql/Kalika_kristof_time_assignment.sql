/* The date the purchase was made (created_at field) 
Add 30 days to the purchase date. */
SELECT created_at, created_at + INTERVAL '30 days' AS plus_30
FROM purchases;			-- used interval function

-- Subtract 90 days from the purchase date
SELECT created_at, created_at - INTERVAL '90 days' AS minus_90
FROM purchases;

-- Convert the purchase date to a date string using the formatting of your choice
SELECT created_at, TO_CHAR(created_at, 'Month, DD/YYYY') AS date_string
FROM purchases;			-- used TO_CHAR

-- Truncate the purchase date to the hour.
SELECT created_at, DATE_TRUNC('hour', created_at) AS hour
FROM purchases;		-- used DATE_TRUNC 

-- Extract from the purchase date the year, month, day, weekday name, and week number
SELECT created_at, 
DATE_PART('year', created_at) AS year,
DATE_PART('month', created_at) AS month,
DATE_PART('day', created_at) AS day,
TO_CHAR(created_at, 'Day') AS weekday,
TO_CHAR(created_at, 'W') AS week_number
FROM purchases;		--used DATE_PART and TO_CHAR
