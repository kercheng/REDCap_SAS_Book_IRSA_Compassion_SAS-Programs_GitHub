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
title1 "Summary Statistics of Continuous Variables"; 
run;


/* Note: proc means ignores missing data; uses only valid data.*/

proc means data = irsa.t1_sub n nmiss mean std min max median;
	var age;
run;

proc tabulate data = irsa.t1_sub;
	class race; 
	table race; 
run;

proc univariate data = irsa.t1_sub; 
	var age; 
run;

/*Summary of categorical variables*/
proc freq data = irsa.t1_sub; 
	tables sex race ethnicity marital_status education; 
run; 

proc freq data = irsa.t1_sub; 
	tables sex race ethnicity marital_status education / MISSING out = a; 
run; 


/* Create Table 1: Baseline Demographics in Pilot Study*/

/* proc contents data=irsa.t1_sub;  */
/* run;  */

/* Change labels for variables on Table 1*/
data irsa.t1_sub; 
	set irsa.t1_sub;
	label sex = 'Sex';
	label race = 'Race';
	label ethnicity = 'Ethnicity';
run;

proc format; 
	value sex_ 1='Female' 2='Male';
run; 

/* proc contents data=irsa.t1_sub;  */
/* run;  */

title1 "Table 1: Baseline Demographics in Pilot Study";
* font= 'Times New Roman' color=blue;
title2 "Overall Frequency";

* title; *Using TITLE without arguments cancels all existing titles.; 
proc tabulate data=irsa.t1_sub;
	class sex;
	class race / MISSING;
	class ethnicity / MISSING;
	tables sex race ethnicity, 
	(n colpctn all);
	
	label sex = 'Sex';
	label race = 'Race';
	label ethnicity = 'Ethnicity';
	
	format sex_;
	format race_; 
run;


