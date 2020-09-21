(SELECT c.customer_id, first_name, last_name, COUNT(r.rental_id) as rentals, city, district, country
FROM customer c
	INNER JOIN rental r ON c.customer_id = r.customer_id
	INNER JOIN address a ON c.address_id = a.address_id
	INNER JOIN city ci ON a.city_id = ci.city_id
	INNER JOIN country cy ON ci.country_id = cy.country_id
WHERE country = 'United States'
	AND district = 'California'
GROUP BY 1, 2, 3, 5, 6, 7
ORDER BY 4 DESC
LIMIT 1)
UNION
(SELECT c.customer_id, first_name, last_name, COUNT(r.rental_id) AS rentals, city, district, country
FROM customer c
	INNER JOIN rental r ON c.customer_id = r.customer_id
	INNER JOIN address a ON c.address_id = a.address_id
	INNER JOIN city ci ON a.city_id = ci.city_id
	INNER JOIN country cy ON ci.country_id = cy.country_id
WHERE country = 'United States'
	AND district = 'Texas'
GROUP BY 1, 2, 3, 5, 6, 7
ORDER BY 4 DESC
LIMIT 1)
UNION
(SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS rentals, ci.city, a.district, cy.country
FROM customer c
	INNER JOIN rental r ON c.customer_id = r.customer_id
	INNER JOIN address a ON c.address_id = a.address_id
	INNER JOIN city ci ON a.city_id = ci.city_id
	INNER JOIN country cy ON ci.country_id = cy.country_id
WHERE country = 'United States'
	AND district = 'Illinois'
GROUP BY 1, 2, 3, 5, 6, 7
ORDER BY 4 DESC
LIMIT 1)
ORDER BY 4 DESC
;