--Count the number of records in the vehicles table.
SELECT COUNT(*)
FROM vehicles;

--Count the number of distinct values there are in the make field.
SELECT COUNT(DISTINCT make)
FROM vehicles;

--Obtain the averages of the hwy and cty fields.
SELECT AVG(hwy) AS avg_hwy, AVG(cty) AS avg_cty
FROM vehicles;

--Group by make and model, obtain the averages of the hwy and cty fields.
SELECT DISTINCT make, model, AVG(hwy) AS avg_hwy, AVG(cty) AS avg_cty
FROM vehicles
GROUP BY make, model
ORDER BY make;


--Group the data by make, average the hwy and cty columns into a combined_mpg field, 
--calculate the average of that field, and then sort descending by the combined_mpg field.
SELECT DISTINCT make, AVG((hwy + cty)/2) AS combined_mpg
FROM vehicles
GROUP BY make
ORDER BY combined_mpg DESC;


--Count the number of records and the average of the cty field, grouping by trans and drive. 
--Filter out records that have cyl > 4 and displ > 2.5 from going into the aggregation and then 
--filter the results to show only where the average cty value is > 18.

SELECT COUNT(*), trans, drive, AVG(cty) as avg_city
FROM vehicles
WHERE cyl <= 4 AND displ <= 2.5
GROUP BY trans, drive
HAVING AVG(cty) > 18
ORDER BY trans, drive;

