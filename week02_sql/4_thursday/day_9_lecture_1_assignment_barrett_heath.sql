SELECT pi.purchase_id, pr.title, 
SUM(pi.quantity) AS total_quantity, 
SUM(pi.price)::money AS total_price 
FROM purchase_items pi
	LEFT JOIN products pr ON pi.product_id = pr.id
WHERE state = 'Returned'
AND pr.title ILIKE '%laptop%'
GROUP BY 1, 2
ORDER BY 1;

SELECT pi.purchase_id, pi.state, pu.name, pu.state, pr.title, 
SUM(pi.quantity) AS total_quantity, 
SUM(pi.price)::money AS total_price, 
u.email 
FROM purchase_items pi
	LEFT JOIN products pr ON pi.product_id = pr.id
	LEFT JOIN purchases pu ON pi.purchase_id = pu.id
	LEFT JOIN users u ON pu.user_id = u.id
WHERE pr.title = 'MP3 Player' 
AND pi.state = 'Pending'
AND pu.state = 'FL'
AND u.email = 'Derek.Knittel@gmail.com'  
GROUP BY 1, 2, 3, 4, 5, 8
ORDER BY 1;
