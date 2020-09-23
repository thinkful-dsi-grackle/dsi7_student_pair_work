SELECT fuel, cyl,
fuel || ' ' || cyl as fuel_cyl
FROM vehicles
LIMIT 20;

SELECT class,
replace(class, 'Small', '') AS class_noS
FROM vehicles
LIMIT 20;

SELECT trans,
CASE WHEN LEFT(trans, 4) = 'Auto' THEN 'Automatic'
WHEN LEFT(trans, 4) = 'Manu' THEN 'Manual'
END as Transmission
FROM vehicles
LIMIT 20;

SELECT model
FROM vehicles
WHERE model ILIKE '%WD%'
LIMIT 20;

