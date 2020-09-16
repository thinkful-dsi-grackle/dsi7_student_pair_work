--First 5 bullets are executed in this
--query.
SELECT make, model,
COUNT(*) AS all_vehicles, 
COUNT(DISTINCT(make)) AS count_make, 
ROUND(AVG(hwy),2) AS avg_hwy, 
ROUND(AVG(cty),2) AS avg_cty,
ROUND(AVG(hwy+cty),2) AS combined_mpg
FROM vehicles
GROUP BY make, model
ORDER BY combined_mpg DESC;



--This query is for the last bullet
SELECT trans, drive,
COUNT(*) AS all_vehicles, 
ROUND(AVG(cty),2) AS avg_cty
FROM vehicles
WHERE cyl > 4 AND displ > 2.5
GROUP BY trans, drive
HAVING avg(cty) > 18;
