--Write a query that returns the following information from the purchases table
	--The date the purchase was made (created_at field).
	--Add 30 days to the purchase date.
	--Subtract 90 days from the purchase date.
	--Convert the purchase date to a date string using the formatting of your choice.
	--Truncate the purchase date to the hour.
	--Extract from the purchase date the year, month, day, weekday name, and week number.



SELECT created_at, 
created_at + INTERVAL '30 days' as plus_30_days, 
created_at - INTERVAL '90 days' as minus_90_days,
TO_CHAR(created_at, 'MM/DD/YYYY') as string_date,
DATE_TRUNC('hour', created_at) as hour,
TO_CHAR(created_at, 'YYYY') as year,
TO_CHAR(created_at, 'MM') as month,
TO_CHAR(created_at, 'DD') as day,
TO_CHAR(created_at, 'Day') as day_name,
TO_CHAR(created_at, 'WW') as week
FROM purchases
LIMIT 100;