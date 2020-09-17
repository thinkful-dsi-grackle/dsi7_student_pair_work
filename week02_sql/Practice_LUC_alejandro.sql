SELECT fuel, cyl,
fuel ||' '||
cyl as new_column
from vehicles;

SELECT class,
REPLACE (class,'small', 'C')
AS rpt
FROM vehicles;

SELECT trans,
split_part(trans, ' ', 1) 
as transmition
FROM vehicles;

SELECT model
FROM vehicles
WHERE model like '%2wd%'
or model ilike '%4wd%'
or model ilike 'AWD';