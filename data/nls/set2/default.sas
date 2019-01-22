options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'default.dat' lrecl=83 missover DSD DLM=' ' print;
input
  R0000100
  R0320600
  R0322500
  R0322600
  R0322700
  R0359300
  R0359400
  R0536300
  R0536401
  R0536402
  R0607900
  R0608000
  R0608100
  R0608200
  R0608300
  R0608400
  R0681200
  R1210200
  R1210300
  R1235800
  R1482600
  Z9033700
  Z9033800
  Z9033900
  Z9034000
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label R0000100 = "PUBID - YTH ID CODE 1997";
  label R0320600 = "HOW RS GENL HEALTH? 1997";
  label R0322500 = "HEIGHT OF R IN FEET 1997";
  label R0322600 = "HEIGHT OF R IN INCHES 1997";
  label R0322700 = "WEIGHT OF R - POUNDS 1997";
  label R0359300 = "R DESC WEIGHT 1997";
  label R0359400 = "WHAT R DO ABOUT WEIGHT 1997";
  label R0536300 = "KEY!SEX (SYMBOL) 1997";
  label R0536401 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R0536402 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R0607900 = "PR GENL HEALTH 1997";
  label R0608000 = "PR HAVE HLTH PROB LIM EMP? 1997";
  label R0608100 = "PR HLTH PROB SIN OLDEST BORN? 1997";
  label R0608200 = "HEIGHT OF PR IN FEET 1997";
  label R0608300 = "HEIGHT OF PR IN INCHES 1997";
  label R0608400 = "WEIGHT OF PR 1997";
  label R0681200 = "HOW IS R HEALTH? 1997";
  label R1210200 = "CV_MARSTAT 1997";
  label R1210300 = "CV_MARSTAT_COLLAPSED 1997";
  label R1235800 = "CV_SAMPLE_TYPE 1997";
  label R1482600 = "KEY!RACE_ETHNICITY (SYMBOL) 1997";
  label Z9033700 = "CVC_SAT_MATH_SCORE_2007";
  label Z9033800 = "CVC_SAT_MATH_RND_2007";
  label Z9033900 = "CVC_SAT_VERBAL_SCORE_2007";
  label Z9034000 = "CVC_SAT_VERBAL_RND_2007";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  R0000100 = 'PUBID_1997'n
  R0320600 = 'YHEA-100_1997'n
  R0322500 = 'YHEA-2000_1997'n
  R0322600 = 'YHEA-2100_1997'n
  R0322700 = 'YHEA-2200_1997'n
  R0359300 = 'YSAQ-373_1997'n
  R0359400 = 'YSAQ-374_1997'n
  R0536300 = 'KEY!SEX_1997'n
  R0536401 = 'KEY!BDATE_M_1997'n
  R0536402 = 'KEY!BDATE_Y_1997'n
  R0607900 = 'P4-001_1997'n
  R0608000 = 'P4-002_1997'n
  R0608100 = 'P4-003_1997'n
  R0608200 = 'P4-004_1997'n
  R0608300 = 'P4-005_1997'n
  R0608400 = 'P4-006_1997'n
  R0681200 = 'PC9-001_1997'n
  R1210200 = 'CV_MARSTAT_1997'n
  R1210300 = 'CV_MARSTAT_COLLAPSED_1997'n
  R1235800 = 'CV_SAMPLE_TYPE_1997'n
  R1482600 = 'KEY!RACE_ETHNICITY_1997'n
  Z9033700 = 'CVC_SAT_MATH_SCORE_2007_XRND'n
  Z9033800 = 'CVC_SAT_MATH_RND_2007_XRND'n
  Z9033900 = 'CVC_SAT_VERBAL_SCORE_2007_XRND'n
  Z9034000 = 'CVC_SAT_VERBAL_RND_2007_XRND'n
;
  /* *finish* */

run;

proc means data=new_data n mean min max;
run;


/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format; 
value vx0f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
;
value vx1f
  1='Excellent'
  2='Very good'
  3='Good'
  4='Fair'
  5='Poor'
;
value vx2f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
;
value vx3f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10='10'
  11='11'
  12='12'
;
value vx4f
  0='0'
  1-49='1 TO 49'
  50-99='50 TO 99'
  100-149='100 TO 149'
  150-199='150 TO 199'
  200-249='200 TO 249'
  250-299='250 TO 299'
  300-349='300 TO 349'
  350-399='350 TO 399'
  400-449='400 TO 449'
  450-499='450 TO 499'
  500-999999='500 TO 999999: 500+'
;
value vx5f
  1='VERY UNDERWEIGHT'
  2='SLIGHTLY UNDERWEIGHT'
  3='ABOUT THE RIGHT WEIGHT'
  4='SLIGHTLY OVERWEIGHT'
  5='VERY OVERWEIGHT'
;
value vx6f
  1='LOSE WEIGHT'
  2='GAIN WEIGHT'
  3='STAY THE SAME WEIGHT'
  4='NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT'
;
value vx7f
  0='No Information'
  1='Male'
  2='Female'
;
value vx8f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx10f
  1='Excellent'
  2='Very good'
  3='Good'
  4='Fair'
  5='Poor'
;
value vx11f
  0='No'
  1='Yes'
;
value vx12f
  0='No'
  1='Yes'
;
value vx13f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
;
value vx14f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10='10'
  11='11'
  12='12'
;
value vx15f
  0='0'
  1-24='1 TO 24'
  25-49='25 TO 49'
  50-74='50 TO 74'
  75-99='75 TO 99'
  100-124='100 TO 124'
  125-149='125 TO 149'
  150-174='150 TO 174'
  175-199='175 TO 199'
  200-224='200 TO 224'
  225-249='225 TO 249'
  250-99999999='250 TO 99999999: 250+'
;
value vx16f
  1='Excellent'
  2='Very good'
  3='Good'
  4='Fair'
  5='Poor'
;
value vx17f
  1='Never married, cohabiting'
  2='Never married, not cohabiting'
  3='Married, spouse present'
  4='Married, spouse absent'
  5='Separated, cohabiting'
  6='Separated, not cohabiting'
  7='Divorced, cohabiting'
  8='Divorced, not cohabiting'
  9='Widowed, cohabiting'
  10='Widowed, not cohabiting'
;
value vx18f
  0='Never married'
  1='Married'
  2='Separated'
  3='Divorced'
  4='Widowed'
;
value vx19f
  0='Oversample'
  1='Cross-sectional'
;
value vx20f
  1='Black'
  2='Hispanic'
  3='Mixed Race (Non-Hispanic)'
  4='Non-Black / Non-Hispanic'
;
value vx21f
  0='Have not yet received the scores'
  1='200 - 300'
  2='301 - 400'
  3='401 - 500'
  4='501 - 600'
  5='601 - 700'
  6='701 - 800'
;
value vx22f
  1='Round 1'
  2='Round 2'
  3='Round 3'
  4='Round 4'
  5='Round 5'
  6='Round 6'
  7='Round 7'
  8='Round 8'
  9='Round 9'
  10='Round 10'
  11='Round 11'
  12='Round 12'
  13='Round 13'
  14='Round 14'
  15='Round 15'
  16='Round 16'
  17='Round 17'
;
value vx23f
  0='Have not yet received the scores'
  1='200 - 300'
  2='301 - 400'
  3='401 - 500'
  4='501 - 600'
  5='601 - 700'
  6='701 - 800'
;
value vx24f
  1='Round 1'
  2='Round 2'
  3='Round 3'
  4='Round 4'
  5='Round 5'
  6='Round 6'
  7='Round 7'
  8='Round 8'
  9='Round 9'
  10='Round 10'
  11='Round 11'
  12='Round 12'
  13='Round 13'
  14='Round 14'
  15='Round 15'
  16='Round 16'
  17='Round 17'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0000100 vx0f.;
  format R0320600 vx1f.;
  format R0322500 vx2f.;
  format R0322600 vx3f.;
  format R0322700 vx4f.;
  format R0359300 vx5f.;
  format R0359400 vx6f.;
  format R0536300 vx7f.;
  format R0536401 vx8f.;
  format R0607900 vx10f.;
  format R0608000 vx11f.;
  format R0608100 vx12f.;
  format R0608200 vx13f.;
  format R0608300 vx14f.;
  format R0608400 vx15f.;
  format R0681200 vx16f.;
  format R1210200 vx17f.;
  format R1210300 vx18f.;
  format R1235800 vx19f.;
  format R1482600 vx20f.;
  format Z9033700 vx21f.;
  format Z9033800 vx22f.;
  format Z9033900 vx23f.;
  format Z9034000 vx24f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'PUBID_1997'n vx0f.;
  format 'YHEA-100_1997'n vx1f.;
  format 'YHEA-2000_1997'n vx2f.;
  format 'YHEA-2100_1997'n vx3f.;
  format 'YHEA-2200_1997'n vx4f.;
  format 'YSAQ-373_1997'n vx5f.;
  format 'YSAQ-374_1997'n vx6f.;
  format 'KEY!SEX_1997'n vx7f.;
  format 'KEY!BDATE_M_1997'n vx8f.;
  format 'P4-001_1997'n vx10f.;
  format 'P4-002_1997'n vx11f.;
  format 'P4-003_1997'n vx12f.;
  format 'P4-004_1997'n vx13f.;
  format 'P4-005_1997'n vx14f.;
  format 'P4-006_1997'n vx15f.;
  format 'PC9-001_1997'n vx16f.;
  format 'CV_MARSTAT_1997'n vx17f.;
  format 'CV_MARSTAT_COLLAPSED_1997'n vx18f.;
  format 'CV_SAMPLE_TYPE_1997'n vx19f.;
  format 'KEY!RACE_ETHNICITY_1997'n vx20f.;
  format 'CVC_SAT_MATH_SCORE_2007_XRND'n vx21f.;
  format 'CVC_SAT_MATH_RND_2007_XRND'n vx22f.;
  format 'CVC_SAT_VERBAL_SCORE_2007_XRND'n vx23f.;
  format 'CVC_SAT_VERBAL_RND_2007_XRND'n vx24f.;
run;
*/