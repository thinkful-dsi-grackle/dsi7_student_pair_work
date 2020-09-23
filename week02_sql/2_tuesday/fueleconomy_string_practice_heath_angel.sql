select fuel, cyl, trans, model,
fuel || ' ' || cyl as fuel_cyl,
trim(replace(class, 'Small', '')) as no_small_class,
case when left(trans, 1)='A' then 'Automatic'
when left(trans, 1)='M' then 'Manual' end as transmission
from vehicles
where model like '%WD';