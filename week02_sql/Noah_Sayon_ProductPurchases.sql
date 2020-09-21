SELECT *
FROM purchases
LIMIT 10;

SELECT DATE_TRUNC('day', created_at) AS purchase_day,
created_at + INTERVAL '30 days' AS p_30_days,
created_at - INTERVAL '90 days' AS m_90_days,
TO_CHAR(created_at, 'MM/DD/YYYY') AS date_purchased,
DATE_TRUNC('hour', created_at) AS trunc_hour,
TO_CHAR(created_at, 'YYYY') AS y_purchased,
TO_CHAR(created_at, 'Month') AS m_purchased,
TO_CHAR(created_at, 'DD') AS d_purchased,
TO_CHAR(created_at, 'Day') AS w_purchased,
TO_CHAR(created_at, 'W') AS w_num_month,
TO_CHAR(created_at, 'WW') AS w_num_year
FROM purchases;