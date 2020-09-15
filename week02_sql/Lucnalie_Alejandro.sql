select fuel, cyl,
fuel ||' '||
cyl as new_column
from vehicles;

select class,
replace(class, 'Small', '')
as rpt
from vehicles
limit 5;

select trans,
split_part(trans, ' ', 1) as transmition
from vehicles;

select model
from vehicles
where model ilike '%2WD%' 
or model ilike '%4WD%' 
or model ilike 'AWD';


