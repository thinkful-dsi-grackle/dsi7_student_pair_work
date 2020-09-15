SELECT fixed_acidity + volatile_acidity + citric_acid AS sum_acidity
FROM winequality_red
LIMIT 100;

SELECT ROUND ((total_sulfur_dioxide - free_sulfur_dioxide) / total_sulfur_dioxide, 5) AS proportion_sulfur_dioxide
FROM winequality_red
LIMIT 100;

SELECT ROUND(LOG((residual_sugar * alcohol) ^ 4), 5) AS log_power
FROM winequality_red
LIMIT 100;

SELECT ROUND(ROUND(chlorides, 2) * (total_sulfur_dioxide) ^ (1/3.0), 5) AS round_cuberoot
FROM winequality_red
LIMIT 100;