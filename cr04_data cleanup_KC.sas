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

proc print data=irsa.screening;
proc print data=irsa.main;

proc sort data=irsa.screening; 
	by record_id; 
run; 

proc sort data=irsa.main; 
	by record_id;
run; 

data irsa.merge; 
	merge irsa.screening irsa.main; 
	by record_id;
run; 

proc print data=irsa.merge;

/*Use proc contents to look at Type (Num or Char)*/
proc contents data=irsa.screening;
proc contents data=irsa.main;

  
DATA temp;
	MERGE irsa.screening(IN=in_screening) irsa.main(IN=in_main);
	BY record_id;
 
/* Creating new variables using indicator variables */
 	screening = in_screening; 
	main = in_main;

PROC PRINT DATA=temp; 
RUN;


DATA irsa.merge_inner_join;
	MERGE irsa.screening(IN=in_screening) irsa.main(IN=in_main);
	BY record_id;
	IF in_screening = 1 & in_main = 1;
RUN;


PROC PRINT DATA=irsa.merge_inner_join; 
RUN;

/*Exporting variable names to excel file. 
Example using comp2.screening.*/
proc contents data=irsa.screening out=irsa.scr_var;
run;

proc export data=irsa.scr_var outfile=_dataout dbms=csv replace;
run;
%let _DATAOUT_MIME_TYPE=text/csv;
%let _DATAOUT_NAME=Variables.csv;