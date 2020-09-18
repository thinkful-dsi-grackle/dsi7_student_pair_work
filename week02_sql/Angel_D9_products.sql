SELECT pi.purchase_id, COUNT(pi.quantity), SUM(pi.price), pr.title
FROM purchase_items pi
JOIN products pr ON pi.product_id = pr.id
WHERE pi.state = 'Returned'
AND pr.title = 'Laptop Computer'
GROUP BY 1, 4
ORDER BY 1

SELECT pi.purchase_id, pi.state, pur.name, pur.state, 
	pr.title, COUNT(pi.quantity), SUM(pi.price), u.email
FROM purchase_items pi
	JOIN products pr ON pi.product_id = pr.id
	JOIN purchases pur ON pi.purchase_id = pur.id
	JOIN users u ON pur.user_id = u.id
WHERE pr.title= 'MP3 Player'
AND pi.state = 'Pending'
AND pur.state = 'FL'
AND u.email = 'Derek.Knittel@gmail.com'
GROUP BY 1, 2, 3, 4, 5, 8