SELECT fixed_acidity + volatile_acidity + citric_acid AS sum_acid,
(total_sulfur_dioxide - free_sulfur_dioxide)/total_sulfur_dioxide AS ratio_dioxide,
LOG((residual_sugar*alcohol) ^ 4) AS log_sugar_alc,
(ROUND(chlorides,2) * total_sulfur_dioxide) ^ (1/3.0) AS cube_chloride
FROM winequality_red