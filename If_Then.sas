DATA BMI;
	INPUT Gender $ Age Height Weight Index bmi_calculated;
DATALINES;
Male    19  174     96     4 31.70828
Male    25  189     87     2 24.35542
Female  72  185    110     4 32.14025
Female  47  195    104     3 27.35043
Male    33  149     61     3 27.47624
Male 	 .	150	   200     3 27.47624
; 

/* BMI Weight       Status */
/* Below 18.5	    Underweight */
/* 18.5 – 24.9   	Normal or Healthy Weight */
/* 25.0 – 29.9	    Overweight */
/* 30.0 and Above	Obese */

DATA BMI; 
	SET BMI;
IF bmi_calculated = .                                     THEN bmi_cat = "missing_value";
ELSE IF bmi_calculated < 18.5  AND bmi_calculated NOT = . THEN bmi_cat = "under_weight";
ELSE IF bmi_calculated >= 18.5 AND bmi_calculated < 25.0  THEN bmi_cat = "ideal_weight";
ELSE IF bmi_calculated >= 25.0 AND bmi_calculated < 30.0  THEN bmi_cat = "overweight_weight";
ELSE IF bmi_calculated >= 30.0                            THEN bmi_cat = "obese";

IF age = . 					   THEN age_cat = "missing_value";
ELSE IF age >=18 AND age <= 44 THEN age_cat = "young_adult";
ELSE IF age >=45 AND age <= 64 THEN age_cat = "middle-age_adult";
ELSE IF age >65                THEN age_cat = "older_adult";

RUN;