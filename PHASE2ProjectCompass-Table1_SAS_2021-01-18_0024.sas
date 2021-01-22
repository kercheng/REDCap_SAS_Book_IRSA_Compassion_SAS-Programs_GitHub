/* Edit the following line to reflect the full path to your CSV file */
%let csv_file = 'PHASE2ProjectCompass-Table1_DATA_NOHDRS_2021-01-18_0024.csv';

OPTIONS nofmterr;

proc format;
	value $redcap_event_name_ d0_enrollment_arm_1='D0_Enrollment (Arm 1: Active)' d7_adherence_1_arm_1='D7_Adherence_1 (Arm 1: Active)' 
		d14_adherence_2_arm_1='D14_Adherence_2 (Arm 1: Active)' d30_follow_up_arm_1='D30_Follow_up (Arm 1: Active)' 
		d0_enrollment_arm_2='D0_Enrollment (Arm 2: Control)' d7_adherence_1_arm_2='D7_Adherence_1 (Arm 2: Control)' 
		d14_adherence_2_arm_2='D14_Adherence_2 (Arm 2: Control)' d30_follow_up_arm_2='D30_Follow_up (Arm 2: Control)';
	value $redcap_repeat_instrument_ ad_hoc_log='Ad Hoc Log';
	value sex_ 1='Female' 2='Male' 
		3='Other (Intersex)' 4='Unknown' 
		5='Not Reported';
	value gender_ 1='Female' 2='Male' 
		3='Unknown' 4='Not reported' 
		5='Transgender Male--Female to Male' 6='Transgender Female--Male to Female' 
		7='Declined to State' 8='Other';
	value race_ 1='American Indian or Alaska Native' 2='Asian' 
		3='Black or African American' 4='Native Hawaiian or Other Pacific Islander' 
		5='White' 6='Declined to State' 
		7='Other';
	value ethnicity_ 1='Hispanic or Latino' 2='Not Hispanic or Latino' 
		3='Declined';
	value marital_status_ 1='Married (or Common Law)' 2='Single' 
		3='Separated/Divorced' 4='Widow(er)';
	value education_ 1='No formal education' 2='Primary level education' 
		3='Secondary level education / GED / Equivalent' 4='Some College' 
		5='Associate''s Degree' 6='Bachelor''s Degree or Higher' 
		7='Refused' 8='Unknown';
	value household_income_ 1='Lowest income ($31,000 or less)' 2='Lower-middle income ($31,000 - $42,000)' 
		3='Middle-income ($42,000 - $126,000)' 4='Upper-middle income ($126,000 - $188,000)' 
		5='Higher-income ($188,000 or more)' 6='Refused' 
		7='Unknown';

	run;

data work.redcap; %let _EFIERR_ = 0;
infile &csv_file  delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ;

	informat record_id $500. ;
	informat redcap_event_name $500. ;
	informat redcap_repeat_instrument $500. ;
	informat redcap_repeat_instance best32. ;
	informat age best32. ;
	informat sex best32. ;
	informat gender best32. ;
	informat race best32. ;
	informat ethnicity best32. ;
	informat marital_status best32. ;
	informat education best32. ;
	informat household_income best32. ;

	format record_id $500. ;
	format redcap_event_name $500. ;
	format redcap_repeat_instrument $500. ;
	format redcap_repeat_instance best12. ;
	format age best12. ;
	format sex best12. ;
	format gender best12. ;
	format race best12. ;
	format ethnicity best12. ;
	format marital_status best12. ;
	format education best12. ;
	format household_income best12. ;

input
	record_id $
	redcap_event_name $
	redcap_repeat_instrument $
	redcap_repeat_instance
	age
	sex
	gender
	race
	ethnicity
	marital_status
	education
	household_income
;
if _ERROR_ then call symput('_EFIERR_',"1");
run;

proc contents;run;

data redcap;
	set redcap;
	label record_id='Record ID';
	label redcap_event_name='Event Name';
	label redcap_repeat_instrument='Repeat Instrument';
	label redcap_repeat_instance='Repeat Instance';
	label age='What is your age?';
	label sex='What is your sex (assigned at birth)?';
	label gender='What is your gender?';
	label race='What is your race?';
	label ethnicity='What is your ethnicity?';
	label marital_status='What is your marital status?';
	label education='What is your highest level of education attained?';
	label household_income='Current household income level';
	format redcap_event_name redcap_event_name_.;
	format redcap_repeat_instrument redcap_repeat_instrument_.;
	format sex sex_.;
	format gender gender_.;
	format race race_.;
	format ethnicity ethnicity_.;
	format marital_status marital_status_.;
	format education education_.;
	format household_income household_income_.;
run;

proc contents data=redcap;
proc print data=redcap;
run;