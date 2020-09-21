SELECT class, trans, model,
fuel || ' ' || cyl AS fuel_cyl,
CASE WHEN LEFT(trans, 4)= 'Auto' THEN 'Automatic'
ELSE 'Manual'
END AS transmission,
REPLACE(class, 'Small ', '')
FROM vehicles
WHERE model ILIKE '%WD'
LIMIT 100;