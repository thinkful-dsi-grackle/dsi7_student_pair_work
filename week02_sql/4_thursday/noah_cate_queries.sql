--purchase_items: pi, products: pr
SELECT pi.purchase_id, pr.title, 
	SUM(pi.quantity) AS total_quantity, 
	SUM(pi.price) AS total_price 
FROM purchase_items pi 
	LEFT JOIN products pr ON pi.product_id = pr.id 
WHERE state = 'Returned' 
	AND pr.title = 'Laptop Computer' 
GROUP BY 1, 2 
ORDER BY 1;

--products: pr, purchase_items: pi
--purchases: pu, users: u
SELECT pi.purchase_id, pi.state, 
	pu.name, pu.state, pr.title, u.email, 
	SUM(pi.quantity) AS total_quantity, 
	SUM(pi.price) AS total_price
FROM purchase_items pi 
	LEFT JOIN products pr ON pi.product_id = pr.id 
	LEFT JOIN purchases pu ON pi.purchase_id = pu.id 
	LEFT JOIN users u ON pu.user_id = u.id 
WHERE pr.title = 'MP3 Player' 
	AND pi.state = 'Pending' AND pu.state = 'FL' 
	AND u.email = 'Derek.Knittel@gmail.com'
GROUP BY 1, 2, 3, 4, 5, 6 
ORDER BY 1;