--Question 1
SELECT COUNT(*) FROM vehicles;
--Question 2
SELECT COUNT(DISTINCT make) FROM vehicles;
--Question 3
SELECT AVG(hwy), AVG(cty) FROM vehicles;
--Question 4
SELECT make,model, AVG(hwy), AVG(cty) AS averages FROM vehicles GROUP BY make,model
--Question 5
SELECT make, AVG((hwy+cty)/2) AS combined_mpg FROM vehicles GROUP BY make ORDER BY combined_mpg DESC;
--Question 6
SELECT COUNT(*), AVG(cty) FROM vehicles WHERE cty>18 GROUP BY trans, drive HAVING COUNT(cyl)>4 AND COUNT(displ)>2.5;