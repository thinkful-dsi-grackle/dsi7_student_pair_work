/*In pgAdmin, select the productpurchases database and open the Query Tool. As you perform the following queries,
you’ll notice duplicate records for some fields such as purchase_id. Please aggregate the quantity and price for 
these duplicate records.

Write a query that joins the purchase_items and product tables. The query should return the purchase
ID, title, quantity, and price fields for all returned laptop computers. */


SELECT p.title, pi.purchase_id, ROUND(AVG(pi.quantity)) AS quantity, ROUND(AVG(pi.price),2) AS price
FROM products AS p
JOIN purchase_items AS pi ON p.id=pi.product_id
WHERE title ILIKE '%laptop%' AND state = 'Returned'
GROUP BY 1,2;
---------------------------------------------

/*Write a query that joins all 4 tables in the database and returns all MP3 Player purchase line items 
that are in pending status and were ordered from the state of Florida (FL) by email address 
Derek.Knittel@gmail.com. The query should return the purchase ID, the order status, the customer name, 
the state, the product name, the order quantity, the order price, and the customer email.*/


SELECT pi.purchase_id, pi.state, pu.name, pu.state, pr.title, ROUND(AVG(pi.quantity)), ROUND(AVG(pi.price),2), u.email  
FROM users AS u
LEFT JOIN purchases AS pu ON u.id=pu.user_id
LEFT JOIN purchase_items AS pi ON pu.id=pi.purchase_id
LEFT JOIN products AS pr ON pi.product_id=pr.id
WHERE pi.state ILIKE '%pending%' AND
		u.email ILIKE '%Derek.Knittel@gmail.com%' AND
		pr.title ILIKE '%MP3%' AND
		pu.state LIKE 'FL'
GROUP BY 1,2,3,4,5,8;
