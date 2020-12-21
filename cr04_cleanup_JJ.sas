*cleaning up Screening dataset;
*converting string vars to numeric vars;
Data IRSA.SCREENING;
Retain dyad_id;
Set IRSA.SCREENING;
dyad_id_cor=dyad_id*1;
Run;
*exporting data contents for screening;
proc contents 
data=IRSA.screening out=IRSA.variable;
run;

proc export 
data=IRSA.screening 
outfile=_dataout 
dbms=csv replace;
run; 
%let _DATAOUT_MIME_TYPE=text/csv; 
%let _DATAOUT_NAME=Variables.csv;