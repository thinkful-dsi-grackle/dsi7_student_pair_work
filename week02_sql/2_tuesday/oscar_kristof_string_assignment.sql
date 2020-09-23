-- Concatenate the fuel and cyl fields together (with a space in between)
SELECT CONCAT(fuel, ' ', cyl) AS fuel_cyl
FROM vehicles
LIMIT 20;			-- used concat

-- Replace any occurrences of the word “Small” in the class field with an empty string
SELECT class, REPLACE(class, 'Small', '') AS replace_small
FROM vehicles		
LIMIT 20;			-- used replace

-- Create a field that parses out whether the vehicle is Automatic or Manual from the trans field (without the additional speed info).
SELECT trans, split_part(trans, ' ', 1)
FROM vehicles
LIMIT 20;			-- used split_part

-- Filter for records where the drive train info (ex. 2WD, 4WD, AWD, etc.) is listed at the end of the model field
SELECT model, RIGHT(model, 3) as new_model
FROM vehicles
WHERE model ILIKE('%WD')
LIMIT 20;			-- used right, and ilike
