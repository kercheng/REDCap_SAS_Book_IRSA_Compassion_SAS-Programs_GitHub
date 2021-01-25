/* Use IF-THEN statements to break isi_total_score into categories.*/

proc print data = irsa.main; 
run;

/* Subset main dataset into smaller dataset and call it irsa.isi*/
data irsa.isi; 
	set irsa.main; 
	keep record_id redcap_event_name isi_total_score; 
	where redcap_event_name = 'd0_enrollment_arm_1' OR redcap_event_name = 'd0_enrollment_arm_2';
run; 

proc print data = irsa.isi; 
run;

/* Where would you find scoring for the ISI? */
/* https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3079939/ */

/* Guidelines for interpreting ISI scale results: total score of */
/* 0–7 mean “no clinically significant insomnia,”  */
/* 8–14 means “subthreshold insomnia,”  */
/* 15–21 is “clinical insomnia (moderate severity),”  */
/* 22–28 means “clinical insomnia (severe).”  */

/* Use IF-THEN statements to break isi_total_score into categories.*/

data irsa.isi; 
	set irsa.isi; 	
IF isi_total_score = . 		                           THEN isi_cat = "missing_value";
ELSE IF isi_total_score >=0 AND isi_total_score <= 7   THEN isi_cat = "no_insomnia";
ELSE IF isi_total_score >=8 AND isi_total_score <= 14  THEN isi_cat = "subthreshold_insomnia";
ELSE IF isi_total_score >=15 AND isi_total_score <= 21 THEN isi_cat = "clin_insomnia_mod";
ELSE IF isi_total_score >=22 AND isi_total_score <= 28 THEN isi_cat = "clin_insomnia_sev";
run; 