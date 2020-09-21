--Using your choice of subquery, temp table, or CTE, 
--calculate average sale prices by neighborhood and 
--then compute what percentage more or less every property 
--sold for compared to the average for their neighborhood.

WITH neigh_avgs AS (
	SELECT neighborhood, avg(saleprice) AS avg_price
	FROM houseprices
	GROUP BY neighborhood)
SELECT a.neighborhood, saleprice, ((saleprice/ b.avg_price)-1) AS perc_avg
FROM houseprices a
INNER JOIN neigh_avgs b ON a.neighborhood = b.neighborhood