<<<<<<< HEAD
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


=======
SELECT fixed_acidity + volatile_acidity + citric_acid AS colum_some
FROM winequality_red;

SELECT Round((free_sulfur_dioxide - total_sulfur_dioxide) / total_sulfur_dioxide, 3)
FROM winequality_red;

SELECT log(((residual_sugar * alcohol)*1/4.0 ))
FROM winequality_red;

SELECT (Round(chlorides, 2) * total_sulfur_dioxide)*1/3.0
FROM winequality_red;
>>>>>>> 35f8fecfed0577ae013967676af8891cc8bec8ee
