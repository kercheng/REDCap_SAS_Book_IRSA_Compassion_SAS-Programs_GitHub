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

/*Use proc contents to look at Type (Num or Char)*/
proc contents data=irsa.screening;
proc contents data=irsa.main;

/*Exporting variable names to excel file. 
Example using comp2.screening.*/
proc contents data=irsa.screening out=irsa.scr_var;
run;

proc export data=irsa.scr_var outfile=_dataout dbms=csv replace;
run;
%let _DATAOUT_MIME_TYPE=text/csv;
%let _DATAOUT_NAME=Variables.csv;