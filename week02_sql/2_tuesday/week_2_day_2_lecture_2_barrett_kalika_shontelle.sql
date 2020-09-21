SELECT trans, model,
fuel || ' ' || cyl AS fuel_cyl,
REPLACE(class, 'Small', '') AS not_small,
CASE WHEN LEFT(trans, 4) = 'Auto' THEN 'Automatic'
WHEN LEFT(trans, 4) = 'Manu' THEN 'Manual'
ELSE 'Undefined' END AS better_auto_or_man
FROM vehicles
WHERE model ILIKE '% _WD';