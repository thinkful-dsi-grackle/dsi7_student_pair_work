SELECT count(*) as num_of_records, count(distinct make) as distinct_makes, 
AVG(hwy) as avg_hwy, AVG(cty)as avg_cty
FROM vehicles;


SELECT make, model, ROUND(AVG(hwy), 3) as avg_hwy, ROUND(AVG(cty), 3) as avg_cty
FROM vehicles
GROUP BY make, model;

SELECT make, AVG(hwy) + AVG(cty) as combined_mpg
FROM vehicles
GROUP BY make
ORDER BY combined_mpg DESC;

SELECT trans, drive, COUNT(*) as num_records, ROUND(AVG(cty),3) as avg_cty
FROM vehicles
WHERE cyl <= 4 AND displ <= 2.5
GROUP BY trans, drive
HAVING AVG(cty) > 18;