SELECT purchase_ID, title, quantity, a.price 
FROM purchase_items a 
JOIN products b
ON a.product_id=b.id
WHERE state='Returned' AND title='Laptop Computer';

SELECT purchase_id, a.state, name, c.state, title, quantity, a.price, email
FROM purchase_items a
JOIN products b ON a.product_id=b.id
JOIN purchases c ON a.purchase_id=c.id
JOIN users d ON c.user_id=d.id
WHERE title='MP3 Player' AND a.state='Pending' AND c.state='FL' AND email='Derek.Knittel@gmail.com';