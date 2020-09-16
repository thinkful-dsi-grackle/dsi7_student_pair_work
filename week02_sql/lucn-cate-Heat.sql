select created_at,
created_at  + interval '30 days'  as created_at_plus_30_days,
created_at - interval '90 days' as created_at_minus_90_days,
to_char(created_at. 'MM/DD/YYYY') AS char_date,
date_trunc('hour', created)