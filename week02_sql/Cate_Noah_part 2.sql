-- Using your choice of subquery, temp table, or CTE, 
-- calculate average sale prices by neighborhood and then compute 
-- what percentage more or less every property sold for 
-- compared to the average for their neighborhood.

WITH avg_price  AS (
SELECT neighborhood, AVG(saleprice) AS avg_saleprice
FROM houseprices
GROUP BY neighborhood
)
SELECT hp.id, hp.neighborhood, saleprice, ROUND(avg_saleprice, 2) AS avg_saleprice, Round((saleprice - avg_saleprice)/avg_saleprice * 100, 2) AS percent_diff
FROM houseprices as hp
JOIN avg_price ON avg_price.neighborhood = hp.neighborhood 