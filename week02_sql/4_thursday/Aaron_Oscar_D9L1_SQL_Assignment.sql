--Write a query that joins the purchase_items and product 
--tables. The query should return the purchase_id, title, 
--quantity, and price fields for all returned laptop computers.

SELECT i.purchase_id, p.title, SUM(p.price) total_price, SUM(i.quantity) item_quantity
FROM products p
LEFT JOIN purchase_items i
ON p.id = i.product_id
WHERE i.state='Returned' AND p.title = 'Laptop Computer'
GROUP BY 1,2
ORDER BY 1
LIMIT 100;

--Write a query that joins all 4 tables in the database and 
--returns all MP3 Player purchase line items that are in 
--pending status and were ordered from the state of 
--Florida (FL) by email address Derek.Knittel@gmail.com. 
--The query should return the purchase ID, the order status, 
--the customer name, the state, the product name, the order 
--quantity, the order price, and the customer email.


SELECT pi.purchase_id, 
	pi.state AS order_status, 
	pr.title AS item,
	p.name, p.state,  u.email, p.created_at, 
	ROUND(AVG(pi.price), 2), ROUND(AVG(pi.quantity))
	
FROM users u 
LEFT JOIN purchases p ON u.id = p.user_id
LEFT JOIN purchase_items pi ON p.id = pi.purchase_id
LEFT JOIN products pr ON pr.id = pi.product_id
WHERE u.email = 'Derek.Knittel@gmail.com' 
	AND pi.state = 'Pending'
	AND p.state = 'FL'
	AND pr.title = 'MP3 Player'
GROUP BY 1, 2, 3,4,5,6,7
;
