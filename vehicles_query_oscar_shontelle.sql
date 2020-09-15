SELECT make, model, year, cty AS city_mpg,
CASE WHEN cty < 18 THEN 'below_avg'
ELSE 'above_avg' END AS fuel_efficiency
FROM vehicles
WHERE (year BETWEEN 1990 AND 2000) 
AND make = 'Ford'
LIMIT 100;