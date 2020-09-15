SELECT make, model, year, cty as city_mpg
FROM vehicles
WHERE make = 'Ford'
	AND year BETWEEN 1990 AND 2000
LIMIT 100;

SELECT make, model, year, cty as city_mpg,
CASE WHEN cty < 18 THEN 'Below Average'
	WHEN cty >= 18 THEN 'Above Average'
	END AS fuel_effeciency
FROM vehicles
WHERE make = 'Ford'
	AND year BETWEEN 1990 AND 2000
LIMIT 100;