SELECT purchase_id, title, quantity, pi.price
FROM purchase_items pi
	LEFT JOIN products p ON pi.price = p.price
WHERE title = 'Laptop Computer' AND pi.state = 'Returned';


SELECT purchase_id, pi.state, name, pc.state, title, quantity, pi.price, email
FROM purchase_items pi
	LEFT JOIN products p ON pi.product_id = p.id
	LEFT JOIN purchases pc ON pi.purchase_id = pc.id
	LEFT JOIN users u ON pc.user_id = u.id
WHERE title = 'MP3 Player' AND email = 'Derek.Knittel@gmail.com' 
AND pi.state = 'Pending' AND pc.state = 'FL'





	