SELECT fixed_acidity + volatile_acidity + citric_acid AS colum_some
FROM winequality_red;

SELECT Round((free_sulfur_dioxide - total_sulfur_dioxide) / total_sulfur_dioxide, 3)
FROM winequality_red;

SELECT log(((residual_sugar * alcohol)*1/4.0 ))
FROM winequality_red;

SELECT (Round(chlorides, 2) * total_sulfur_dioxide)*1/3.0
FROM winequality_red;