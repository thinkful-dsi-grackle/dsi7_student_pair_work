SELECT model,
fuel || ' ' || cyl
AS fuel_cyl,

replace (class, 'Small', '')
AS r_class,

split_part (trans, ' ', 1)
AS Automatic_Manual_only

FROM vehicles

WHERE model LIKE '%WD'

LIMIT 100;

