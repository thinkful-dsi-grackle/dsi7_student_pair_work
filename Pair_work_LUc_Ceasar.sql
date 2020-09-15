SELECT make, model, year, cty AS ct_npg,
CASE WHEN cty < 18 THEN 'Below Average' 
ELSE 'Above Average' END AS fuel_eficiency
FROM vehicles
WHERE year BETWEEN 1990 and 2000 AND make= 'Ford'
LIMIT 100;

