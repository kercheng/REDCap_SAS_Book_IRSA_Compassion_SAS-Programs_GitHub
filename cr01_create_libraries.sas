/*Checklist:
Open GitHub repository (REDCap_SAS_Book_IRSA_Compassion_SAS-Programs_GitHub) and branch.
Open virtual machine. 
Open SAS Studio.
Update raw data.
Run cr00, cr01, etc.*/

/*Create SAS libraries for SAS Studio
Highlight code-chunk (lines 3-5) and run.*/
libname comp2 "/folders/myfolders/REDCap_SAS_Book_IRSA/Compassion/SAS Data";
options fmtsearch=(comp2);
run;

*Create SAS libraries (SAS Desktop)
Do NOT run for SAS Studio;
libname comp2 "&path";
options fmtsearch=(comp2);
run;
