SELECT make, model, year, cty as city_mpg,
CASE WHEN cty<18 THEN 'Below Average'
ELSE 'Above Average' END AS fuel_efficieny
FROM vehicles 
WHERE year>1990 and year<2000 and make='Ford'
LIMIT 100;