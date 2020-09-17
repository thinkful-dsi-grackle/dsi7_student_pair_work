/* 

Give me a table with all the checked out videos. 
All of them, even if some of them are missing information. 
Make sure to include the rental date, the customer's name and address/city/state/country, 
the video title, and the address of the store it was rented from.



First of all, what tables will I need to access?
Then, how should I be filtering my data?
And finally, what fields do I need to display?

*/







/*

rental - rental date, return date must be NULL (make sure to do left joins so we definitely keep every rental)
customer - customer name
	address - linked to customer, also has state (district)
	city
	country
inventory - connects rental to film, store
	film - title
	store - connects inventory to store address
		address - linked to store
		city
		country
		
*/








-- Check out the chain for customer information
SELECT *
FROM rental r
	-- Customer info tables
	LEFT JOIN customer c ON r.customer_id = c.customer_id
	LEFT JOIN address ac ON c.address_id = ac.address_id
	LEFT JOIN city cc ON ac.city_id = cc.city_id
	LEFT JOIN country cyc ON cc.country_id = cyc.country_id
WHERE return_date IS NULL
LIMIT 100;



-- Check out the chain for inventory / film / store information
SELECT *
FROM rental r
	-- Inventory info tables
	LEFT JOIN inventory i ON r.inventory_id = i.inventory_id
	LEFT JOIN film fi ON i.film_id = fi.film_id
	LEFT JOIN store si ON i.store_id = si.store_id
	LEFT JOIN address ai ON si.address_id = ai.address_id
	LEFT JOIN city ci ON ai.city_id = ci.city_id
	LEFT JOIN country cyi ON ci.country_id = cyi.country_id
WHERE return_date IS NULL
LIMIT 100;








-- Finally, putting it all together:
SELECT r.rental_date, 
	CONCAT(c.first_name, ' ', c.last_name) AS customer, 
	CONCAT(ac.address, ', ', cc.city, ', ', ac.district, ', ', cyc.country) AS customer_address, 
	fi.title, 
	CONCAT(ai.address, ', ', ci.city, ', ', ai.district, ', ', cyi.country) AS store_address
FROM rental r
	-- Customer info tables
	LEFT JOIN customer c ON r.customer_id = c.customer_id
	LEFT JOIN address ac ON c.address_id = ac.address_id
	LEFT JOIN city cc ON ac.city_id = cc.city_id
	LEFT JOIN country cyc ON cc.country_id = cyc.country_id
	-- Inventory info tables
	LEFT JOIN inventory i ON r.inventory_id = i.inventory_id
	LEFT JOIN film fi ON i.film_id = fi.film_id
	LEFT JOIN store si ON i.store_id = si.store_id
	LEFT JOIN address ai ON si.address_id = ai.address_id
	LEFT JOIN city ci ON ai.city_id = ci.city_id
	LEFT JOIN country cyi ON ci.country_id = cyi.country_id
WHERE r.return_date IS NULL
ORDER BY r.rental_date
LIMIT 100;