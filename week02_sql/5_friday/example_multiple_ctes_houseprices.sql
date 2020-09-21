WITH totals AS (
	SELECT customer_id, SUM(transact_amt) AS total
	FROM transactions t
	GROUP BY customer_id
),

prod_totals AS (
	SELECT product_id, AVG(transact_amt) AS prod_total
	FROM transactions
	GROUP BY product_id
)

SELECT *
FROM transactions
	INNER JOIN totals ON transactions.customer_id = totals.customer_id
	INNER JOIN prod_totals ON transactions.product_id = prod_totals.product_id
;