*Cleaning main data set;
*Converting character variables to numeric variables;
Data work.redcap;
Retain record_id;
Set work.redcap;
record_id_cor=record_id*1;
Run;

*Exporting data contents for the main data set;
proc contents data=irsa.main out=irsa.variable;
run;
proc export data=irsa.variable
outfile=_dataout 
dbms=csv replace;
run;
%let _DATAOUT_MIME_TYPE=text/csv;
%let _DATAOUT_NAME=Variables.csv;