SELECT fixed_acidity + volatile_acidity + citric_acid AS total_acidity
FROM winequality_red

SELECT (total_sulfur_dioxide - free_sulfur_dioxide) / total_sulfur_dioxide AS sulfur_dioxide_ratio
FROM winequality_red

SELECT log((residual_sugar * alcohol) ^4) AS sugar_log
FROM winequality_red

SELECT (total_sulfur_dioxide * (ROUND(chlorides, 2))) ^1/3.0 AS cholride_dioxide_cubed
FROM winequality_red



