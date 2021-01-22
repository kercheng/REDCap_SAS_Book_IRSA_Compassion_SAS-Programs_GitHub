DATA BMI;
	INPUT Gender $ Age Height Weight Index bmi_calculated;
DATALINES;
Male    19  174     96     4 31.70828
Male    25  189     87     2 24.35542
Female  72  185    110     4 32.14025
Female  47  195    104     3 27.35043
Male    33  149     61     3 27.47624
; 

DATA BMI; 
	SET BMI;
If bmi_calculated = .                                    then bmi_cat = "missing_value";
ELSE IF bmi_calculated < 18.5 and bmi_calculated not = . then bmi_cat = "under_weight";
ELSE IF bmi_calculated >= 18.5 and bmi_calculated < 25   then bmi_cat = "ideal_weight";
ELSE IF bmi_calculated >= 25 and bmi_calculated < 30     then bmi_cat = "overweight_weight";
ELSE IF bmi_calculated >= 30                             then bmi_cat = "obese";

IF age = . then age_cat = "missing value";
ELSE IF age >=18 and age <= 44 then age_cat = "young_adult";
ELSE IF age >=45 and age <= 64 then age_cat = "middle-age_adult";
ELSE IF age >65 THEN age_cat = "older_adult";

RUN;