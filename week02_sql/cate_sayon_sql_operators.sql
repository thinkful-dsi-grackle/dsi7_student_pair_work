SELECT CONCAT(fuel, ' ', cyl) AS fuel_cyl,
REPLACE(class, 'Small', '') AS small_replaced,
split_part(trans, ' ', 1) AS trans_type, *
FROM vehicles
WHERE model LIKE ('%WD')
LIMIT(100);