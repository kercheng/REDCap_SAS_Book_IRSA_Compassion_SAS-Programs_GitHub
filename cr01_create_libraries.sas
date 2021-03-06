/*Checklist:
Open GitHub repository (REDCap_SAS_Book_IRSA_Compassion_SAS-Programs_GitHub) and master branch.
Open virtual machine. 
Open SAS Studio.
Download raw data from Box: https://upenn.box.com/s/rtjydivi6gn9ymdzwqig4ygx102djz1h.
Run cr00, cr01, etc.*/

/*Create SAS libraries for SAS Studio
Highlight code-chunk (lines 3-5) and run.*/
libname irsa "/folders/myfolders/REDCap_SAS_Book_IRSA/Compassion/SAS Data";
options fmtsearch=(irsa);
run;