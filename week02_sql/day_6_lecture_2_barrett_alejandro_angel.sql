SELECT make, model, year, cty
FROM vehicles;

SELECT make, model, year, cty AS city_mpg
FROM vehicles;

SELECT make, model, year, cty AS city_mpg
FROM vehicles
WHERE year BETWEEN 1990 AND 2000
AND make = 'Ford';

SELECT make, model, year, cty AS city_mpg, 
CASE WHEN cty >= 18 THEN 'Above Average'
	ELSE 'Below Average'
END AS fuel_efficiency
FROM vehicles
WHERE year BETWEEN 1990 AND 2000
AND make = 'Ford';

SELECT make, model, year, cty AS city_mpg, 
CASE WHEN cty >= 18 THEN 'Above Average'
	ELSE 'Below Average'
END AS fuel_efficiency
FROM vehicles
WHERE year BETWEEN 1990 AND 2000
AND make = 'Ford'
LIMIT 100;