select created_at,
	created_at + interval '30 days' as created_at_plus_30_days,
	created_at - interval '90 days' as created_at_minus_90_days,
	to_char(created_at, 'MM/DD/YYYY') as char_date,
	date_trunc('hour', created_at) as trunc_hour,
	date_part('year', created_at) as year,
	to_char(created_at, 'month') as month,
	date_part('day', created_at) as day,
	to_char(created_at, 'Day') as weekday_name,
	to_char(created_at, 'WW') as week_number
from purchases;