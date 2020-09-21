-- Count the number of records in the vehicles table.
SELECT COUNT(*), 
-- Count the number of distinct values there are in the make field.
COUNT(DISTINCT make),
-- Obtain the averages of the hwy and cty fields.
ROUND(AVG(hwy),2) as hwy_avg, ROUND(AVG(cty),2) as cty_avg
FROM vehicles;

-- Group by make and model, obtain the averages of the hwy and cty fields.
SELECT make, model, ROUND(AVG(hwy),2) as hwy_avg, ROUND(AVG(cty),2) as cty_avg
FROM vehicles
GROUP BY 1, 2
ORDER BY 1, 2;

/* Group the data by make, average the hwy and cty columns into a combined_mpg field, 
calculate the average of that field, and then sort descending by the combined_mpg field. */
SELECT make, ROUND(AVG((hwy + cty)/2), 2) as combined_mpg
FROM vehicles
GROUP BY make
ORDER BY combined_mpg DESC;

/* Count the number of records and the average of the cty field, grouping by trans and drive. 
Filter out records that have cyl > 4 and displ > 2.5 from going into the aggregation and 
then filter the results to show only where the average cty value is > 18. */
SELECT trans, drive, COUNT(*), ROUND(AVG(cty),2) as cty_avg
FROM vehicles
WHERE NOT cyl > 4
	AND NOT displ > 2.5
GROUP BY 1, 2
HAVING AVG(cty) > 18
ORDER BY 4 DESC;




