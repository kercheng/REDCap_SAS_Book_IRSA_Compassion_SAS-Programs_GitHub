/* Create Table 1: Baseline Demographics */
/* IRSA Key Variables: */
/* https://docs.google.com/spreadsheets/d/1h71LetCQCpLP0ndiau-j1Med5X_oigXC7nmwKfFZiBU/edit#gid=1278138539 */

proc print data = irsa.main; 
run; 

/*Subset main for variables needed in Table 1*/
data irsa.t1_sub; 
	set irsa.main; 
	keep record_id redcap_event_name age sex race ethnicity marital_status education; 
	where redcap_event_name = 'd0_enrollment_arm_1' OR redcap_event_name = 'd0_enrollment_arm_2';
run; 

proc print data = irsa.t1_sub; 
run; 

/*Summary of continous variables*/

/* proc means data = (datasetname); */
/* var (continous_variable); */
/* run; */

proc means data = irsa.t1_sub;
	var age;
run;

/* Note: proc means ignores missing data; uses only valid data.*/

proc means data = irsa.t1_sub n nmiss mean std min max median;
	var age;
run;

proc univariate data = irsa.t1_sub; 
	var age; 
run;

/*Summary of categorical variables*/
proc freq data = irsa.t1_sub; 
	tables sex race ethnicity marital_status education; 
run; 

proc freq data = irsa.t1_sub; 
	tables sex race ethnicity marital_status education / MISSING; 
run; 
