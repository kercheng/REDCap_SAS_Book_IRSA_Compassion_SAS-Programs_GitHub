/* Edit the following line to reflect the full path to your CSV file */
%let csv_file = "&path/PHASE2ProjectCompass_DATA_NOHDRS_2020-08-24_1142.csv";

OPTIONS nofmterr;

proc format;
	value $redcap_event_name_ d0_enrollment_arm_1='D0_Enrollment (Arm 1: Coaching Call)' d7_adherence_1_arm_1='D7_Adherence_1 (Arm 1: Coaching Call)' 
		d14_adherence_2_arm_1='D14_Adherence_2 (Arm 1: Coaching Call)' d30_follow_up_arm_1='D30_Follow_up (Arm 1: Coaching Call)' 
		d0_enrollment_arm_2='D0_Enrollment (Arm 2: Adherence Email)' d7_adherence_1_arm_2='D7_Adherence_1 (Arm 2: Adherence Email)' 
		d14_adherence_2_arm_2='D14_Adherence_2 (Arm 2: Adherence Email)' d30_follow_up_arm_2='D30_Follow_up (Arm 2: Adherence Email)';
	value $redcap_repeat_instrument_ ad_hoc_log='Ad Hoc Log';
	value intervention_status_ 1='Active' 2='Completed' 
		3='Discontinued';
	value reason_dc___1_ 0='Unchecked' 1='Checked';
	value reason_dc___2_ 0='Unchecked' 1='Checked';
	value reason_dc___3_ 0='Unchecked' 1='Checked';
	value allocated_intervention_ 0='Did NOT recei...tervention' 1='Received allo...tervention';
	value why_no_intervention___1_ 0='Unchecked' 1='Checked';
	value why_no_intervention___2_ 0='Unchecked' 1='Checked';
	value why_no_intervention___3_ 0='Unchecked' 1='Checked';
	value why_no_intervention___4_ 0='Unchecked' 1='Checked';
	value follow_up_ 0='Follow-up NOT complete' 1='Follow-up completed';
	value no_follow_up_reasons___1_ 0='Unchecked' 1='Checked';
	value no_follow_up_reasons___2_ 0='Unchecked' 1='Checked';
	value no_follow_up_reasons___3_ 0='Unchecked' 1='Checked';
	value information_form_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value consented1_ 0='I do not want...articipate' 1='I want to participate';
	value decline_reason1___1_ 0='Unchecked' 1='Checked';
	value decline_reason1___2_ 0='Unchecked' 1='Checked';
	value decline_reason1___3_ 0='Unchecked' 1='Checked';
	value decline_reason1___4_ 0='Unchecked' 1='Checked';
	value decline_reason1___5_ 0='Unchecked' 1='Checked';
	value decline_reason1___6_ 0='Unchecked' 1='Checked';
	value consent_addendum_coa_v_1_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value consented2_ 0='I do not want...articipate' 1='I want to participate';
	value decline_reason2___1_ 0='Unchecked' 1='Checked';
	value decline_reason2___2_ 0='Unchecked' 1='Checked';
	value decline_reason2___3_ 0='Unchecked' 1='Checked';
	value decline_reason2___4_ 0='Unchecked' 1='Checked';
	value decline_reason2___5_ 0='Unchecked' 1='Checked';
	value decline_reason2___6_ 0='Unchecked' 1='Checked';
	value consent_addendum_ema_v_3_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value sex_ 1='Male' 2='Female' 
		3='I do not wish to answer';
	value race_ 1='White (Caucasian)' 2='Black (African American)' 
		3='Asian' 4='Native Hawaii...c Islander' 
		5='American Indi...kan Native' 6='Multiracial' 
		7='Other' 8='I do not wish to answer';
	value ethnicity_ 1='Hispanic or Latino' 2='Not Hispanic or Latino' 
		3='Other' 4='I do not wish to answer';
	value marital_status_ 1='Married (or Common Law)' 2='Single' 
		3='Separated/Divorced' 4='Widow(er)';
	value education_ 1='High School' 2='2 Year College' 
		3='4 Year College' 4='Graduate School';
	value employment_status_ 1='Employed: Full Time' 2='Employed: Part Time' 
		3='Employed: PRN/as needed';
	value occupation_ 1='Registered Nurse' 2='Certified Nur...Assistant' 
		3='Nurse Practitioner' 4='Physician' 
		5='Physician''s Assistant' 6='Other';
	value unit_ 1='Rhoads 1' 2='Rhoads 2' 
		3='Rhoads 3' 4='Rhoads 4' 
		5='Rhoads 5' 6='Rhoads 7' 
		7='Founders 1' 8='Founders 2' 
		9='Founders 3' 10='Founders 4' 
		11='Founders 5' 12='Founders 6' 
		13='Founders 7' 14='Founders 8' 
		15='Founders 9' 16='Founders 10' 
		17='Founders 11' 18='Founders 12' 
		19='Founders 13' 20='Founders 14' 
		21='Silverstein 1' 22='Silverstein 2' 
		23='Silverstein 3' 24='Silverstein 4' 
		25='Silverstein 5' 26='Silverstein 6' 
		27='Silverstein 7' 28='Silverstein 8' 
		29='Silverstein 9' 30='Silverstein 10' 
		31='Silverstein 11' 32='Silverstein 12' 
		33='Gates 1' 34='Gates 2' 
		35='Gates 3' 36='Gates 4' 
		37='Gates 5' 38='Gates 6' 
		39='Gates 7' 40='Gates 8' 
		41='Gates 9' 42='Gates 11' 
		43='Gates 12' 44='Dulles 1' 
		45='Dulles 2' 46='Dulles 3' 
		47='Dulles 4' 48='Dulles 5' 
		49='Dulles 6' 50='Ravdin 1' 
		51='Ravdin 2' 52='Ravdin 3' 
		53='Ravdin 4' 54='Ravdin 5' 
		55='Ravdin 6' 56='Ravdin 7' 
		57='Ravdin 8' 58='Ravdin 9' 
		59='Other';
	value shift___1_ 0='Unchecked' 1='Checked';
	value shift___2_ 0='Unchecked' 1='Checked';
	value shift___3_ 0='Unchecked' 1='Checked';
	value demographics_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value scbcs1_ 1='1 not true of me at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 very true of me';
	value scbcs2_ 1='1 not true of me at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 very true of me';
	value scbcs3_ 1='1 not true of me at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 very true of me';
	value scbcs4_ 1='1 not true of me at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 very true of me';
	value scbcs5_ 1='1 not true of me at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 very true of me';
	value scbcs_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value mbi_ee_1_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_ee_2_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_ee_3_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_ee_4_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_ee_5_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_ee_6_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_ee_7_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_ee_8_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_ee_9_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_pa_1_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_pa_2_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_pa_3_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_pa_4_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_pa_5_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_pa_6_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_pa_7_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_pa_8_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_dep_1_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_dep_2_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_dep_3_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_dep_4_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_dep_5_ 0='Never' 1='1 Very mild,...noticeable' 
		2='2' 3='3' 
		4='Moderate' 5='5' 
		6='6' 7='7 Very strong, major';
	value mbi_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value panas_1_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_2_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_3_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_4_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_5_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_6_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_7_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_8_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_9_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_10_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_11_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_12_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_13_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_14_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_15_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_16_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_17_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_18_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_19_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_20_ 1='1 very slight...not at all' 2='2 a little' 
		3='3 moderately' 4='4 quite a bit' 
		5='5 extremely';
	value panas_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value self_focus1_ 1='I' 2='she' 
		3='we';
	value self_focus2_ 1='their' 2='our' 
		3='my';
	value self_focus3_ 1='me' 2='her' 
		3='us';
	value self_focus4_ 1='us' 2='her' 
		3='me';
	value self_focus5_ 1='I' 2='we' 
		3='they';
	value self_focus_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value non_binary_pref_ 1='Male' 2='Female';
	value photo1_similarity_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo1_connectedness_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo1_familiarity_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo1_attractiveness_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo2_similarity_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo2_connectedness_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo2_familiarity_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo2_attractiveness_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo3_similarity_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo3_connectedness_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo3_familiarity_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value photo3_attractiveness_ 1='1 Not at all' 2='2' 
		3='3' 4='4' 
		5='5' 6='6' 
		7='7 Extremely';
	value ratings_of_strangers_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value eligibility_ 0='Ineligible' 1='Eligible';
	value enroll_ineligible_reasons___1_ 0='Unchecked' 1='Checked';
	value enroll_ineligible_reasons___2_ 0='Unchecked' 1='Checked';
	value enroll_ineligible_reasons___3_ 0='Unchecked' 1='Checked';
	value enrollment_informati_v_4_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value instructions_email_ 1='Yes' 0='No';
	value scheduling_yn_ 1='Yes' 0='No';
	value mphenomics_instructi_v_5_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value adherence_check_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value coaching_call_answer_yn_ 1='Yes' 0='No';
	value coaching_call_voicemail_ 1='Yes' 0='No';
	value coaching_call_yn_ 1='Yes' 0='No';
	value coaching_reschedule1_ 1='Yes' 0='No';
	value coaching_reschedule2_ 1='Yes' 0='No';
	value coaching_call_scale_ 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10';
	value coaching_call_benefits___1_ 0='Unchecked' 1='Checked';
	value coaching_call_benefits___2_ 0='Unchecked' 1='Checked';
	value coaching_call_benefits___3_ 0='Unchecked' 1='Checked';
	value coaching_call_benefits___4_ 0='Unchecked' 1='Checked';
	value coaching_call_benefits___5_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___1_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___2_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___3_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___4_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___5_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___6_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___7_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___8_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___9_ 0='Unchecked' 1='Checked';
	value coaching_call_obstacles___10_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___1_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___2_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___3_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___4_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___5_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___6_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___7_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___8_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___9_ 0='Unchecked' 1='Checked';
	value coaching_call_problems___10_ 0='Unchecked' 1='Checked';
	value logging_ 1='Yes' 0='No';
	value plan1___1_ 0='Unchecked' 1='Checked';
	value plan1___2_ 0='Unchecked' 1='Checked';
	value plan1___3_ 0='Unchecked' 1='Checked';
	value plan1___4_ 0='Unchecked' 1='Checked';
	value nohelp_ 1='Yes' 0='No';
	value will_focus_ 1='Yes' 0='No';
	value coaching_call_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value adherence_email_yn_ 1='Yes' 0='No';
	value adherence_email_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value email_last_qs_yn_ 1='Yes' 0='No';
	value postfollowup_questio_v_6_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value ad_hoc_contact_type_ 1='Email' 2='Phone';
	value ad_hoc_contact_reason_ 1='Technical Difficulties' 2='Scheduling Conflicts' 
		3='Other';
	value ad_hoc_log_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';

	run;

data work.redcap; %let _EFIERR_ = 0;
infile &csv_file  delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ;

	informat record_id $500. ;
	informat redcap_event_name $500. ;
	informat redcap_repeat_instrument $500. ;
	informat redcap_repeat_instance best32. ;
	informat intervention_status best32. ;
	informat reason_dc___1 best32. ;
	informat reason_dc___2 best32. ;
	informat reason_dc___3 best32. ;
	informat discontinued_other $500. ;
	informat allocated_intervention best32. ;
	informat why_no_intervention___1 best32. ;
	informat why_no_intervention___2 best32. ;
	informat why_no_intervention___3 best32. ;
	informat why_no_intervention___4 best32. ;
	informat no_intervention_other $500. ;
	informat follow_up best32. ;
	informat no_follow_up_reasons___1 best32. ;
	informat no_follow_up_reasons___2 best32. ;
	informat no_follow_up_reasons___3 best32. ;
	informat no_follow_up_other $500. ;
	informat information_form_complete best32. ;
	informat consent_addendum_coa_v_0 $500. ;
	informat consented1 best32. ;
	informat consent_date1 yymmdd10. ;
	informat decline_reason1___1 best32. ;
	informat decline_reason1___2 best32. ;
	informat decline_reason1___3 best32. ;
	informat decline_reason1___4 best32. ;
	informat decline_reason1___5 best32. ;
	informat decline_reason1___6 best32. ;
	informat decline_other $500. ;
	informat consent_addendum_coa_v_1 best32. ;
	informat consent_addendum_ema_v_2 $500. ;
	informat consented2 best32. ;
	informat consent_date2 yymmdd10. ;
	informat decline_reason2___1 best32. ;
	informat decline_reason2___2 best32. ;
	informat decline_reason2___3 best32. ;
	informat decline_reason2___4 best32. ;
	informat decline_reason2___5 best32. ;
	informat decline_reason2___6 best32. ;
	informat decline_other2 $500. ;
	informat consent_addendum_ema_v_3 best32. ;
	informat demographics_timestamp $500. ;
	informat age best32. ;
	informat sex best32. ;
	informat other_sex $500. ;
	informat race best32. ;
	informat other_race $500. ;
	informat ethnicity best32. ;
	informat other_ethnicity $500. ;
	informat marital_status best32. ;
	informat education best32. ;
	informat employment_status best32. ;
	informat occupation best32. ;
	informat other_occupation $500. ;
	informat unit best32. ;
	informat other_unit $500. ;
	informat shift___1 best32. ;
	informat shift___2 best32. ;
	informat shift___3 best32. ;
	informat demographics_complete best32. ;
	informat scbcs_timestamp $500. ;
	informat scbcs1 best32. ;
	informat scbcs2 best32. ;
	informat scbcs3 best32. ;
	informat scbcs4 best32. ;
	informat scbcs5 best32. ;
	informat total_scbcs best32. ;
	informat scbcs_complete best32. ;
	informat mbi_timestamp $500. ;
	informat mbi_ee_1 best32. ;
	informat mbi_ee_2 best32. ;
	informat mbi_ee_3 best32. ;
	informat mbi_ee_4 best32. ;
	informat mbi_ee_5 best32. ;
	informat mbi_ee_6 best32. ;
	informat mbi_ee_7 best32. ;
	informat mbi_ee_8 best32. ;
	informat mbi_ee_9 best32. ;
	informat mbi_ee_total best32. ;
	informat mbi_pa_1 best32. ;
	informat mbi_pa_2 best32. ;
	informat mbi_pa_3 best32. ;
	informat mbi_pa_4 best32. ;
	informat mbi_pa_5 best32. ;
	informat mbi_pa_6 best32. ;
	informat mbi_pa_7 best32. ;
	informat mbi_pa_8 best32. ;
	informat mbi_pa_total best32. ;
	informat mbi_dep_1 best32. ;
	informat mbi_dep_2 best32. ;
	informat mbi_dep_3 best32. ;
	informat mbi_dep_4 best32. ;
	informat mbi_dep_5 best32. ;
	informat mbi_dep_total best32. ;
	informat mbi_total best32. ;
	informat mbi_complete best32. ;
	informat panas_timestamp $500. ;
	informat panas_1 best32. ;
	informat panas_2 best32. ;
	informat panas_3 best32. ;
	informat panas_4 best32. ;
	informat panas_5 best32. ;
	informat panas_6 best32. ;
	informat panas_7 best32. ;
	informat panas_8 best32. ;
	informat panas_9 best32. ;
	informat panas_10 best32. ;
	informat panas_11 best32. ;
	informat panas_12 best32. ;
	informat panas_13 best32. ;
	informat panas_14 best32. ;
	informat panas_15 best32. ;
	informat panas_16 best32. ;
	informat panas_17 best32. ;
	informat panas_18 best32. ;
	informat panas_19 best32. ;
	informat panas_20 best32. ;
	informat positive_a_total best32. ;
	informat negative_a_total best32. ;
	informat panas_total best32. ;
	informat panas_complete best32. ;
	informat self_focus_timestamp $500. ;
	informat self_focus1 best32. ;
	informat self_focus2 best32. ;
	informat self_focus3 best32. ;
	informat self_focus4 best32. ;
	informat self_focus5 best32. ;
	informat self_focus_total best32. ;
	informat self_focus_complete best32. ;
	informat ratings_of_strangers_timestamp $500. ;
	informat non_binary_pref best32. ;
	informat photo1_similarity best32. ;
	informat photo1_connectedness best32. ;
	informat photo1_familiarity best32. ;
	informat photo1_attractiveness best32. ;
	informat photo2_similarity best32. ;
	informat photo2_connectedness best32. ;
	informat photo2_familiarity best32. ;
	informat photo2_attractiveness best32. ;
	informat photo3_similarity best32. ;
	informat photo3_connectedness best32. ;
	informat photo3_familiarity best32. ;
	informat photo3_attractiveness best32. ;
	informat strangers_total best32. ;
	informat ratings_of_strangers_complete best32. ;
	informat enroll_subject_id best32. ;
	informat enroll_consent_date yymmdd10. ;
	informat enroll_date_screened yymmdd10. ;
	informat eligibility best32. ;
	informat enroll_ineligible_reasons___1 best32. ;
	informat enroll_ineligible_reasons___2 best32. ;
	informat enroll_ineligible_reasons___3 best32. ;
	informat ineligible_reasons_other $500. ;
	informat enrollment_informati_v_4 best32. ;
	informat instructions_email best32. ;
	informat instructions_email_date yymmdd10. ;
	informat scheduling_yn best32. ;
	informat mphenomics_instructi_v_5 best32. ;
	informat adherence best32. ;
	informat adherence_check_complete best32. ;
	informat staff $500. ;
	informat coaching_call_start time5. ;
	informat coaching_call_answer_yn best32. ;
	informat coaching_call_voicemail best32. ;
	informat coaching_call_yn best32. ;
	informat coaching_reschedule_date yymmdd10. ;
	informat coaching_reschedule_time $500. ;
	informat coaching_reschedule1 best32. ;
	informat coaching_reschedule2 best32. ;
	informat coaching_call_rapport $5000. ;
	informat coaching_call_scale best32. ;
	informat coaching_call_benefits___1 best32. ;
	informat coaching_call_benefits___2 best32. ;
	informat coaching_call_benefits___3 best32. ;
	informat coaching_call_benefits___4 best32. ;
	informat coaching_call_benefits___5 best32. ;
	informat benefits_other $5000. ;
	informat relax $5000. ;
	informat feel $5000. ;
	informat coaching_call_obstacles___1 best32. ;
	informat coaching_call_obstacles___2 best32. ;
	informat coaching_call_obstacles___3 best32. ;
	informat coaching_call_obstacles___4 best32. ;
	informat coaching_call_obstacles___5 best32. ;
	informat coaching_call_obstacles___6 best32. ;
	informat coaching_call_obstacles___7 best32. ;
	informat coaching_call_obstacles___8 best32. ;
	informat coaching_call_obstacles___9 best32. ;
	informat coaching_call_obstacles___10 best32. ;
	informat coaching_call_problems___1 best32. ;
	informat coaching_call_problems___2 best32. ;
	informat coaching_call_problems___3 best32. ;
	informat coaching_call_problems___4 best32. ;
	informat coaching_call_problems___5 best32. ;
	informat coaching_call_problems___6 best32. ;
	informat coaching_call_problems___7 best32. ;
	informat coaching_call_problems___8 best32. ;
	informat coaching_call_problems___9 best32. ;
	informat coaching_call_problems___10 best32. ;
	informat problems_other $5000. ;
	informat logging best32. ;
	informat plan1___1 best32. ;
	informat plan1___2 best32. ;
	informat plan1___3 best32. ;
	informat plan1___4 best32. ;
	informat plan1_other $5000. ;
	informat plan2 $5000. ;
	informat plan3 $5000. ;
	informat plan4 $5000. ;
	informat nohelp best32. ;
	informat will_focus best32. ;
	informat not_focus $5000. ;
	informat call_end $5000. ;
	informat coaching_end time5. ;
	informat coaching_call_complete best32. ;
	informat adherence_email_yn best32. ;
	informat adherence_email_date yymmdd10. ;
	informat adherence_email_complete best32. ;
	informat email_last_qs_yn best32. ;
	informat date_email_last_qs yymmdd10. ;
	informat postfollowup_questio_v_6 best32. ;
	informat ad_hoc_staff_name $500. ;
	informat ad_hoc_contact_type best32. ;
	informat ad_hoc_contact_date yymmdd10. ;
	informat ad_hoc_contact_reason best32. ;
	informat other_reason $500. ;
	informat ad_hoc_contact_notes $5000. ;
	informat ad_hoc_log_complete best32. ;

	format record_id $500. ;
	format redcap_event_name $redcap_event_name_. ;
	format redcap_repeat_instrument $redcap_repeat_instrument_. ;
	format redcap_repeat_instance best12. ;
	format intervention_status best12. ;
	format reason_dc___1 best12. ;
	format reason_dc___2 best12. ;
	format reason_dc___3 best12. ;
	format discontinued_other $500. ;
	format allocated_intervention best12. ;
	format why_no_intervention___1 best12. ;
	format why_no_intervention___2 best12. ;
	format why_no_intervention___3 best12. ;
	format why_no_intervention___4 best12. ;
	format no_intervention_other $500. ;
	format follow_up best12. ;
	format no_follow_up_reasons___1 best12. ;
	format no_follow_up_reasons___2 best12. ;
	format no_follow_up_reasons___3 best12. ;
	format no_follow_up_other $500. ;
	format information_form_complete best12. ;
	format consent_addendum_coa_v_0 $500. ;
	format consented1 best12. ;
	format consent_date1 yymmdd10. ;
	format decline_reason1___1 best12. ;
	format decline_reason1___2 best12. ;
	format decline_reason1___3 best12. ;
	format decline_reason1___4 best12. ;
	format decline_reason1___5 best12. ;
	format decline_reason1___6 best12. ;
	format decline_other $500. ;
	format consent_addendum_coa_v_1 best12. ;
	format consent_addendum_ema_v_2 $500. ;
	format consented2 best12. ;
	format consent_date2 yymmdd10. ;
	format decline_reason2___1 best12. ;
	format decline_reason2___2 best12. ;
	format decline_reason2___3 best12. ;
	format decline_reason2___4 best12. ;
	format decline_reason2___5 best12. ;
	format decline_reason2___6 best12. ;
	format decline_other2 $500. ;
	format consent_addendum_ema_v_3 best12. ;
	format demographics_timestamp $500. ;
	format age best12. ;
	format sex best12. ;
	format other_sex $500. ;
	format race best12. ;
	format other_race $500. ;
	format ethnicity best12. ;
	format other_ethnicity $500. ;
	format marital_status best12. ;
	format education best12. ;
	format employment_status best12. ;
	format occupation best12. ;
	format other_occupation $500. ;
	format unit best12. ;
	format other_unit $500. ;
	format shift___1 best12. ;
	format shift___2 best12. ;
	format shift___3 best12. ;
	format demographics_complete best12. ;
	format scbcs_timestamp $500. ;
	format scbcs1 best12. ;
	format scbcs2 best12. ;
	format scbcs3 best12. ;
	format scbcs4 best12. ;
	format scbcs5 best12. ;
	format total_scbcs best12. ;
	format scbcs_complete best12. ;
	format mbi_timestamp $500. ;
	format mbi_ee_1 best12. ;
	format mbi_ee_2 best12. ;
	format mbi_ee_3 best12. ;
	format mbi_ee_4 best12. ;
	format mbi_ee_5 best12. ;
	format mbi_ee_6 best12. ;
	format mbi_ee_7 best12. ;
	format mbi_ee_8 best12. ;
	format mbi_ee_9 best12. ;
	format mbi_ee_total best12. ;
	format mbi_pa_1 best12. ;
	format mbi_pa_2 best12. ;
	format mbi_pa_3 best12. ;
	format mbi_pa_4 best12. ;
	format mbi_pa_5 best12. ;
	format mbi_pa_6 best12. ;
	format mbi_pa_7 best12. ;
	format mbi_pa_8 best12. ;
	format mbi_pa_total best12. ;
	format mbi_dep_1 best12. ;
	format mbi_dep_2 best12. ;
	format mbi_dep_3 best12. ;
	format mbi_dep_4 best12. ;
	format mbi_dep_5 best12. ;
	format mbi_dep_total best12. ;
	format mbi_total best12. ;
	format mbi_complete best12. ;
	format panas_timestamp $500. ;
	format panas_1 best12. ;
	format panas_2 best12. ;
	format panas_3 best12. ;
	format panas_4 best12. ;
	format panas_5 best12. ;
	format panas_6 best12. ;
	format panas_7 best12. ;
	format panas_8 best12. ;
	format panas_9 best12. ;
	format panas_10 best12. ;
	format panas_11 best12. ;
	format panas_12 best12. ;
	format panas_13 best12. ;
	format panas_14 best12. ;
	format panas_15 best12. ;
	format panas_16 best12. ;
	format panas_17 best12. ;
	format panas_18 best12. ;
	format panas_19 best12. ;
	format panas_20 best12. ;
	format positive_a_total best12. ;
	format negative_a_total best12. ;
	format panas_total best12. ;
	format panas_complete best12. ;
	format self_focus_timestamp $500. ;
	format self_focus1 best12. ;
	format self_focus2 best12. ;
	format self_focus3 best12. ;
	format self_focus4 best12. ;
	format self_focus5 best12. ;
	format self_focus_total best12. ;
	format self_focus_complete best12. ;
	format ratings_of_strangers_timestamp $500. ;
	format non_binary_pref best12. ;
	format photo1_similarity best12. ;
	format photo1_connectedness best12. ;
	format photo1_familiarity best12. ;
	format photo1_attractiveness best12. ;
	format photo2_similarity best12. ;
	format photo2_connectedness best12. ;
	format photo2_familiarity best12. ;
	format photo2_attractiveness best12. ;
	format photo3_similarity best12. ;
	format photo3_connectedness best12. ;
	format photo3_familiarity best12. ;
	format photo3_attractiveness best12. ;
	format strangers_total best12. ;
	format ratings_of_strangers_complete best12. ;
	format enroll_subject_id best12. ;
	format enroll_consent_date yymmdd10. ;
	format enroll_date_screened yymmdd10. ;
	format eligibility best12. ;
	format enroll_ineligible_reasons___1 best12. ;
	format enroll_ineligible_reasons___2 best12. ;
	format enroll_ineligible_reasons___3 best12. ;
	format ineligible_reasons_other $500. ;
	format enrollment_informati_v_4 best12. ;
	format instructions_email best12. ;
	format instructions_email_date yymmdd10. ;
	format scheduling_yn best12. ;
	format mphenomics_instructi_v_5 best12. ;
	format adherence best12. ;
	format adherence_check_complete best12. ;
	format staff $500. ;
	format coaching_call_start time5. ;
	format coaching_call_answer_yn best12. ;
	format coaching_call_voicemail best12. ;
	format coaching_call_yn best12. ;
	format coaching_reschedule_date yymmdd10. ;
	format coaching_reschedule_time $500. ;
	format coaching_reschedule1 best12. ;
	format coaching_reschedule2 best12. ;
	format coaching_call_rapport $5000. ;
	format coaching_call_scale best12. ;
	format coaching_call_benefits___1 best12. ;
	format coaching_call_benefits___2 best12. ;
	format coaching_call_benefits___3 best12. ;
	format coaching_call_benefits___4 best12. ;
	format coaching_call_benefits___5 best12. ;
	format benefits_other $5000. ;
	format relax $5000. ;
	format feel $5000. ;
	format coaching_call_obstacles___1 best12. ;
	format coaching_call_obstacles___2 best12. ;
	format coaching_call_obstacles___3 best12. ;
	format coaching_call_obstacles___4 best12. ;
	format coaching_call_obstacles___5 best12. ;
	format coaching_call_obstacles___6 best12. ;
	format coaching_call_obstacles___7 best12. ;
	format coaching_call_obstacles___8 best12. ;
	format coaching_call_obstacles___9 best12. ;
	format coaching_call_obstacles___10 best12. ;
	format coaching_call_problems___1 best12. ;
	format coaching_call_problems___2 best12. ;
	format coaching_call_problems___3 best12. ;
	format coaching_call_problems___4 best12. ;
	format coaching_call_problems___5 best12. ;
	format coaching_call_problems___6 best12. ;
	format coaching_call_problems___7 best12. ;
	format coaching_call_problems___8 best12. ;
	format coaching_call_problems___9 best12. ;
	format coaching_call_problems___10 best12. ;
	format problems_other $5000. ;
	format logging best12. ;
	format plan1___1 best12. ;
	format plan1___2 best12. ;
	format plan1___3 best12. ;
	format plan1___4 best12. ;
	format plan1_other $5000. ;
	format plan2 $5000. ;
	format plan3 $5000. ;
	format plan4 $5000. ;
	format nohelp best12. ;
	format will_focus best12. ;
	format not_focus $5000. ;
	format call_end $5000. ;
	format coaching_end time5. ;
	format coaching_call_complete best12. ;
	format adherence_email_yn best12. ;
	format adherence_email_date yymmdd10. ;
	format adherence_email_complete best12. ;
	format email_last_qs_yn best12. ;
	format date_email_last_qs yymmdd10. ;
	format postfollowup_questio_v_6 best12. ;
	format ad_hoc_staff_name $500. ;
	format ad_hoc_contact_type best12. ;
	format ad_hoc_contact_date yymmdd10. ;
	format ad_hoc_contact_reason best12. ;
	format other_reason $500. ;
	format ad_hoc_contact_notes $5000. ;
	format ad_hoc_log_complete best12. ;

input
	record_id $
	redcap_event_name $
	redcap_repeat_instrument $
	redcap_repeat_instance
	intervention_status
	reason_dc___1
	reason_dc___2
	reason_dc___3
	discontinued_other $
	allocated_intervention
	why_no_intervention___1
	why_no_intervention___2
	why_no_intervention___3
	why_no_intervention___4
	no_intervention_other $
	follow_up
	no_follow_up_reasons___1
	no_follow_up_reasons___2
	no_follow_up_reasons___3
	no_follow_up_other $
	information_form_complete
	consent_addendum_coa_v_0 $
	consented1
	consent_date1
	decline_reason1___1
	decline_reason1___2
	decline_reason1___3
	decline_reason1___4
	decline_reason1___5
	decline_reason1___6
	decline_other $
	consent_addendum_coa_v_1
	consent_addendum_ema_v_2 $
	consented2
	consent_date2
	decline_reason2___1
	decline_reason2___2
	decline_reason2___3
	decline_reason2___4
	decline_reason2___5
	decline_reason2___6
	decline_other2 $
	consent_addendum_ema_v_3
	demographics_timestamp $
	age
	sex
	other_sex $
	race
	other_race $
	ethnicity
	other_ethnicity $
	marital_status
	education
	employment_status
	occupation
	other_occupation $
	unit
	other_unit $
	shift___1
	shift___2
	shift___3
	demographics_complete
	scbcs_timestamp $
	scbcs1
	scbcs2
	scbcs3
	scbcs4
	scbcs5
	total_scbcs
	scbcs_complete
	mbi_timestamp $
	mbi_ee_1
	mbi_ee_2
	mbi_ee_3
	mbi_ee_4
	mbi_ee_5
	mbi_ee_6
	mbi_ee_7
	mbi_ee_8
	mbi_ee_9
	mbi_ee_total
	mbi_pa_1
	mbi_pa_2
	mbi_pa_3
	mbi_pa_4
	mbi_pa_5
	mbi_pa_6
	mbi_pa_7
	mbi_pa_8
	mbi_pa_total
	mbi_dep_1
	mbi_dep_2
	mbi_dep_3
	mbi_dep_4
	mbi_dep_5
	mbi_dep_total
	mbi_total
	mbi_complete
	panas_timestamp $
	panas_1
	panas_2
	panas_3
	panas_4
	panas_5
	panas_6
	panas_7
	panas_8
	panas_9
	panas_10
	panas_11
	panas_12
	panas_13
	panas_14
	panas_15
	panas_16
	panas_17
	panas_18
	panas_19
	panas_20
	positive_a_total
	negative_a_total
	panas_total
	panas_complete
	self_focus_timestamp $
	self_focus1
	self_focus2
	self_focus3
	self_focus4
	self_focus5
	self_focus_total
	self_focus_complete
	ratings_of_strangers_timestamp $
	non_binary_pref
	photo1_similarity
	photo1_connectedness
	photo1_familiarity
	photo1_attractiveness
	photo2_similarity
	photo2_connectedness
	photo2_familiarity
	photo2_attractiveness
	photo3_similarity
	photo3_connectedness
	photo3_familiarity
	photo3_attractiveness
	strangers_total
	ratings_of_strangers_complete
	enroll_subject_id
	enroll_consent_date
	enroll_date_screened
	eligibility
	enroll_ineligible_reasons___1
	enroll_ineligible_reasons___2
	enroll_ineligible_reasons___3
	ineligible_reasons_other $
	enrollment_informati_v_4
	instructions_email
	instructions_email_date
	scheduling_yn
	mphenomics_instructi_v_5
	adherence
	adherence_check_complete
	staff $
	coaching_call_start
	coaching_call_answer_yn
	coaching_call_voicemail
	coaching_call_yn
	coaching_reschedule_date
	coaching_reschedule_time $
	coaching_reschedule1
	coaching_reschedule2
	coaching_call_rapport $
	coaching_call_scale
	coaching_call_benefits___1
	coaching_call_benefits___2
	coaching_call_benefits___3
	coaching_call_benefits___4
	coaching_call_benefits___5
	benefits_other $
	relax $
	feel $
	coaching_call_obstacles___1
	coaching_call_obstacles___2
	coaching_call_obstacles___3
	coaching_call_obstacles___4
	coaching_call_obstacles___5
	coaching_call_obstacles___6
	coaching_call_obstacles___7
	coaching_call_obstacles___8
	coaching_call_obstacles___9
	coaching_call_obstacles___10
	coaching_call_problems___1
	coaching_call_problems___2
	coaching_call_problems___3
	coaching_call_problems___4
	coaching_call_problems___5
	coaching_call_problems___6
	coaching_call_problems___7
	coaching_call_problems___8
	coaching_call_problems___9
	coaching_call_problems___10
	problems_other $
	logging
	plan1___1
	plan1___2
	plan1___3
	plan1___4
	plan1_other $
	plan2 $
	plan3 $
	plan4 $
	nohelp
	will_focus
	not_focus $
	call_end $
	coaching_end
	coaching_call_complete
	adherence_email_yn
	adherence_email_date
	adherence_email_complete
	email_last_qs_yn
	date_email_last_qs
	postfollowup_questio_v_6
	ad_hoc_staff_name $
	ad_hoc_contact_type
	ad_hoc_contact_date
	ad_hoc_contact_reason
	other_reason $
	ad_hoc_contact_notes $
	ad_hoc_log_complete
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
	label intervention_status='What is the participant''s intervention status?';
	label reason_dc___1='Reason for discontinued intervention (choice=Too busy to d...tervention)';
	label reason_dc___2='Reason for discontinued intervention (choice=Intervention isnt helpful)';
	label reason_dc___3='Reason for discontinued intervention (choice=Other)';
	label discontinued_other='If Other, please specify:';
	label allocated_intervention='Intervention:';
	label why_no_intervention___1='Why did the participant not receive the all...d intervention? (choice=Did not fill...tionnaires)';
	label why_no_intervention___2='Why did the participant not receive the all...d intervention? (choice=Did not answer emails)';
	label why_no_intervention___3='Why did the participant not receive the all...d intervention? (choice=Did not compl...g sessions)';
	label why_no_intervention___4='Why did the participant not receive the all...d intervention? (choice=Other)';
	label no_intervention_other='If Other, please specify:';
	label follow_up='Follow-Up:';
	label no_follow_up_reasons___1='Reason for not completing follow-up (choice=Too busy to c...tionnaires)';
	label no_follow_up_reasons___2='Reason for not completing follow-up (choice=Not replying...munication)';
	label no_follow_up_reasons___3='Reason for not completing follow-up (choice=Other)';
	label no_follow_up_other='If Other, please specify';
	label information_form_complete='Complete?';
	label consent_addendum_coa_v_0='Survey Timestamp';
	label consented1='Would you like to participate in this research study?';
	label consent_date1='Today''s Date (mm/dd/yyyy)';
	label decline_reason1___1='We hope to improve people''s health with our...ll that apply). (choice=I do not unde...the study)';
	label decline_reason1___2='We hope to improve people''s health with our...ll that apply). (choice=I am concerne...the study)';
	label decline_reason1___3='We hope to improve people''s health with our...ll that apply). (choice=I do not want...nformation)';
	label decline_reason1___4='We hope to improve people''s health with our...ll that apply). (choice=I do not want...he website)';
	label decline_reason1___5='We hope to improve people''s health with our...ll that apply). (choice=I am not read...y behavior)';
	label decline_reason1___6='We hope to improve people''s health with our...ll that apply). (choice=Other)';
	label decline_other='If other, Please explain:';
	label consent_addendum_coa_v_1='Complete?';
	label consent_addendum_ema_v_2='Survey Timestamp';
	label consented2='Would you like to participate in this research study?';
	label consent_date2='Today''s Date (mm/dd/yyyy)';
	label decline_reason2___1='We hope to improve people''s health with our...ll that apply). (choice=I do not unde...the study)';
	label decline_reason2___2='We hope to improve people''s health with our...ll that apply). (choice=I am concerne...the study)';
	label decline_reason2___3='We hope to improve people''s health with our...ll that apply). (choice=I do not want...nformation)';
	label decline_reason2___4='We hope to improve people''s health with our...ll that apply). (choice=I do not want...he website)';
	label decline_reason2___5='We hope to improve people''s health with our...ll that apply). (choice=I am not read...y behavior)';
	label decline_reason2___6='We hope to improve people''s health with our...ll that apply). (choice=Other)';
	label decline_other2='If other, Please explain:';
	label consent_addendum_ema_v_3='Complete?';
	label demographics_timestamp='Survey Timestamp';
	label age='Age:';
	label sex='What is your sex?';
	label other_sex='If Other, please specify:';
	label race='What is your race?';
	label other_race='If Other, please specify:';
	label ethnicity='What is your ethnicity?';
	label other_ethnicity='If Other, please specify:';
	label marital_status='What is your marital status?';
	label education='What is your highest level of completed education?';
	label employment_status='What is your employment status?';
	label occupation='What is your current occupation?';
	label other_occupation='If Other, please specify:';
	label unit='What unit are you currently on?';
	label other_unit='If Other: please specify:';
	label shift___1='What shift(s) do you work? (choice=Day)';
	label shift___2='What shift(s) do you work? (choice=Evening)';
	label shift___3='What shift(s) do you work? (choice=Night)';
	label demographics_complete='Complete?';
	label scbcs_timestamp='Survey Timestamp';
	label scbcs1='When I hear about someone (for example, a s...for him or her.';
	label scbcs2='I tend to feel compassion for people, even...not know them.';
	label scbcs3='One of the activities that provide me with...they need help.';
	label scbcs4='I would rather engage in actions that help...would help me.';
	label scbcs5='I often have tender feelings toward people...to be in need.';
	label total_scbcs='Total SCBCS score:';
	label scbcs_complete='Complete?';
	label mbi_timestamp='Survey Timestamp';
	label mbi_ee_1='I feel emotionally drained from my work';
	label mbi_ee_2='I feel used up at the end of the workday';
	label mbi_ee_3='I feel fatigued when I get up in the mornin...day on the job';
	label mbi_ee_4='Working with people all day is really a strain for me';
	label mbi_ee_5='I feel burned out from my work';
	label mbi_ee_6='I feel frustrated at my job';
	label mbi_ee_7='I feel I''m working too hard on my job';
	label mbi_ee_8='Working with people directly puts too much stress on me';
	label mbi_ee_9='I feel like I''m at the end of my rope';
	label mbi_ee_total='Section 1 Total:';
	label mbi_pa_1='I can easily understand how my recipients feel about things';
	label mbi_pa_2='I deal very effectively with the problems of my recipients';
	label mbi_pa_3='I feel I''m positively influencing other peo...through my work';
	label mbi_pa_4='I feel very energetic';
	label mbi_pa_5='I can easily create a relaxed atmosphere with my recipients';
	label mbi_pa_6='I feel exhilarated after working closely with my recipients';
	label mbi_pa_7='I have accomplished many worthwhile things in this job';
	label mbi_pa_8='In my work, I deal with emotional problems very calmly';
	label mbi_pa_total='Section Total:';
	label mbi_dep_1='I feel I treat some recipients as if they w...sonal objects';
	label mbi_dep_2='I''ve become more callous toward people since I took this job';
	label mbi_dep_3='I worry that this job is hardening me emotionally';
	label mbi_dep_4='I don''t really care what happens to some recipients';
	label mbi_dep_5='I feel recipients blame me for some of their problems';
	label mbi_dep_total='Section Total:';
	label mbi_total='MBI Total:';
	label mbi_complete='Complete?';
	label panas_timestamp='Survey Timestamp';
	label panas_1='Interested';
	label panas_2='Distressed';
	label panas_3='Excited';
	label panas_4='Upset';
	label panas_5='Strong';
	label panas_6='Guilty';
	label panas_7='Scared';
	label panas_8='Hostile';
	label panas_9='Enthusiastic';
	label panas_10='Proud';
	label panas_11='Irritable';
	label panas_12='Alert';
	label panas_13='Ashamed';
	label panas_14='Inspired';
	label panas_15='Nervous';
	label panas_16='Determined';
	label panas_17='Attentive';
	label panas_18='Jittery';
	label panas_19='Active';
	label panas_20='Afraid';
	label positive_a_total='Positive Affect Total:';
	label negative_a_total='Negative Affect Total:';
	label panas_total='PANAS Total:';
	label panas_complete='Complete?';
	label self_focus_timestamp='Survey Timestamp';
	label self_focus1='After spreading fertilizer liberally over t...ed the flowers.';
	label self_focus2='Although _______ personal library consists...m are classics.';
	label self_focus3='Please don''t do this to ______, it is just not fair';
	label self_focus4='At first it didn''t seem to make any differe...____ to sleep.';
	label self_focus5='It isn''t easy to get lost in this town, but...___ managed it.';
	label self_focus_total='Pronoun Choice Total:';
	label self_focus_complete='Complete?';
	label ratings_of_strangers_timestamp='Survey Timestamp';
	label non_binary_pref='This survey involves rating Similarity, Con...r female faces?';
	label photo1_similarity='Similarity';
	label photo1_connectedness='Connectedness';
	label photo1_familiarity='Familiarity';
	label photo1_attractiveness='Attractiveness';
	label photo2_similarity='Similarity';
	label photo2_connectedness='Connectedness';
	label photo2_familiarity='Familiarity';
	label photo2_attractiveness='Attractiveness';
	label photo3_similarity='Similarity';
	label photo3_connectedness='Connectedness';
	label photo3_familiarity='Familiarity';
	label photo3_attractiveness='Attractiveness';
	label strangers_total='Ratings of Strangers Total:';
	label ratings_of_strangers_complete='Complete?';
	label enroll_subject_id='Subject ID:';
	label enroll_consent_date='Consent Date: [d0_enrollment_arm_1][consent...[consent_date2]';
	label enroll_date_screened='Date screened (today''s date):';
	label eligibility='Is the participant eligible or ineligible?';
	label enroll_ineligible_reasons___1='Ineligible reasons (Select all that apply) (choice=Did not consent)';
	label enroll_ineligible_reasons___2='Ineligible reasons (Select all that apply) (choice=Did not complete surveys)';
	label enroll_ineligible_reasons___3='Ineligible reasons (Select all that apply) (choice=Other)';
	label ineligible_reasons_other='If Other, please specify:';
	label enrollment_informati_v_4='Complete?';
	label instructions_email='Participant first name: [first_name] [firs...ons Email?';
	label instructions_email_date='What was the date that this email was sent? This is Day 0.';
	label scheduling_yn='ACTION ITEM: Did you create the participant...ta Collection?';
	label mphenomics_instructi_v_5='Complete?';
	label adherence='How many compassion training sessions did t...he last 7 days?';
	label adherence_check_complete='Complete?';
	label staff='Staff First Name:';
	label coaching_call_start='Start Time:';
	label coaching_call_answer_yn='Did the participant answer the phone?';
	label coaching_call_voicemail='Did you leave a voicemail? Hello! I...a few minutes.';
	label coaching_call_yn='Hi! Is this [d0_enrollment_arm_1][first_nam...he phone? ';
	label coaching_reschedule_date='No problem at all! When would be a good day...call you back? ';
	label coaching_reschedule_time='What time can we call you back at?';
	label coaching_reschedule1='ACTION ITEM: Did you schedule the phone cal...study calendar?';
	label coaching_reschedule2='ACTION ITEM: Did you schedule the phone cal...tlook calendar?';
	label coaching_call_rapport='Great! As a heads up, I''ll be taking notes...1][first_name]?';
	label coaching_call_scale='How is your experience with the compassi...very good?';
	label coaching_call_benefits___1='What are some of the benefits you''ve observ...ssion training? (choice=The app is easy to use)';
	label coaching_call_benefits___2='What are some of the benefits you''ve observ...ssion training? (choice=It helps me relax)';
	label coaching_call_benefits___3='What are some of the benefits you''ve observ...ssion training? (choice=I feel better)';
	label coaching_call_benefits___4='What are some of the benefits you''ve observ...ssion training? (choice=It just helps...nt explain)';
	label coaching_call_benefits___5='What are some of the benefits you''ve observ...ssion training? (choice=Other)';
	label benefits_other='If Other, please specify';
	label relax='It''s good to know that it helps you relax!...e training?  ';
	label feel='It''s nice to hear that it helps you feel be...ection, caring)';
	label coaching_call_obstacles___1='What are some things that are getting in th...other issues?) (choice=Trouble opening the app)';
	label coaching_call_obstacles___2='What are some things that are getting in th...other issues?) (choice=Trouble loggi...to the app)';
	label coaching_call_obstacles___3='What are some things that are getting in th...other issues?) (choice=App turning off by itself)';
	label coaching_call_obstacles___4='What are some things that are getting in th...other issues?) (choice=Forgetting to...t/Too busy)';
	label coaching_call_obstacles___5='What are some things that are getting in th...other issues?) (choice=Thinking its not helpful)';
	label coaching_call_obstacles___6='What are some things that are getting in th...other issues?) (choice=Making me anxious)';
	label coaching_call_obstacles___7='What are some things that are getting in th...other issues?) (choice=Thinking its boring)';
	label coaching_call_obstacles___8='What are some things that are getting in th...other issues?) (choice=Thinking its too long)';
	label coaching_call_obstacles___9='What are some things that are getting in th...other issues?) (choice=Not liking it...nt explain)';
	label coaching_call_obstacles___10='What are some things that are getting in th...other issues?) (choice=Other)';
	label coaching_call_problems___1='What are some problems that you experience...ssion training? (choice=Trouble opening the app)';
	label coaching_call_problems___2='What are some problems that you experience...ssion training? (choice=Trouble loggi...to the app)';
	label coaching_call_problems___3='What are some problems that you experience...ssion training? (choice=App turning off by itself)';
	label coaching_call_problems___4='What are some problems that you experience...ssion training? (choice=Forgetting to...t/Too busy)';
	label coaching_call_problems___5='What are some problems that you experience...ssion training? (choice=Thinking its not helpful)';
	label coaching_call_problems___6='What are some problems that you experience...ssion training? (choice=Making me anxious)';
	label coaching_call_problems___7='What are some problems that you experience...ssion training? (choice=Thinking its boring)';
	label coaching_call_problems___8='What are some problems that you experience...ssion training? (choice=Thinking its too long)';
	label coaching_call_problems___9='What are some problems that you experience...ssion training? (choice=Not liking it...nt explain)';
	label coaching_call_problems___10='What are some problems that you experience...ssion training? (choice=Other)';
	label problems_other='If Other, please specify:';
	label logging='Would it help if we went through the steps...ther right now?';
	label plan1___1='It makes sense that you forget/are too busy...ain tasks?  (choice=I dont know)';
	label plan1___2='It makes sense that you forget/are too busy...ain tasks?  (choice=Nothing)';
	label plan1___3='It makes sense that you forget/are too busy...ain tasks?  (choice=Write in plan...n calendar)';
	label plan1___4='It makes sense that you forget/are too busy...ain tasks?  (choice=Other)';
	label plan1_other='Please specify:';
	label plan2='What do you think about doing that to remin...sion trainings?';
	label plan3='What do you think about planning out 15 min...oogle calendar?';
	label plan4='Sounds like a plan! Please wait a minute wh...n training?';
	label nohelp='It can be hard to focus on the training bec...ff at home?  ';
	label will_focus='Just a follow up question for you, When you...ings at home.  ';
	label not_focus='It makes sense because there can be a lot o...e other people?';
	label call_end='This is the end of the call. Do you have an...1][first_name]!';
	label coaching_end='End Time:';
	label coaching_call_complete='Complete?';
	label adherence_email_yn='Email: [d0_enrollment_arm_2][email]  Day...Summary email?';
	label adherence_email_date='Date of Adherence Email Sent [MM-DD-YYYY]:';
	label adherence_email_complete='Complete?';
	label email_last_qs_yn='Email: [email]  Participant first name: [...onnaires Email?';
	label date_email_last_qs='What was the date that the email was sent?';
	label postfollowup_questio_v_6='Complete?';
	label ad_hoc_staff_name='Staff name:';
	label ad_hoc_contact_type='Type of Contact';
	label ad_hoc_contact_date='Date of Contact [MM-DD-YYYY]';
	label ad_hoc_contact_reason='Reason for Contact:';
	label other_reason='If Other, please specify:';
	label ad_hoc_contact_notes='Notes:';
	label ad_hoc_log_complete='Complete?';
	format redcap_event_name redcap_event_name_.;
	format redcap_repeat_instrument redcap_repeat_instrument_.;
	format intervention_status intervention_status_.;
	format reason_dc___1 reason_dc___1_.;
	format reason_dc___2 reason_dc___2_.;
	format reason_dc___3 reason_dc___3_.;
	format allocated_intervention allocated_intervention_.;
	format why_no_intervention___1 why_no_intervention___1_.;
	format why_no_intervention___2 why_no_intervention___2_.;
	format why_no_intervention___3 why_no_intervention___3_.;
	format why_no_intervention___4 why_no_intervention___4_.;
	format follow_up follow_up_.;
	format no_follow_up_reasons___1 no_follow_up_reasons___1_.;
	format no_follow_up_reasons___2 no_follow_up_reasons___2_.;
	format no_follow_up_reasons___3 no_follow_up_reasons___3_.;
	format information_form_complete information_form_complete_.;
	format consented1 consented1_.;
	format decline_reason1___1 decline_reason1___1_.;
	format decline_reason1___2 decline_reason1___2_.;
	format decline_reason1___3 decline_reason1___3_.;
	format decline_reason1___4 decline_reason1___4_.;
	format decline_reason1___5 decline_reason1___5_.;
	format decline_reason1___6 decline_reason1___6_.;
	format consent_addendum_coa_v_1 consent_addendum_coa_v_1_.;
	format consented2 consented2_.;
	format decline_reason2___1 decline_reason2___1_.;
	format decline_reason2___2 decline_reason2___2_.;
	format decline_reason2___3 decline_reason2___3_.;
	format decline_reason2___4 decline_reason2___4_.;
	format decline_reason2___5 decline_reason2___5_.;
	format decline_reason2___6 decline_reason2___6_.;
	format consent_addendum_ema_v_3 consent_addendum_ema_v_3_.;
	format sex sex_.;
	format race race_.;
	format ethnicity ethnicity_.;
	format marital_status marital_status_.;
	format education education_.;
	format employment_status employment_status_.;
	format occupation occupation_.;
	format unit unit_.;
	format shift___1 shift___1_.;
	format shift___2 shift___2_.;
	format shift___3 shift___3_.;
	format demographics_complete demographics_complete_.;
	format scbcs1 scbcs1_.;
	format scbcs2 scbcs2_.;
	format scbcs3 scbcs3_.;
	format scbcs4 scbcs4_.;
	format scbcs5 scbcs5_.;
	format scbcs_complete scbcs_complete_.;
	format mbi_ee_1 mbi_ee_1_.;
	format mbi_ee_2 mbi_ee_2_.;
	format mbi_ee_3 mbi_ee_3_.;
	format mbi_ee_4 mbi_ee_4_.;
	format mbi_ee_5 mbi_ee_5_.;
	format mbi_ee_6 mbi_ee_6_.;
	format mbi_ee_7 mbi_ee_7_.;
	format mbi_ee_8 mbi_ee_8_.;
	format mbi_ee_9 mbi_ee_9_.;
	format mbi_pa_1 mbi_pa_1_.;
	format mbi_pa_2 mbi_pa_2_.;
	format mbi_pa_3 mbi_pa_3_.;
	format mbi_pa_4 mbi_pa_4_.;
	format mbi_pa_5 mbi_pa_5_.;
	format mbi_pa_6 mbi_pa_6_.;
	format mbi_pa_7 mbi_pa_7_.;
	format mbi_pa_8 mbi_pa_8_.;
	format mbi_dep_1 mbi_dep_1_.;
	format mbi_dep_2 mbi_dep_2_.;
	format mbi_dep_3 mbi_dep_3_.;
	format mbi_dep_4 mbi_dep_4_.;
	format mbi_dep_5 mbi_dep_5_.;
	format mbi_complete mbi_complete_.;
	format panas_1 panas_1_.;
	format panas_2 panas_2_.;
	format panas_3 panas_3_.;
	format panas_4 panas_4_.;
	format panas_5 panas_5_.;
	format panas_6 panas_6_.;
	format panas_7 panas_7_.;
	format panas_8 panas_8_.;
	format panas_9 panas_9_.;
	format panas_10 panas_10_.;
	format panas_11 panas_11_.;
	format panas_12 panas_12_.;
	format panas_13 panas_13_.;
	format panas_14 panas_14_.;
	format panas_15 panas_15_.;
	format panas_16 panas_16_.;
	format panas_17 panas_17_.;
	format panas_18 panas_18_.;
	format panas_19 panas_19_.;
	format panas_20 panas_20_.;
	format panas_complete panas_complete_.;
	format self_focus1 self_focus1_.;
	format self_focus2 self_focus2_.;
	format self_focus3 self_focus3_.;
	format self_focus4 self_focus4_.;
	format self_focus5 self_focus5_.;
	format self_focus_complete self_focus_complete_.;
	format non_binary_pref non_binary_pref_.;
	format photo1_similarity photo1_similarity_.;
	format photo1_connectedness photo1_connectedness_.;
	format photo1_familiarity photo1_familiarity_.;
	format photo1_attractiveness photo1_attractiveness_.;
	format photo2_similarity photo2_similarity_.;
	format photo2_connectedness photo2_connectedness_.;
	format photo2_familiarity photo2_familiarity_.;
	format photo2_attractiveness photo2_attractiveness_.;
	format photo3_similarity photo3_similarity_.;
	format photo3_connectedness photo3_connectedness_.;
	format photo3_familiarity photo3_familiarity_.;
	format photo3_attractiveness photo3_attractiveness_.;
	format ratings_of_strangers_complete ratings_of_strangers_complete_.;
	format eligibility eligibility_.;
	format enroll_ineligible_reasons___1 enroll_ineligible_reasons___1_.;
	format enroll_ineligible_reasons___2 enroll_ineligible_reasons___2_.;
	format enroll_ineligible_reasons___3 enroll_ineligible_reasons___3_.;
	format enrollment_informati_v_4 enrollment_informati_v_4_.;
	format instructions_email instructions_email_.;
	format scheduling_yn scheduling_yn_.;
	format mphenomics_instructi_v_5 mphenomics_instructi_v_5_.;
	format adherence_check_complete adherence_check_complete_.;
	format coaching_call_answer_yn coaching_call_answer_yn_.;
	format coaching_call_voicemail coaching_call_voicemail_.;
	format coaching_call_yn coaching_call_yn_.;
	format coaching_reschedule1 coaching_reschedule1_.;
	format coaching_reschedule2 coaching_reschedule2_.;
	format coaching_call_scale coaching_call_scale_.;
	format coaching_call_benefits___1 coaching_call_benefits___1_.;
	format coaching_call_benefits___2 coaching_call_benefits___2_.;
	format coaching_call_benefits___3 coaching_call_benefits___3_.;
	format coaching_call_benefits___4 coaching_call_benefits___4_.;
	format coaching_call_benefits___5 coaching_call_benefits___5_.;
	format coaching_call_obstacles___1 coaching_call_obstacles___1_.;
	format coaching_call_obstacles___2 coaching_call_obstacles___2_.;
	format coaching_call_obstacles___3 coaching_call_obstacles___3_.;
	format coaching_call_obstacles___4 coaching_call_obstacles___4_.;
	format coaching_call_obstacles___5 coaching_call_obstacles___5_.;
	format coaching_call_obstacles___6 coaching_call_obstacles___6_.;
	format coaching_call_obstacles___7 coaching_call_obstacles___7_.;
	format coaching_call_obstacles___8 coaching_call_obstacles___8_.;
	format coaching_call_obstacles___9 coaching_call_obstacles___9_.;
	format coaching_call_obstacles___10 coaching_call_obstacles___10_.;
	format coaching_call_problems___1 coaching_call_problems___1_.;
	format coaching_call_problems___2 coaching_call_problems___2_.;
	format coaching_call_problems___3 coaching_call_problems___3_.;
	format coaching_call_problems___4 coaching_call_problems___4_.;
	format coaching_call_problems___5 coaching_call_problems___5_.;
	format coaching_call_problems___6 coaching_call_problems___6_.;
	format coaching_call_problems___7 coaching_call_problems___7_.;
	format coaching_call_problems___8 coaching_call_problems___8_.;
	format coaching_call_problems___9 coaching_call_problems___9_.;
	format coaching_call_problems___10 coaching_call_problems___10_.;
	format logging logging_.;
	format plan1___1 plan1___1_.;
	format plan1___2 plan1___2_.;
	format plan1___3 plan1___3_.;
	format plan1___4 plan1___4_.;
	format nohelp nohelp_.;
	format will_focus will_focus_.;
	format coaching_call_complete coaching_call_complete_.;
	format adherence_email_yn adherence_email_yn_.;
	format adherence_email_complete adherence_email_complete_.;
	format email_last_qs_yn email_last_qs_yn_.;
	format postfollowup_questio_v_6 postfollowup_questio_v_6_.;
	format ad_hoc_contact_type ad_hoc_contact_type_.;
	format ad_hoc_contact_reason ad_hoc_contact_reason_.;
	format ad_hoc_log_complete ad_hoc_log_complete_.;
run;

proc contents data=redcap;
proc print data=redcap;
run;
