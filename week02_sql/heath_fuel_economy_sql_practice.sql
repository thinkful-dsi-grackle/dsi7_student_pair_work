select count(*), count(distinct make) as unique_makes
from vehicles;

select 
	make, 
	model, 
	round(avg(hwy), 2) as hwy_ave, 
	round(avg(cty), 2) as cty_ave
from vehicles
group by make, model;

select
	make,
	round(avg(hwy + cty)/2, 2) as ave_mpg
from vehicles
group by make
order by ave_mpg desc;

select
	trans,
	drive,
	count(*) as count,
	round(avg(cty), 2) as average_mpg
from vehicles
where 
	cyl <= 4 
	and 
	displ <= 2.5
group by trans, drive
having avg(cty) > 18;


