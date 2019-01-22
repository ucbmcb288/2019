label define vlR0000100   0 "0"
label values R0000100 vlR0000100
label define vlR0320600   1 "Excellent"  2 "Very good"  3 "Good"  4 "Fair"  5 "Poor"
label values R0320600 vlR0320600
label define vlR0322500   0 "0"  1 "1"  2 "2"  3 "3"  4 "4"  5 "5"  6 "6"  7 "7"  8 "8"  9 "9"
label values R0322500 vlR0322500
label define vlR0322600   0 "0"  1 "1"  2 "2"  3 "3"  4 "4"  5 "5"  6 "6"  7 "7"  8 "8"  9 "9"  10 "10"  11 "11"  12 "12"
label values R0322600 vlR0322600
label define vlR0322700   0 "0"
label values R0322700 vlR0322700
label define vlR0359300   1 "VERY UNDERWEIGHT"  2 "SLIGHTLY UNDERWEIGHT"  3 "ABOUT THE RIGHT WEIGHT"  4 "SLIGHTLY OVERWEIGHT"  5 "VERY OVERWEIGHT"
label values R0359300 vlR0359300
label define vlR0359400   1 "LOSE WEIGHT"  2 "GAIN WEIGHT"  3 "STAY THE SAME WEIGHT"  4 "NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"
label values R0359400 vlR0359400
label define vlR0536300   0 "No Information"  1 "Male"  2 "Female"
label values R0536300 vlR0536300
label define vlR0536401   1 "1: January"  2 "2: February"  3 "3: March"  4 "4: April"  5 "5: May"  6 "6: June"  7 "7: July"  8 "8: August"  9 "9: September"  10 "10: October"  11 "11: November"  12 "12: December"
label values R0536401 vlR0536401
label define vlR0607900   1 "Excellent"  2 "Very good"  3 "Good"  4 "Fair"  5 "Poor"
label values R0607900 vlR0607900
label define vlR0608000   0 "No"  1 "Yes"
label values R0608000 vlR0608000
label define vlR0608100   0 "No"  1 "Yes"
label values R0608100 vlR0608100
label define vlR0608200   0 "0"  1 "1"  2 "2"  3 "3"  4 "4"  5 "5"  6 "6"  7 "7"
label values R0608200 vlR0608200
label define vlR0608300   0 "0"  1 "1"  2 "2"  3 "3"  4 "4"  5 "5"  6 "6"  7 "7"  8 "8"  9 "9"  10 "10"  11 "11"  12 "12"
label values R0608300 vlR0608300
label define vlR0608400   0 "0"
label values R0608400 vlR0608400
label define vlR0681200   1 "Excellent"  2 "Very good"  3 "Good"  4 "Fair"  5 "Poor"
label values R0681200 vlR0681200
label define vlR1210200   1 "Never married, cohabiting"  2 "Never married, not cohabiting"  3 "Married, spouse present"  4 "Married, spouse absent"  5 "Separated, cohabiting"  6 "Separated, not cohabiting"  7 "Divorced, cohabiting"  8 "Divorced, not cohabiting"  9 "Widowed, cohabiting"  10 "Widowed, not cohabiting"
label values R1210200 vlR1210200
label define vlR1210300   0 "Never married"  1 "Married"  2 "Separated"  3 "Divorced"  4 "Widowed"
label values R1210300 vlR1210300
label define vlR1235800   0 "Oversample"  1 "Cross-sectional"
label values R1235800 vlR1235800
label define vlR1482600   1 "Black"  2 "Hispanic"  3 "Mixed Race (Non-Hispanic)"  4 "Non-Black / Non-Hispanic"
label values R1482600 vlR1482600
label define vlZ9033700   0 "Have not yet received the scores"  1 "200 - 300"  2 "301 - 400"  3 "401 - 500"  4 "501 - 600"  5 "601 - 700"  6 "701 - 800"
label values Z9033700 vlZ9033700
label define vlZ9033800   1 "Round 1"  2 "Round 2"  3 "Round 3"  4 "Round 4"  5 "Round 5"  6 "Round 6"  7 "Round 7"  8 "Round 8"  9 "Round 9"  10 "Round 10"  11 "Round 11"  12 "Round 12"  13 "Round 13"  14 "Round 14"  15 "Round 15"  16 "Round 16"  17 "Round 17"
label values Z9033800 vlZ9033800
label define vlZ9033900   0 "Have not yet received the scores"  1 "200 - 300"  2 "301 - 400"  3 "401 - 500"  4 "501 - 600"  5 "601 - 700"  6 "701 - 800"
label values Z9033900 vlZ9033900
label define vlZ9034000   1 "Round 1"  2 "Round 2"  3 "Round 3"  4 "Round 4"  5 "Round 5"  6 "Round 6"  7 "Round 7"  8 "Round 8"  9 "Round 9"  10 "Round 10"  11 "Round 11"  12 "Round 12"  13 "Round 13"  14 "Round 14"  15 "Round 15"  16 "Round 16"  17 "Round 17"
label values Z9034000 vlZ9034000
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */
  /* *start* */
/*
  rename R0000100 PUBID_1997 
  rename R0320600 YHEA_100_1997   // YHEA-100
  rename R0322500 YHEA_2000_1997   // YHEA-2000
  rename R0322600 YHEA_2100_1997   // YHEA-2100
  rename R0322700 YHEA_2200_1997   // YHEA-2200
  rename R0359300 YSAQ_373_1997   // YSAQ-373
  rename R0359400 YSAQ_374_1997   // YSAQ-374
  rename R0536300 KEY!SEX_1997 
  rename R0536401 KEY!BDATE_M_1997 
  rename R0536402 KEY!BDATE_Y_1997 
  rename R0607900 P4_001_1997   // P4-001
  rename R0608000 P4_002_1997   // P4-002
  rename R0608100 P4_003_1997   // P4-003
  rename R0608200 P4_004_1997   // P4-004
  rename R0608300 P4_005_1997   // P4-005
  rename R0608400 P4_006_1997   // P4-006
  rename R0681200 PC9_001_1997   // PC9-001
  rename R1210200 CV_MARSTAT_1997 
  rename R1210300 CV_MARSTAT_COLLAPSED_1997 
  rename R1235800 CV_SAMPLE_TYPE_1997 
  rename R1482600 KEY!RACE_ETHNICITY_1997 
  rename Z9033700 CVC_SAT_MATH_SCORE_2007_XRND 
  rename Z9033800 CVC_SAT_MATH_RND_2007_XRND 
  rename Z9033900 CVC_SAT_VERBAL_SCORE_2007_XRND 
  rename Z9034000 CVC_SAT_VERBAL_RND_2007_XRND 
*/
  /* *end* */  
/* To convert variable names to lower case use the TOLOWER command 
 *      (type findit tolower and follow the links to install).
 * TOLOWER VARLIST will change listed variables to lower case; 
 *  TOLOWER without a specified variable list will convert all variables in the dataset to lower case
 */
/* tolower */
