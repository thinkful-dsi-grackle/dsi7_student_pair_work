select count(*), COUNT(DISTINCT make)
from vehicles;

select avg(hwy), avg(cty)
from vehicles;

select make, model,
avg(hwy), avg(cty)
from vehicles
group by make, model;

select make,
avg(hwy + cty) as combined_mpg
from vehicles
group by make
order by combined_mpg;

select drive,
count(*) as records,
avg(cty) as avg_count
from vehicles
where cyl <= 4 and displ <=2.5 
group by drive
select count(*), COUNT(DISTINCT make)
from vehicles;

select avg(hwy), avg(cty)
from vehicles;

select make, model,
avg(hwy), avg(cty)
from vehicles
group by make, model;

select make,
avg(hwy + cty) as combined_mpg
from vehicles
group by make
order by combined_mpg;

select drive,
count(*) as records,
avg(cty) as avg_count
from vehicles
group by drive
having avg(cty) >18;