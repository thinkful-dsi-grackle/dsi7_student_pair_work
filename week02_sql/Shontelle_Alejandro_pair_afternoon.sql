--create table if not exists normal as
--select *
--from houseprices
--where salecondition = 'Normal';

--DROP TABLE IF EXISTS normal;

--create table if not exists normal_sales as
--select *
--from houseprices
--where salecondition = 'Normal';

--DELETE FROM normal_sales
--WHERE neighborhood ILIKE 'Veenker';

--INSERT INTO normal_sales
--select *
--from houseprices
--WHERE neighborhood = 'Veenker';

--UPDATE normal_sales
--SET overallcond = overallqual
--WHERE saleprice > 300000;

--Using your choice of subquery, temp table, or CTE, calculate average sale prices by neighborhood and then compute what 
--percentage more or less every property sold for compared to the average for their neighborhood.

CREATE TEMP TABLE IF NOT EXISTS new_table_2 AS
SELECT hs.neighborhood, saleprice / ns.avg_saleprice AS per_price
FROM houseprices hs
INNER JOIN (SELECT neighborhood, AVG(saleprice) as avg_saleprice
FROM normal_sales ns
GROUP BY ns.neighborhood
)ns ON hs.neighborhood = ns.neighborhood;
