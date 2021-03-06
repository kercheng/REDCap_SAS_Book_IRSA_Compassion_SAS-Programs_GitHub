/* Edit the following line to reflect the full path to your CSV file */
%let csv_file = '/folders/myfolders/REDCap_SAS_Book_IRSA/Compassion/Raw Data/PHASE2ProjectCompass_DATA_NOHDRS_2020-11-30_1545.csv';

OPTIONS nofmterr;

proc format;
	value $redcap_event_name_ d0_enrollment_arm_1='D0_Enrollment' d7_adherence_1_arm_1='D7_Adherence_1' 
		d14_adherence_2_arm_1='D14_Adherence_2' d21_adherence_3_arm_1='D21_Adherence_3' 
		d30_adherence_4_arm_1='D30_Adherence_4' d60_arm_1='D60';
	value $redcap_repeat_instrument_ ad_hoc_log='Ad Hoc Log';
	value information_form_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value answer_ 1='Yes' 0='No';
	value voicemail_ 1='Yes' 0='No';
	value time_yn_ 1='Yes' 0='No';
	value baseline_call_yn_ 1='Yes' 0='No';
	value reschedule_action1_ 1='Yes' 0='No';
	value reschedule_action2_ 1='Yes' 0='No';
	value baseline_email_yn_ 1='Yes' 0='No';
	value baseline_phone_call_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value english_yn_ 1='Yes' 0='No';
	value age_18_yn_ 1='Yes' 0='No';
	value hcp_yn_ 1='Yes' 0='No';
	value smartphone_yn_ 1='Yes' 0='No';
	value home_internet_yn_ 1='Yes' 0='No';
	value eligibility_screenin_v_1_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value consented_ 0='I do not want to participate' 1='I want to participate';
	value decline_reason___1_ 0='Unchecked' 1='Checked';
	value decline_reason___2_ 0='Unchecked' 1='Checked';
	value decline_reason___3_ 0='Unchecked' 1='Checked';
	value decline_reason___4_ 0='Unchecked' 1='Checked';
	value decline_reason___5_ 0='Unchecked' 1='Checked';
	value decline_reason___6_ 0='Unchecked' 1='Checked';
	value consent_form_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value eligibility_ 0='Ineligible' 1='Eligible';
	value enroll_ineligible_reasons___1_ 0='Unchecked' 1='Checked';
	value enroll_ineligible_reasons___2_ 0='Unchecked' 1='Checked';
	value enroll_ineligible_reasons___3_ 0='Unchecked' 1='Checked';
	value enroll_ineligible_reasons___4_ 0='Unchecked' 1='Checked';
	value enroll_ineligible_reasons___5_ 0='Unchecked' 1='Checked';
	value enrollment_status_ 1='Participant is not enrolled in the study: Interested and awaiting consent' 2='Participant is not enrolled in the study: No consent' 
		3='Participant is enrolled in the study: Informed consent given';
	value arm_ 1='Coaching Call' 2='Adherence Email';
	value enrollment_informati_v_2_ 0='Incomplete' 1='Unverified' 
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
	informat information_form_timestamp $500. ;
	informat information_form_complete best32. ;
	informat baseline_call_date yymmdd10. ;
	informat baseline_call_start time5. ;
	informat answer best32. ;
	informat voicemail best32. ;
	informat time_yn best32. ;
	informat baseline_call_yn best32. ;
	informat reschedule_date yymmdd10. ;
	informat reschedule_time $500. ;
	informat reschedule_action1 best32. ;
	informat reschedule_action2 best32. ;
	informat baseline_email_yn best32. ;
	informat schedule $5000. ;
	informat baseline_phone_call_complete best32. ;
	informat eligibility_screenin_v_0 $500. ;
	informat english_yn best32. ;
	informat age_18_yn best32. ;
	informat hcp_yn best32. ;
	informat smartphone_yn best32. ;
	informat home_internet_yn best32. ;
	informat eligibility_screenin_v_1 best32. ;
	informat consent_form_timestamp $500. ;
	informat consented best32. ;
	informat consent_date yymmdd10. ;
	informat decline_reason___1 best32. ;
	informat decline_reason___2 best32. ;
	informat decline_reason___3 best32. ;
	informat decline_reason___4 best32. ;
	informat decline_reason___5 best32. ;
	informat decline_reason___6 best32. ;
	informat decline_other $500. ;
	informat consent_form_complete best32. ;
	informat enroll_subject_id best32. ;
	informat enroll_consent_date yymmdd10. ;
	informat enroll_date_screened yymmdd10. ;
	informat eligibility best32. ;
	informat enroll_ineligible_reasons___1 best32. ;
	informat enroll_ineligible_reasons___2 best32. ;
	informat enroll_ineligible_reasons___3 best32. ;
	informat enroll_ineligible_reasons___4 best32. ;
	informat enroll_ineligible_reasons___5 best32. ;
	informat ineligible_reasons_other $500. ;
	informat enrollment_status best32. ;
	informat arm best32. ;
	informat enrollment_informati_v_2 best32. ;
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
	format information_form_timestamp $500. ;
	format information_form_complete best12. ;
	format baseline_call_date yymmdd10. ;
	format baseline_call_start time5. ;
	format answer best12. ;
	format voicemail best12. ;
	format time_yn best12. ;
	format baseline_call_yn best12. ;
	format reschedule_date yymmdd10. ;
	format reschedule_time $500. ;
	format reschedule_action1 best12. ;
	format reschedule_action2 best12. ;
	format baseline_email_yn best12. ;
	format schedule $5000. ;
	format baseline_phone_call_complete best12. ;
	format eligibility_screenin_v_0 $500. ;
	format english_yn best12. ;
	format age_18_yn best12. ;
	format hcp_yn best12. ;
	format smartphone_yn best12. ;
	format home_internet_yn best12. ;
	format eligibility_screenin_v_1 best12. ;
	format consent_form_timestamp $500. ;
	format consented best12. ;
	format consent_date yymmdd10. ;
	format decline_reason___1 best12. ;
	format decline_reason___2 best12. ;
	format decline_reason___3 best12. ;
	format decline_reason___4 best12. ;
	format decline_reason___5 best12. ;
	format decline_reason___6 best12. ;
	format decline_other $500. ;
	format consent_form_complete best12. ;
	format enroll_subject_id best12. ;
	format enroll_consent_date yymmdd10. ;
	format enroll_date_screened yymmdd10. ;
	format eligibility best12. ;
	format enroll_ineligible_reasons___1 best12. ;
	format enroll_ineligible_reasons___2 best12. ;
	format enroll_ineligible_reasons___3 best12. ;
	format enroll_ineligible_reasons___4 best12. ;
	format enroll_ineligible_reasons___5 best12. ;
	format ineligible_reasons_other $500. ;
	format enrollment_status best12. ;
	format arm best12. ;
	format enrollment_informati_v_2 best12. ;
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
	information_form_timestamp $
	information_form_complete
	baseline_call_date
	baseline_call_start
	answer
	voicemail
	time_yn
	baseline_call_yn
	reschedule_date
	reschedule_time $
	reschedule_action1
	reschedule_action2
	baseline_email_yn
	schedule $
	baseline_phone_call_complete
	eligibility_screenin_v_0 $
	english_yn
	age_18_yn
	hcp_yn
	smartphone_yn
	home_internet_yn
	eligibility_screenin_v_1
	consent_form_timestamp $
	consented
	consent_date
	decline_reason___1
	decline_reason___2
	decline_reason___3
	decline_reason___4
	decline_reason___5
	decline_reason___6
	decline_other $
	consent_form_complete
	enroll_subject_id
	enroll_consent_date
	enroll_date_screened
	eligibility
	enroll_ineligible_reasons___1
	enroll_ineligible_reasons___2
	enroll_ineligible_reasons___3
	enroll_ineligible_reasons___4
	enroll_ineligible_reasons___5
	ineligible_reasons_other $
	enrollment_status
	arm
	enrollment_informati_v_2
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
	label information_form_timestamp='Survey Timestamp';
	label information_form_complete='Complete?';
	label baseline_call_date='Today''s Date:';
	label baseline_call_start='Start Time:';
	label answer='[first_name]''s phone number: [phone_number]  Did [first_name] answer the phone?';
	label voicemail='READ: -Hi [first_name], this is [staff_baseline] from University of Pennsylvania -Reaching out about the Compassion Project research study that you expressed interest in -We are excited that you are interested! -I wanted to discuss the study with you for around 10 minutes and have you do a few tasks on a computer  -If you are interested in participating, please call us back at 215-746-7465 Did you leave a voicemail?';
	label time_yn='READ: -Hi [first_name], this is [staff_baseline] from University of Pennsylvania -how are you? -Reaching out about the Compassion Project research study that you expressed interest in -We are excited that you are interested and we really appreciate that you emailed us to participate! Right now, I want to talk to you for a few minutes about the study, determine your eligibility, and have you do a few tasks on a computer  -Do you have time to talk for 20 minutes? ';
	label baseline_call_yn='READ: Great! I''ll explain the whole study now, but please let me know if you have any questions: Purpose: test if a compassion training session, which was developed at Stanford University, is helpful when used on a smartphone. This training is a 13 minute audio file designed to strengthen your compassion for yourself and then extend that compassion to other people. It trains people to be attentive to the compassion that they feel for themselves and the compassion that they feel for other people. Responsibilities: complete the compassion training session three times a week for two weeks. we''ll email you later with instructions to download the app. You can do the compassion training more than three times a week if you''d like, but we ask that you do it at least three times a week. After you finish the two weeks, we''ll ask you to delete the app. Time and location: anytime and anywhere; it is up to you to decide when you''d like to do the compassion training Does everything make sense so far? Participation is voluntary: you do not have to be a part of the study if you do not want to Surveys: complete before the training, at the end of the training, and 2 weeks after the training. 5 minutes to complete all of the surveys. The baseline surveys take a few more minutes because we ask about demographic information before you start the compassion training. Timeline: After you complete the two-week intervention, we''ll email you to complete the surveys again and then to delete the app. There is a 2 week gap between the end of the intervention and when we email you to complete follow-up surveys. During those 2 weeks, there is nothing for you to do in regards to the compassion training. No compensation: you do not get paid to participate → HOWEVER, you get access to the compassion training, which is considered treatment, for free Questions or concerns? Would you like to participate in the study?';
	label reschedule_date='No problem at all! When would be a good day to call you back? ';
	label reschedule_time='What time can we call you back at?  Thank you so much! We have you in our schedule. Have a good day!';
	label reschedule_action1='ACTION ITEM: Did you schedule the phone call in REDCap study calendar?';
	label reschedule_action2='ACTION ITEM: Did you schedule the phone call in Outlook calendar?';
	label baseline_email_yn='ACTION ITEM: Did you send the participant the Baseline Email (go to Compassion Emails google doc)?';
	label schedule='Let''s schedule this coaching call right now! I''ll open up my schedule. [Open your Outlook calendar].  This call should be 8 days from now. What time on [day], [date] works for you?   If that day isn''t good, what time the next day on [day], [date] works for you?  ****If you''re not available, schedule with whatever time works for the participant for CJ to conduct the call.****';
	label baseline_phone_call_complete='Complete?';
	label eligibility_screenin_v_0='Survey Timestamp';
	label english_yn='Are you able to speak English?';
	label age_18_yn='Are you 18 years or older?';
	label hcp_yn='Are you a healthcare professional working at a hospital affiliated with the University of Pennsylvania?';
	label smartphone_yn='Do you have a smartphone?';
	label home_internet_yn='Do you have internet from home?';
	label eligibility_screenin_v_1='Complete?';
	label consent_form_timestamp='Survey Timestamp';
	label consented='Would you like to participate in this research study?';
	label consent_date='Today''s Date (mm/dd/yyyy)';
	label decline_reason___1='We hope to improve people''s health with our research. We are wondering why you decided not to participate in our study. Please tell us why you chose not to participate (choose all that apply). (choice=I do not understand the study)';
	label decline_reason___2='We hope to improve people''s health with our research. We are wondering why you decided not to participate in our study. Please tell us why you chose not to participate (choose all that apply). (choice=I am concerned about the risks of the study)';
	label decline_reason___3='We hope to improve people''s health with our research. We are wondering why you decided not to participate in our study. Please tell us why you chose not to participate (choose all that apply). (choice=I do not want to provide my social security number or other financial information)';
	label decline_reason___4='We hope to improve people''s health with our research. We are wondering why you decided not to participate in our study. Please tell us why you chose not to participate (choose all that apply). (choice=I do not want to use the website)';
	label decline_reason___5='We hope to improve people''s health with our research. We are wondering why you decided not to participate in our study. Please tell us why you chose not to participate (choose all that apply). (choice=I am not ready to change my behavior)';
	label decline_reason___6='We hope to improve people''s health with our research. We are wondering why you decided not to participate in our study. Please tell us why you chose not to participate (choose all that apply). (choice=Other)';
	label decline_other='If other, Please explain:';
	label consent_form_complete='Complete?';
	label enroll_subject_id='Subject ID:';
	label enroll_consent_date='Consent Date: [consent_date]';
	label enroll_date_screened='Date screened (today''s date):';
	label eligibility='Is the participant eligible or ineligible?';
	label enroll_ineligible_reasons___1='Ineligible reasons (Select all that apply) (choice=Not a healthcare professional working at HUP)';
	label enroll_ineligible_reasons___2='Ineligible reasons (Select all that apply) (choice=Not 18)';
	label enroll_ineligible_reasons___3='Ineligible reasons (Select all that apply) (choice=Did not complete surveys)';
	label enroll_ineligible_reasons___4='Ineligible reasons (Select all that apply) (choice=No longer interested)';
	label enroll_ineligible_reasons___5='Ineligible reasons (Select all that apply) (choice=Other)';
	label ineligible_reasons_other='If Other, please specify:';
	label enrollment_status='Enrollment status:';
	label arm='Intervention Arm:';
	label enrollment_informati_v_2='Complete?';
	label ad_hoc_staff_name='Staff name:';
	label ad_hoc_contact_type='Type of Contact';
	label ad_hoc_contact_date='Date of Contact [MM-DD-YYYY]';
	label ad_hoc_contact_reason='Reason for Contact:';
	label other_reason='If Other, please specify:';
	label ad_hoc_contact_notes='Notes:';
	label ad_hoc_log_complete='Complete?';
	format redcap_event_name redcap_event_name_.;
	format redcap_repeat_instrument redcap_repeat_instrument_.;
	format information_form_complete information_form_complete_.;
	format answer answer_.;
	format voicemail voicemail_.;
	format time_yn time_yn_.;
	format baseline_call_yn baseline_call_yn_.;
	format reschedule_action1 reschedule_action1_.;
	format reschedule_action2 reschedule_action2_.;
	format baseline_email_yn baseline_email_yn_.;
	format baseline_phone_call_complete baseline_phone_call_complete_.;
	format english_yn english_yn_.;
	format age_18_yn age_18_yn_.;
	format hcp_yn hcp_yn_.;
	format smartphone_yn smartphone_yn_.;
	format home_internet_yn home_internet_yn_.;
	format eligibility_screenin_v_1 eligibility_screenin_v_1_.;
	format consented consented_.;
	format decline_reason___1 decline_reason___1_.;
	format decline_reason___2 decline_reason___2_.;
	format decline_reason___3 decline_reason___3_.;
	format decline_reason___4 decline_reason___4_.;
	format decline_reason___5 decline_reason___5_.;
	format decline_reason___6 decline_reason___6_.;
	format consent_form_complete consent_form_complete_.;
	format eligibility eligibility_.;
	format enroll_ineligible_reasons___1 enroll_ineligible_reasons___1_.;
	format enroll_ineligible_reasons___2 enroll_ineligible_reasons___2_.;
	format enroll_ineligible_reasons___3 enroll_ineligible_reasons___3_.;
	format enroll_ineligible_reasons___4 enroll_ineligible_reasons___4_.;
	format enroll_ineligible_reasons___5 enroll_ineligible_reasons___5_.;
	format enrollment_status enrollment_status_.;
	format arm arm_.;
	format enrollment_informati_v_2 enrollment_informati_v_2_.;
	format ad_hoc_contact_type ad_hoc_contact_type_.;
	format ad_hoc_contact_reason ad_hoc_contact_reason_.;
	format ad_hoc_log_complete ad_hoc_log_complete_.;
run;

proc contents data=redcap;
run;

data irsa.main;
	set work.redcap;
run;
