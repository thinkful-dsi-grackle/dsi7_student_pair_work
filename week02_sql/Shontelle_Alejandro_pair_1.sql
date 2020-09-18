SELECT purchase_id, title, quantity, p.price
FROM purchase_items p
FULL JOIN products pu 
ON p.purchase_id = pu.id;

SELECT pr.id, pu.state, pi.state , title, quantity, pr.price, email
FROM products pr
INNER JOIN purchase_items pi
ON pr.id = pi.product_id
INNER JOIN purchases pu
ON pi.purchase_id = pu.id
INNER JOIN users u
ON pu.user_id = u.id
WHERE title ILIKE 'MP3 Player'
AND pu.state ILIKE 'FL'
AND u.email = 'Derek.Knittel@gmail.com';


