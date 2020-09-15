SELECT fixed_acidity+volatile_acidity+citric_acid AS acidity,
ROUND((total_sulfur_dioxide - free_sulfur_dioxide) / total_sulfur_dioxide, 5)
AS used_sulfur_dioxide, 
ROUND(log((residual_sugar * alcohol) ^ 4),5) AS log_of_power,
ROUND((ROUND(chlorides,2) * total_sulfur_dioxide) ^ (1/3.0),5) AS cube_root 
FROM winequality_red
