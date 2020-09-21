SELECT neighborhood
FROM houseprices
WHERE neighborhood LIKE 'Veenker'
LIMIT 5;

CREATE TABLE IF NOT EXISTS normal AS
SELECT *
FROM houseprices
WHERE salecondition LIKE 'Normal';

DROP TABLE IF EXISTS normal;

CREATE TABLE IF NOT EXISTS normal_sales AS
SELECT *
FROM houseprices
WHERE salecondition LIKE 'Normal';

SELECT neighborhood
FROM normal_sales
WHERE neighborhood LIKE 'Veenker';

DELETE FROM normal_sales
WHERE neighborhood LIKE 'Veenker'; 

SELECT neighborhood
FROM normal_sales
WHERE neighborhood LIKE 'Veenker';

INSERT INTO normal_sales
SELECT *
FROM houseprices
WHERE neighborhood LIKE 'Veenker'
AND salecondition LIKE 'Normal';

SELECT neighborhood
FROM normal_sales
WHERE neighborhood LIKE 'Veenker';

SELECT overallqual, overallcond, saleprice
FROM normal_sales;

UPDATE normal_sales
SET overallcond = overallqual
WHERE saleprice > 300000;

SELECT overallqual, overallcond, saleprice
FROM normal_sales
WHERE saleprice > 300000;

WITH neigh_avgs AS (
	SELECT neighborhood, AVG(saleprice) AS neigh_avg
	FROM normal_sales
	GROUP BY neighborhood
	)
SELECT a.id, a.neighborhood, 
ROUND(b.neigh_avg,2) AS neighborhood_avg, 
a.saleprice, 
ROUND((a.saleprice/b.neigh_avg)-1,3) AS perc_avg,
CASE
	WHEN (a.saleprice/b.neigh_avg)-1 >= 0 THEN 'Above AVG'
	ELSE 'Below AVG'
	END AS above_below
FROM normal_sales a
	INNER JOIN neigh_avgs b ON a.neighborhood = b.neighborhood
ORDER BY 2, 1;