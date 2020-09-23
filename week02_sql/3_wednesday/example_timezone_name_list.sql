SELECT *
FROM pg_timezone_names
ORDER BY utc_offset DESC, "name";