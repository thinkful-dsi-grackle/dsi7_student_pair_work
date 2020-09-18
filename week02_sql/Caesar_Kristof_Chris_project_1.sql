/*
In pgAdmin, select the productpurchases database and open the Query Tool. As you perform the following queries, you’ll notice duplicate records for some fields such as purchase_id. Please aggregate the quantity and price for these duplicate records.

Write a query that joins the purchase_items and product tables. The query should return the purchase_id, title, quantity, and price fields for all returned laptop computers.
*/
SELECT purchase_id, title, SUM(quantity) total_items, SUM(pi.price) total_price
FROM purchase_items pi
	LEFT JOIN products p ON pi.price = p.price
WHERE title = 'Laptop Computer' AND pi.state = 'Returned'
GROUP BY 1, 2;

/*
Write a query that joins all 4 tables in the database and returns all MP3 Player purchase line items that are in pending status and were ordered from the state of Florida (FL) by email address Derek.Knittel@gmail.com. The query should return the purchase ID, the order status, the customer name, the state, the product name, the order quantity, the order price, and the customer email.
*/
SELECT purchase_id, pi.state, name, pc.state, title, SUM(quantity) total_items, SUM(pi.price) total_price, email
FROM purchase_items pi
	LEFT JOIN products p ON pi.product_id = p.id
	LEFT JOIN purchases pc ON pi.purchase_id = pc.id
	LEFT JOIN users u ON pc.user_id = u.id
WHERE title = 'MP3 Player' AND email = 'Derek.Knittel@gmail.com' 
AND pi.state = 'Pending' AND pc.state = 'FL'
GROUP BY 1, 2, 3, 4, 5, 8