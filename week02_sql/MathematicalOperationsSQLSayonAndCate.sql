select fixed_acidity, volatile_acidity, citric_acid, 
fixed_acidity+volatile_acidity+citric_acid AS total_acidity,
(total_sulfur_dioxide-free_sulfur_dioxide)/total_sulfur_dioxide AS sulfur_dioxide,
Log((residual_sugar*alcohol)^4) AS log_residual_sugar,
(round(chlorides,2)*total_sulfur_dioxide)^(1/3) AS round_chlorides
from winequality_red;