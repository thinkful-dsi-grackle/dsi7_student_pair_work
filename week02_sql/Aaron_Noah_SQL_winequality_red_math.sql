SELECT fixed_acidity + volatile_acidity + citric_acid 
			AS fixed_volatile_citric_acid,
		(total_sulfur_dioxide - free_sulfur_dioxide) / total_sulfur_dioxide 
			AS sulfur_dioxide_average,
		log((residual_sugar * alcohol) ^ 4) 
			AS residual_sugar_alcohol,
		cbrt(round(chlorides, 2) * total_sulfur_dioxide) 
			AS chlorides_sulfur_dioxide
FROM winequality_red
LIMIT 100;
