select *, 
fixed_acidity + volatile_acidity + citric_acid as total_acid,
round((total_sulfur_dioxide - free_sulfur_dioxide)/total_sulfur_dioxide, 5) as free_sulfur_ratio,
round(log((residual_sugar * alcohol)^4), 5) as sugar_alcohol_power_log,
((round(chlorides, 2))*total_sulfur_dioxide)^(1.0/3.0) as chlorides_sulfur_power
from winequality_red