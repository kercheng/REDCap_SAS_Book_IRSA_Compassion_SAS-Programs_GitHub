/*Data Cleanup

Familiarize yourself with the dataset before data cleanup.
-Look at REDCap Codebook or data dictionary.
-Look at REDCap Designer/data collection instruments & surveys.
-Create a dummy record. 

Identify key variables
-Look at REDCap Codebook or data dictionary.
-Think about your key outcomes (primary vs. secondary).

Document your key variables; create an analysis plan
https://docs.google.com/spreadsheets/d/1h71LetCQCpLP0ndiau-j1Med5X_oigXC7nmwKfFZiBU/edit#gid=1278138539
*/

/*Convert variable values from character to numeric or from numeric to character
https://support.sas.com/kb/24/590.html*/

data irsa.main_clean;
	*retain record id;
	set irsa.main;
	*record_id_corr = input(record_id, informat.);
	record_id_corr = record_id*1;
run;

