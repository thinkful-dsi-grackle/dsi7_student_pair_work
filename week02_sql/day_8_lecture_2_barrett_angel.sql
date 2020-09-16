SELECT *
FROM vehicles
LIMIT 5;

SELECT COUNT(*) AS number_of_records,
COUNT(DISTINCT make) unique_makes,
ROUND(AVG(hwy),2) AS avg_hwy,
ROUND(AVG(cty),2) AS avg_city
FROM vehicles;
--Number of records = 33442
--Unique make values = 128
--avg_hwy = 23.55
--avg_city = 17.49

SELECT make, model, 
ROUND(AVG(hwy),2) AS avg_hwy,
ROUND(AVG(cty),2) AS avg_city
FROM vehicles
GROUP BY 1, 2
ORDER BY 3 DESC, 4 DESC;

--This question is poorly worded... But I think it meant this:
SELECT make,
ROUND(AVG(hwy)+AVG(cty),2) AS combined_mpg,
ROUND(AVG(hwy+cty)/2 ,2) AS avg_combined_mpg
FROM vehicles
GROUP BY 1
ORDER BY combined_mpg DESC;

SELECT trans, drive, 
COUNT(*) AS num_of_records, 
ROUND(AVG(cty),2) AS avg_city
FROM vehicles
WHERE cyl > 4 AND displ > 2.5
GROUP BY 1,2
HAVING AVG(cty) > 18.0
ORDER BY 3 DESC, 4 DESC;
