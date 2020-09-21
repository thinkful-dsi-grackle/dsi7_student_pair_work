/* Create a permanent table called normal that contains all property sales where
the sale condition was Normal.*/

CREATE TABLE IF NOT EXISTS normal AS
SELECT *
FROM houseprices
WHERE salecondition = 'Normal';

/* Drop the normal table you just created and then recreate it again using the
name normal_sales.*/

DROP TABLE IF EXISTS normal;

CREATE TABLE IF NOT EXISTS normal_sales AS
SELECT *
FROM houseprices
WHERE salecondition = 'Normal';

/* From the newly-created normal_sales table, delete all the records where the 
neighborhood is Veenker. */

DELETE FROM normal_sales
WHERE neighborhood = 'Veenker';

-- Re-insert the Veenker neighborhood normal sale condition records.
-- INSERT INTO 

INSERT INTO normal_sales
SELECT *
FROM houseprices
WHERE salecondition = 'Normal' AND 
	   neighborhood = 'Veenker';
	   
/* For all properties where the sale price was greater than $300,000, 
update the overall condition to be equal to the overall quality. */

UPDATE normal_sales
SET overallcond = overallqual
WHERE saleprice > 300000;

/* Using your choice of subquery, temp table, or CTE, calculate average sale prices by
neighborhood and then compute what percentage more or less every property sold for 
compared to the average for their neighborhood.*/

WITH avg_sale_price AS (
SELECT neighborhood, AVG(saleprice) AS avg_price
FROM normal_sales AS b
GROUP BY neighborhood)
SELECT a.neighborhood, 
		ROUND(avg_price) neighborhood_avg_price, 
		saleprice, 
		ROUND((a.saleprice - b.avg_price)/avg_price, 4) AS percent_diff
FROM normal_sales AS a
LEFT JOIN avg_sale_price AS b
ON a.neighborhood = b.neighborhood
ORDER BY percent_diff;