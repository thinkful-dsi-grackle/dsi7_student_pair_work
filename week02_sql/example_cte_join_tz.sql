WITH time_table AS
(
SELECT *, 
	CASE 
		WHEN city = 'Lethbridge' THEN 'America/Denver'
		WHEN city = 'Woodridge' THEN 'Australia/Brisbane' 
	END AS time_zone
FROM rental JOIN staff ON rental.staff_id = staff.staff_id
JOIN store ON staff.store_id = store.store_id
JOIN address ON store.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
)
SELECT rental_id, CONCAT(city, ', ', country), time_zone, 
	rental_date at time zone time_zone AS rental_date_utc, 
	return_date at time zone time_zone AS return_date_utc, 
	AGE(return_date at time zone time_zone, rental_date at time zone time_zone) AS checkout_time
FROM time_table
LIMIT 100;