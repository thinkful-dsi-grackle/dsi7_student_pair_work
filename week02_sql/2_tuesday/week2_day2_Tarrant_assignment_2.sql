/* Create a permanent table called normal that contains all property sales where the sale 
condition was Normal.*/
CREATE TABLE IF NOT EXISTS normal AS
SELECT *
FROM houseprices
WHERE salecondition = 'Normal';

/* Drop the normal table you just created and then recreate it again using the name normal_sales.*/
DROP TABLE IF EXISTS normal;

CREATE TABLE IF NOT EXISTS normal_sales AS
SELECT *
FROM houseprices
WHERE salecondition = 'Normal';

/* From the newly-created normal_sales table, delete all the records where the neighborhood is Veenker.*/
DELETE FROM normal_sales
WHERE neighborhood = 'Veenker';

/* Re-insert the Veenker neighborhood normal sale condition records.*/
INSERT INTO normal_sales
SELECT *
From houseprices
WHERE neighborhood = 'Veenker';

/* For all properties where the sale price was greater than $300,000, update the overall condition 
to be equal to the overall quality.*/
SELECT DISTINCT overallcond
from normal_sales;

UPDATE normal_sales
SET overallcond = overallqual
WHERE Saleprice > 300000;

SELECT DISTINCT overallcond
from normal_sales;
/* Using your choice of subquery, temp table, or CTE, calculate average sale prices by neighborhood and 
then compute what percentage more or less for every property sold compared to the average for their 
neighborhood.*/
WITH avg_neighborhood AS (
    SELECT neighborhood, AVG(saleprice) AS avg_saleprice
    FROM houseprices
    GROUP BY 1)
SELECT h.neighborhood, saleprice, ROUND(a.avg_saleprice, 2) AS avg_saleprice, 
CONCAT(ROUND(((saleprice/a.avg_saleprice)-1)*100, 2),'%') as perc_avg
FROM houseprices AS h
INNER JOIN avg_neighborhood AS a ON h.neighborhood = a.neighborhood
ORDER BY ROUND(((saleprice/a.avg_saleprice)-1)*100, 2) DESC; 