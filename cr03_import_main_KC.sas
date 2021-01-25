/* Edit the following line to reflect the full path to your CSV file */
%let csv_file = '/folders/myfolders/REDCap_SAS_Book_IRSA/Compassion/Raw Data/PHASE2ProjectCompass_DATA_NOHDRS_2021-01-25_0823.csv';

OPTIONS nofmterr;

proc format;
	value $redcap_event_name_ d0_enrollment_arm_1='D0_Enrollment (Arm 1: Active)' d7_adherence_1_arm_1='D7_Adherence_1 (Arm 1: Active)' 
		d14_adherence_2_arm_1='D14_Adherence_2 (Arm 1: Active)' d30_follow_up_arm_1='D30_Follow_up (Arm 1: Active)' 
		d0_enrollment_arm_2='D0_Enrollment (Arm 2: Control)' d7_adherence_1_arm_2='D7_Adherence_1 (Arm 2: Control)' 
		d14_adherence_2_arm_2='D14_Adherence_2 (Arm 2: Control)' d30_follow_up_arm_2='D30_Follow_up (Arm 2: Control)';
	value $redcap_repeat_instrument_ ad_hoc_log='Ad Hoc Log';
	value intervention_status_ 1='Enrolled' 2='Intervention' 
		3='Follow-up' 4='Completed' 
		5='Withdrew' 6='Lost to Follow-Up';
	value reason_dc___1_ 0='Unchecked' 1='Checked';
	value reason_dc___2_ 0='Unchecked' 1='Checked';
	value reason_dc___3_ 0='Unchecked' 1='Checked';
	value allocated_intervention_ 0='Did NOT receive allocated intervention' 1='Received allocated intervention';
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
	value demographics_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value eligibility_ 0='Ineligible' 1='Eligible';
	value enroll_ineligible_reasons___1_ 0='Unchecked' 1='Checked';
	value enroll_ineligible_reasons___2_ 0='Unchecked' 1='Checked';
	value enroll_ineligible_reasons___3_ 0='Unchecked' 1='Checked';
	value enrollment_informati_v_0_ 0='Incomplete' 1='Unverified' 
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
	value difficulty_falling_asleep_ 0='None' 1='Mild' 
		2='Moderate' 3='Severe' 
		4='Very severe';
	value difficulty_staying_asleep_ 0='None' 1='Mild' 
		2='Moderate' 3='Severe' 
		4='Very severe';
	value waking_early_ 0='None' 1='Mild' 
		2='Moderate' 3='Severe' 
		4='Very severe';
	value isi_satisfied_sleep_ 0='Very Satisfied' 1='Satisfied' 
		2='Moderately Satisfied' 3='Dissatisfied' 
		4='Very Dissatisfied';
	value isi_noticeable_prob_ 0='Not At All Noticeable' 1='A Little' 
		2='Somewhat' 3='Much' 
		4='Very Much Noticeable';
	value isi_worried_prob_ 0='Not at all worried' 1='A little' 
		2='Somewhat' 3='Much' 
		4='Very much worried';
	value isi_sleep_interfere_ 0='Not at all Interfering' 1='A Little' 
		2='Somewhat' 3='Much' 
		4='Very Much Interfering';
	value insomnia_severity_in_v_1_ 0='Incomplete' 1='Unverified' 
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
	value postfollowup_questio_v_2_ 0='Incomplete' 1='Unverified' 
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
	informat demographics_timestamp $500. ;
	informat age best32. ;
	informat sex best32. ;
	informat gender best32. ;
	informat race best32. ;
	informat ethnicity best32. ;
	informat marital_status best32. ;
	informat education best32. ;
	informat household_income best32. ;
	informat demographics_complete best32. ;
	informat enroll_subject_id best32. ;
	informat enroll_consent_date yymmdd10. ;
	informat enroll_date_screened yymmdd10. ;
	informat eligibility best32. ;
	informat enroll_ineligible_reasons___1 best32. ;
	informat enroll_ineligible_reasons___2 best32. ;
	informat enroll_ineligible_reasons___3 best32. ;
	informat ineligible_reasons_other $500. ;
	informat enrollment_informati_v_0 best32. ;
	informat scbcs_timestamp $500. ;
	informat scbcs1 best32. ;
	informat scbcs2 best32. ;
	informat scbcs3 best32. ;
	informat scbcs4 best32. ;
	informat scbcs5 best32. ;
	informat total_scbcs best32. ;
	informat scbcs_complete best32. ;
	informat difficulty_falling_asleep best32. ;
	informat difficulty_staying_asleep best32. ;
	informat waking_early best32. ;
	informat isi_matrix_1_score best32. ;
	informat isi_satisfied_sleep best32. ;
	informat isi_noticeable_prob best32. ;
	informat isi_worried_prob best32. ;
	informat isi_sleep_interfere best32. ;
	informat isi_total_score best32. ;
	informat insomnia_severity_in_v_1 best32. ;
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
	informat postfollowup_questio_v_2 best32. ;
	informat ad_hoc_staff_name $500. ;
	informat ad_hoc_contact_type best32. ;
	informat ad_hoc_contact_date yymmdd10. ;
	informat ad_hoc_contact_reason best32. ;
	informat other_reason $500. ;
	informat ad_hoc_contact_notes $5000. ;
	informat ad_hoc_log_complete best32. ;

	format record_id $500. ;
	format redcap_event_name $500. ;
	format redcap_repeat_instrument $500. ;
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
	format demographics_timestamp $500. ;
	format age best12. ;
	format sex best12. ;
	format gender best12. ;
	format race best12. ;
	format ethnicity best12. ;
	format marital_status best12. ;
	format education best12. ;
	format household_income best12. ;
	format demographics_complete best12. ;
	format enroll_subject_id best12. ;
	format enroll_consent_date yymmdd10. ;
	format enroll_date_screened yymmdd10. ;
	format eligibility best12. ;
	format enroll_ineligible_reasons___1 best12. ;
	format enroll_ineligible_reasons___2 best12. ;
	format enroll_ineligible_reasons___3 best12. ;
	format ineligible_reasons_other $500. ;
	format enrollment_informati_v_0 best12. ;
	format scbcs_timestamp $500. ;
	format scbcs1 best12. ;
	format scbcs2 best12. ;
	format scbcs3 best12. ;
	format scbcs4 best12. ;
	format scbcs5 best12. ;
	format total_scbcs best12. ;
	format scbcs_complete best12. ;
	format difficulty_falling_asleep best12. ;
	format difficulty_staying_asleep best12. ;
	format waking_early best12. ;
	format isi_matrix_1_score best12. ;
	format isi_satisfied_sleep best12. ;
	format isi_noticeable_prob best12. ;
	format isi_worried_prob best12. ;
	format isi_sleep_interfere best12. ;
	format isi_total_score best12. ;
	format insomnia_severity_in_v_1 best12. ;
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
	format postfollowup_questio_v_2 best12. ;
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
	demographics_timestamp $
	age
	sex
	gender
	race
	ethnicity
	marital_status
	education
	household_income
	demographics_complete
	enroll_subject_id
	enroll_consent_date
	enroll_date_screened
	eligibility
	enroll_ineligible_reasons___1
	enroll_ineligible_reasons___2
	enroll_ineligible_reasons___3
	ineligible_reasons_other $
	enrollment_informati_v_0
	scbcs_timestamp $
	scbcs1
	scbcs2
	scbcs3
	scbcs4
	scbcs5
	total_scbcs
	scbcs_complete
	difficulty_falling_asleep
	difficulty_staying_asleep
	waking_early
	isi_matrix_1_score
	isi_satisfied_sleep
	isi_noticeable_prob
	isi_worried_prob
	isi_sleep_interfere
	isi_total_score
	insomnia_severity_in_v_1
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
	postfollowup_questio_v_2
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
	label intervention_status='What is the participant''s status in the study?';
	label reason_dc___1='Reason for discontinued intervention (choice=Too busy to do intervention)';
	label reason_dc___2='Reason for discontinued intervention (choice=Intervention isnt helpful)';
	label reason_dc___3='Reason for discontinued intervention (choice=Other)';
	label discontinued_other='If Other, please specify:';
	label allocated_intervention='Intervention:';
	label why_no_intervention___1='Why did the participant not receive the allocated intervention? (choice=Did not fill out questionnaires)';
	label why_no_intervention___2='Why did the participant not receive the allocated intervention? (choice=Did not answer emails)';
	label why_no_intervention___3='Why did the participant not receive the allocated intervention? (choice=Did not complete any compassion training sessions)';
	label why_no_intervention___4='Why did the participant not receive the allocated intervention? (choice=Other)';
	label no_intervention_other='If Other, please specify:';
	label follow_up='Follow-Up:';
	label no_follow_up_reasons___1='Reason for not completing follow-up (choice=Too busy to complete questionnaires)';
	label no_follow_up_reasons___2='Reason for not completing follow-up (choice=Not replying to research study communication)';
	label no_follow_up_reasons___3='Reason for not completing follow-up (choice=Other)';
	label no_follow_up_other='If Other, please specify';
	label information_form_complete='Complete?';
	label demographics_timestamp='Survey Timestamp';
	label age='What is your age?';
	label sex='What is your sex (assigned at birth)?';
	label gender='What is your gender?';
	label race='What is your race?';
	label ethnicity='What is your ethnicity?';
	label marital_status='What is your marital status?';
	label education='What is your highest level of education attained?';
	label household_income='Current household income level';
	label demographics_complete='Complete?';
	label enroll_subject_id='Subject ID:';
	label enroll_consent_date='Consent Date: [d0_enrollment_arm_1][consent_date1] [d0_enrollment_arm_2][consent_date2]';
	label enroll_date_screened='Date screened (today''s date):';
	label eligibility='Is the participant eligible or ineligible?';
	label enroll_ineligible_reasons___1='Ineligible reasons (Select all that apply) (choice=Did not consent)';
	label enroll_ineligible_reasons___2='Ineligible reasons (Select all that apply) (choice=Did not complete surveys)';
	label enroll_ineligible_reasons___3='Ineligible reasons (Select all that apply) (choice=Other)';
	label ineligible_reasons_other='If Other, please specify:';
	label enrollment_informati_v_0='Complete?';
	label scbcs_timestamp='Survey Timestamp';
	label scbcs1='When I hear about someone (for example, a stranger) going through a difficult time, I feel a great deal of compassion for him or her.';
	label scbcs2='I tend to feel compassion for people, even though I do not know them.';
	label scbcs3='One of the activities that provide me with the most meaning to my life is helping others in the world when they need help.';
	label scbcs4='I would rather engage in actions that help others, even though they are strangers, than engage in actions that would help me.';
	label scbcs5='I often have tender feelings toward people (for example, strangers) when they seem to be in need.';
	label total_scbcs='Total SCBCS score:';
	label scbcs_complete='Complete?';
	label difficulty_falling_asleep='Difficulty falling asleep:';
	label difficulty_staying_asleep='Difficulty staying asleep:';
	label waking_early='Problem waking up too early:';
	label isi_matrix_1_score='Matrix 1 total score:';
	label isi_satisfied_sleep='How SATISFIED/DISSATISFIED are you with your current sleep pattern?';
	label isi_noticeable_prob='How NOTICEABLE to others do you think your sleep problem is in terms of impairing the quality of your life?';
	label isi_worried_prob='How WORRIED/DISTRESSED are you about your current sleep problem?';
	label isi_sleep_interfere='To what extent do you consider your sleep problem to INTERFERE with your daily functioning (e.g. daytime fatigue, ability to function at work/daily chores, concentration, memory, mood, etc.) CURRENTLY?';
	label isi_total_score='Total Score';
	label insomnia_severity_in_v_1='Complete?';
	label staff='Staff First Name:';
	label coaching_call_start='Start Time:';
	label coaching_call_answer_yn='Did the participant answer the phone?';
	label coaching_call_voicemail='Did you leave a voicemail? Hello! Is this [d0_enrollment_arm_1][first_name]? This is [d7_adherence_1_arm_1][staff] from the University of Pennsylvania, calling in regards to the Compassion Project research study. I am calling to have our coaching call. Please call us back. Please call us back at 215-746-7465 to discuss this for a few minutes.';
	label coaching_call_yn='Hi! Is this [d0_enrollment_arm_1][first_name]?   This is [d7_adherence_1_arm_1][staff] from the University of Pennsylvania calling about the Compassion research study. This is for our scheduled coaching call. Do you have a few minutes to talk on the phone? ';
	label coaching_reschedule_date='No problem at all! When would be a good day to call you back? ';
	label coaching_reschedule_time='What time can we call you back at?';
	label coaching_reschedule1='ACTION ITEM: Did you schedule the phone call in REDCap study calendar?';
	label coaching_reschedule2='ACTION ITEM: Did you schedule the phone call in Outlook calendar?';
	label coaching_call_rapport='Great! As a heads up, I''ll be taking notes while we talk on the phone, so if I''m taking pauses, it''s because I''m updating our records.   First, I wanted to check in to see how you are doing. How is work? How are you feeling, [d0_enrollment_arm_1][first_name]?';
	label coaching_call_scale='How is your experience with the compassion training going on a scale of 1-10 with 1 being very bad and 10 being very good?';
	label coaching_call_benefits___1='What are some of the benefits you''ve observed from the compassion training? (choice=The app is easy to use)';
	label coaching_call_benefits___2='What are some of the benefits you''ve observed from the compassion training? (choice=It helps me relax)';
	label coaching_call_benefits___3='What are some of the benefits you''ve observed from the compassion training? (choice=I feel better)';
	label coaching_call_benefits___4='What are some of the benefits you''ve observed from the compassion training? (choice=It just helps, I cant explain)';
	label coaching_call_benefits___5='What are some of the benefits you''ve observed from the compassion training? (choice=Other)';
	label benefits_other='If Other, please specify';
	label relax='It''s good to know that it helps you relax! Can you tell me more about how it does that for you?  How do you feel during and after the training?  ';
	label feel='It''s nice to hear that it helps you feel better! Can you tell me how the training does that for you?  What are some emotions that come up while you do the compassion training and after you complete it? (Examples: empowered, happy, appreciation, energetic, positive, relieved, comforted, connection, caring)';
	label coaching_call_obstacles___1='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Trouble opening the app)';
	label coaching_call_obstacles___2='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Trouble logging into the app)';
	label coaching_call_obstacles___3='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=App turning off by itself)';
	label coaching_call_obstacles___4='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Forgetting to do it/Too busy)';
	label coaching_call_obstacles___5='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Thinking its not helpful)';
	label coaching_call_obstacles___6='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Making me anxious)';
	label coaching_call_obstacles___7='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Thinking its boring)';
	label coaching_call_obstacles___8='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Thinking its too long)';
	label coaching_call_obstacles___9='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Not liking it - cant explain)';
	label coaching_call_obstacles___10='What are some things that are getting in the way of you completing the compassion training? (e.g., are you experiencing tech issues, scheduling issues, other issues?) (choice=Other)';
	label coaching_call_problems___1='What are some problems that you experience with the compassion training? (choice=Trouble opening the app)';
	label coaching_call_problems___2='What are some problems that you experience with the compassion training? (choice=Trouble logging into the app)';
	label coaching_call_problems___3='What are some problems that you experience with the compassion training? (choice=App turning off by itself)';
	label coaching_call_problems___4='What are some problems that you experience with the compassion training? (choice=Forgetting to do it/Too busy)';
	label coaching_call_problems___5='What are some problems that you experience with the compassion training? (choice=Thinking its not helpful)';
	label coaching_call_problems___6='What are some problems that you experience with the compassion training? (choice=Making me anxious)';
	label coaching_call_problems___7='What are some problems that you experience with the compassion training? (choice=Thinking its boring)';
	label coaching_call_problems___8='What are some problems that you experience with the compassion training? (choice=Thinking its too long)';
	label coaching_call_problems___9='What are some problems that you experience with the compassion training? (choice=Not liking it - cant explain)';
	label coaching_call_problems___10='What are some problems that you experience with the compassion training? (choice=Other)';
	label problems_other='If Other, please specify:';
	label logging='Would it help if we went through the steps of opening the app and logging into mPhenomic together right now?';
	label plan1___1='It makes sense that you forget/are too busy to do the training because you have a lot going on with work and things at home. It may be helpful for us to come up with some plans to help with that. How do you usually remind yourself to complete certain tasks?  (choice=I dont know)';
	label plan1___2='It makes sense that you forget/are too busy to do the training because you have a lot going on with work and things at home. It may be helpful for us to come up with some plans to help with that. How do you usually remind yourself to complete certain tasks?  (choice=Nothing)';
	label plan1___3='It makes sense that you forget/are too busy to do the training because you have a lot going on with work and things at home. It may be helpful for us to come up with some plans to help with that. How do you usually remind yourself to complete certain tasks?  (choice=Write in planner/schedule in calendar)';
	label plan1___4='It makes sense that you forget/are too busy to do the training because you have a lot going on with work and things at home. It may be helpful for us to come up with some plans to help with that. How do you usually remind yourself to complete certain tasks?  (choice=Other)';
	label plan1_other='Please specify:';
	label plan2='What do you think about doing that to remind yourself to complete the compassion trainings?';
	label plan3='What do you think about planning out 15 minutes to complete the compassion training and writing it in your planner or google calendar?';
	label plan4='Sounds like a plan! Please wait a minute while I just write this down.  NOTES: **DO NOT ASK PARTICIPANT THIS QUESTION** What will the participant do to remind them to complete the compassion training?';
	label nohelp='It can be hard to focus on the training because you may have a lot going on.   Are you able to concentrate on the training, or does your attention wander off to other things like work and stuff at home?  ';
	label will_focus='Just a follow up question for you, When you do the training sessions this upcoming week, do you think you will be able to focus on the training, or do you anticipate your attention wandering off to other things like work and stuff at home?  It can be hard to focus on the training because you may have a lot going on. It makes sense because there can be a lot of pressure for you to work a ton and still care for things at home.  ';
	label not_focus='It makes sense because there can be a lot of pressure for you to work a ton and still care for things at home.   What do you think about having some time for yourself - even if it''s just for a few minutes? What do you think about prioritizing yourself and giving yourself the care that you give other people?';
	label call_end='This is the end of the call. Do you have any questions for me? I just want to remind you to try to complete at least 3 training sessions in this upcoming week. After 7 days, you''ll be done with the compassion training, so we''ll email you some surveys to complete afterwards. Thank you so much for talking with me on the phone. Have a great day [d0_enrollment_arm_1][first_name]!';
	label coaching_end='End Time:';
	label coaching_call_complete='Complete?';
	label adherence_email_yn='Email: [d0_enrollment_arm_2][email]  Day 0: [d0_enrollment_arm_2][instructions_email_date]  Participant first name: [d0_enrollment_arm_2][first_name] Number of completed guided compassion training sessions: [d0_enrollment_arm_2][adherence]  Was participant sent an Adherence Summary email?';
	label adherence_email_date='Date of Adherence Email Sent [MM-DD-YYYY]:';
	label adherence_email_complete='Complete?';
	label email_last_qs_yn='Email: [email]  Participant first name: [first_name]  Was participant sent Post-Follow-Up Questionnaires Email?';
	label date_email_last_qs='What was the date that the email was sent?';
	label postfollowup_questio_v_2='Complete?';
	label ad_hoc_staff_name='Staff Name';
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
	format sex sex_.;
	format gender gender_.;
	format race race_.;
	format ethnicity ethnicity_.;
	format marital_status marital_status_.;
	format education education_.;
	format household_income household_income_.;
	format demographics_complete demographics_complete_.;
	format eligibility eligibility_.;
	format enroll_ineligible_reasons___1 enroll_ineligible_reasons___1_.;
	format enroll_ineligible_reasons___2 enroll_ineligible_reasons___2_.;
	format enroll_ineligible_reasons___3 enroll_ineligible_reasons___3_.;
	format enrollment_informati_v_0 enrollment_informati_v_0_.;
	format scbcs1 scbcs1_.;
	format scbcs2 scbcs2_.;
	format scbcs3 scbcs3_.;
	format scbcs4 scbcs4_.;
	format scbcs5 scbcs5_.;
	format scbcs_complete scbcs_complete_.;
	format difficulty_falling_asleep difficulty_falling_asleep_.;
	format difficulty_staying_asleep difficulty_staying_asleep_.;
	format waking_early waking_early_.;
	format isi_satisfied_sleep isi_satisfied_sleep_.;
	format isi_noticeable_prob isi_noticeable_prob_.;
	format isi_worried_prob isi_worried_prob_.;
	format isi_sleep_interfere isi_sleep_interfere_.;
	format insomnia_severity_in_v_1 insomnia_severity_in_v_1_.;
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
	format postfollowup_questio_v_2 postfollowup_questio_v_2_.;
	format ad_hoc_contact_type ad_hoc_contact_type_.;
	format ad_hoc_contact_reason ad_hoc_contact_reason_.;
	format ad_hoc_log_complete ad_hoc_log_complete_.;
run;

proc contents data=redcap;
proc print data=redcap;
run;

data irsa.main; 
	set work.redcap;
run;