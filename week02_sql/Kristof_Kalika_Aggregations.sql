/*
Count the number of records in the vehicles table.Count the number of distinct values there are in the make field.
Obtain the averages of the hwy and cty fields. Group by make and model, obtain the averages of the hwy and cty fields.
Group the data by make, average the hwy and cty columns into a combined_mpg field, calculate the average of that field, and then 
sort descending by the combined_mpg field.
*/

SELECT make, model, COUNT(*) total_records, COUNT(DISTINCT make) number_makes, 
AVG(hwy) avg_hwy, AVG(cty) avg_cty, AVG(cty + hwy)/2 combined_mpg
FROM vehicles
GROUP BY make, model 
ORDER BY 6 DESC;

/*
Count the number of records and the average of the cty field, 
grouping by trans and drive. 
Filter out records that have cyl > 4 and displ > 2.5 
from going into the aggregation and then filter the results to show only where the average cty value is > 18.
*/
SELECT trans, drive, COUNT(*) total_records, AVG(cty) avg_cty
FROM vehicles
WHERE cyl > 4 and displ > 2.5
GROUP BY trans, drive 
HAVING AVG(cty) > 18
ORDER BY 1, 2 