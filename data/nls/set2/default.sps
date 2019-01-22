file handle pcdat/name='default.dat' /lrecl=83.
data list file pcdat free /
  R0000100 (F4)
  R0320600 (F2)
  R0322500 (F2)
  R0322600 (F2)
  R0322700 (F3)
  R0359300 (F2)
  R0359400 (F2)
  R0536300 (F2)
  R0536401 (F2)
  R0536402 (F4)
  R0607900 (F2)
  R0608000 (F2)
  R0608100 (F2)
  R0608200 (F2)
  R0608300 (F2)
  R0608400 (F3)
  R0681200 (F2)
  R1210200 (F2)
  R1210300 (F2)
  R1235800 (F2)
  R1482600 (F2)
  Z9033700 (F2)
  Z9033800 (F2)
  Z9033900 (F2)
  Z9034000 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  R0000100  "PUBID - YTH ID CODE 1997"
  R0320600  "HOW RS GENL HEALTH? 1997"
  R0322500  "HEIGHT OF R IN FEET 1997"
  R0322600  "HEIGHT OF R IN INCHES 1997"
  R0322700  "WEIGHT OF R - POUNDS 1997"
  R0359300  "R DESC WEIGHT 1997"
  R0359400  "WHAT R DO ABOUT WEIGHT 1997"
  R0536300  "KEY!SEX (SYMBOL) 1997"
  R0536401  "KEY!BDATE M/Y (SYMBOL) 1997"
  R0536402  "KEY!BDATE M/Y (SYMBOL) 1997"
  R0607900  "PR GENL HEALTH 1997"
  R0608000  "PR HAVE HLTH PROB LIM EMP? 1997"
  R0608100  "PR HLTH PROB SIN OLDEST BORN? 1997"
  R0608200  "HEIGHT OF PR IN FEET 1997"
  R0608300  "HEIGHT OF PR IN INCHES 1997"
  R0608400  "WEIGHT OF PR 1997"
  R0681200  "HOW IS R HEALTH? 1997"
  R1210200  "CV_MARSTAT 1997"
  R1210300  "CV_MARSTAT_COLLAPSED 1997"
  R1235800  "CV_SAMPLE_TYPE 1997"
  R1482600  "KEY!RACE_ETHNICITY (SYMBOL) 1997"
  Z9033700  "CVC_SAT_MATH_SCORE_2007"
  Z9033800  "CVC_SAT_MATH_RND_2007"
  Z9033900  "CVC_SAT_VERBAL_SCORE_2007"
  Z9034000  "CVC_SAT_VERBAL_RND_2007"
.

* Recode continuous values. 
* recode 
 R0000100 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    / 
 R0322700 
    (0 thru 0 eq 0)
    (1 thru 49 eq 1)
    (50 thru 99 eq 50)
    (100 thru 149 eq 100)
    (150 thru 199 eq 150)
    (200 thru 249 eq 200)
    (250 thru 299 eq 250)
    (300 thru 349 eq 300)
    (350 thru 399 eq 350)
    (400 thru 449 eq 400)
    (450 thru 499 eq 450)
    (500 thru 999999 eq 500)
    / 
 R0608400 
    (0 thru 0 eq 0)
    (1 thru 24 eq 1)
    (25 thru 49 eq 25)
    (50 thru 74 eq 50)
    (75 thru 99 eq 75)
    (100 thru 124 eq 100)
    (125 thru 149 eq 125)
    (150 thru 174 eq 150)
    (175 thru 199 eq 175)
    (200 thru 224 eq 200)
    (225 thru 249 eq 225)
    (250 thru 99999999 eq 250)
.

* value labels
 R0000100
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    /
 R0320600
    1 "Excellent"
    2 "Very good"
    3 "Good"
    4 "Fair"
    5 "Poor"
    /
 R0322500
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    /
 R0322600
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    11 "11"
    12 "12"
    /
 R0322700
    0 "0"
    1 "1 TO 49"
    50 "50 TO 99"
    100 "100 TO 149"
    150 "150 TO 199"
    200 "200 TO 249"
    250 "250 TO 299"
    300 "300 TO 349"
    350 "350 TO 399"
    400 "400 TO 449"
    450 "450 TO 499"
    500 "500 TO 999999: 500+"
    /
 R0359300
    1 "VERY UNDERWEIGHT"
    2 "SLIGHTLY UNDERWEIGHT"
    3 "ABOUT THE RIGHT WEIGHT"
    4 "SLIGHTLY OVERWEIGHT"
    5 "VERY OVERWEIGHT"
    /
 R0359400
    1 "LOSE WEIGHT"
    2 "GAIN WEIGHT"
    3 "STAY THE SAME WEIGHT"
    4 "NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"
    /
 R0536300
    0 "No Information"
    1 "Male"
    2 "Female"
    /
 R0536401
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R0607900
    1 "Excellent"
    2 "Very good"
    3 "Good"
    4 "Fair"
    5 "Poor"
    /
 R0608000
    0 "No"
    1 "Yes"
    /
 R0608100
    0 "No"
    1 "Yes"
    /
 R0608200
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    /
 R0608300
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    11 "11"
    12 "12"
    /
 R0608400
    0 "0"
    1 "1 TO 24"
    25 "25 TO 49"
    50 "50 TO 74"
    75 "75 TO 99"
    100 "100 TO 124"
    125 "125 TO 149"
    150 "150 TO 174"
    175 "175 TO 199"
    200 "200 TO 224"
    225 "225 TO 249"
    250 "250 TO 99999999: 250+"
    /
 R0681200
    1 "Excellent"
    2 "Very good"
    3 "Good"
    4 "Fair"
    5 "Poor"
    /
 R1210200
    1 "Never married, cohabiting"
    2 "Never married, not cohabiting"
    3 "Married, spouse present"
    4 "Married, spouse absent"
    5 "Separated, cohabiting"
    6 "Separated, not cohabiting"
    7 "Divorced, cohabiting"
    8 "Divorced, not cohabiting"
    9 "Widowed, cohabiting"
    10 "Widowed, not cohabiting"
    /
 R1210300
    0 "Never married"
    1 "Married"
    2 "Separated"
    3 "Divorced"
    4 "Widowed"
    /
 R1235800
    0 "Oversample"
    1 "Cross-sectional"
    /
 R1482600
    1 "Black"
    2 "Hispanic"
    3 "Mixed Race (Non-Hispanic)"
    4 "Non-Black / Non-Hispanic"
    /
 Z9033700
    0 "Have not yet received the scores"
    1 "200 - 300"
    2 "301 - 400"
    3 "401 - 500"
    4 "501 - 600"
    5 "601 - 700"
    6 "701 - 800"
    /
 Z9033800
    1 "Round 1"
    2 "Round 2"
    3 "Round 3"
    4 "Round 4"
    5 "Round 5"
    6 "Round 6"
    7 "Round 7"
    8 "Round 8"
    9 "Round 9"
    10 "Round 10"
    11 "Round 11"
    12 "Round 12"
    13 "Round 13"
    14 "Round 14"
    15 "Round 15"
    16 "Round 16"
    17 "Round 17"
    /
 Z9033900
    0 "Have not yet received the scores"
    1 "200 - 300"
    2 "301 - 400"
    3 "401 - 500"
    4 "501 - 600"
    5 "601 - 700"
    6 "701 - 800"
    /
 Z9034000
    1 "Round 1"
    2 "Round 2"
    3 "Round 3"
    4 "Round 4"
    5 "Round 5"
    6 "Round 6"
    7 "Round 7"
    8 "Round 8"
    9 "Round 9"
    10 "Round 10"
    11 "Round 11"
    12 "Round 12"
    13 "Round 13"
    14 "Round 14"
    15 "Round 15"
    16 "Round 16"
    17 "Round 17"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = PUBID_1997) 
  (R0320600 = YHEA_100_1997)   /* YHEA-100 */
  (R0322500 = YHEA_2000_1997)   /* YHEA-2000 */
  (R0322600 = YHEA_2100_1997)   /* YHEA-2100 */
  (R0322700 = YHEA_2200_1997)   /* YHEA-2200 */
  (R0359300 = YSAQ_373_1997)   /* YSAQ-373 */
  (R0359400 = YSAQ_374_1997)   /* YSAQ-374 */
  (R0536300 = KEY_SEX_1997)   /* KEY!SEX */
  (R0536401 = KEY_BDATE_M_1997)   /* KEY!BDATE_M */
  (R0536402 = KEY_BDATE_Y_1997)   /* KEY!BDATE_Y */
  (R0607900 = P4_001_1997)   /* P4-001 */
  (R0608000 = P4_002_1997)   /* P4-002 */
  (R0608100 = P4_003_1997)   /* P4-003 */
  (R0608200 = P4_004_1997)   /* P4-004 */
  (R0608300 = P4_005_1997)   /* P4-005 */
  (R0608400 = P4_006_1997)   /* P4-006 */
  (R0681200 = PC9_001_1997)   /* PC9-001 */
  (R1210200 = CV_MARSTAT_1997) 
  (R1210300 = CV_MARSTAT_COLLAPSED_1997) 
  (R1235800 = CV_SAMPLE_TYPE_1997) 
  (R1482600 = KEY_RACE_ETHNICITY_1997)   /* KEY!RACE_ETHNICITY */
  (Z9033700 = CVC_SAT_MATH_SCORE_2007_XRND) 
  (Z9033800 = CVC_SAT_MATH_RND_2007_XRND) 
  (Z9033900 = CVC_SAT_VERBAL_SCORE_2007_XRND) 
  (Z9034000 = CVC_SAT_VERBAL_RND_2007_XRND) 
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100, 
  R0320600, 
  R0322500, 
  R0322600, 
  R0322700, 
  R0359300, 
  R0359400, 
  R0536300, 
  R0536401, 
  R0536402, 
  R0607900, 
  R0608000, 
  R0608100, 
  R0608200, 
  R0608300, 
  R0608400, 
  R0681200, 
  R1210200, 
  R1210300, 
  R1235800, 
  R1482600, 
  Z9033700, 
  Z9033800, 
  Z9033900, 
  Z9034000.

*--- Tabulations using qname variables.
*freq var=PUBID_1997, 
  YHEA_100_1997, 
  YHEA_2000_1997, 
  YHEA_2100_1997, 
  YHEA_2200_1997, 
  YSAQ_373_1997, 
  YSAQ_374_1997, 
  KEY_SEX_1997, 
  KEY_BDATE_M_1997, 
  KEY_BDATE_Y_1997, 
  P4_001_1997, 
  P4_002_1997, 
  P4_003_1997, 
  P4_004_1997, 
  P4_005_1997, 
  P4_006_1997, 
  PC9_001_1997, 
  CV_MARSTAT_1997, 
  CV_MARSTAT_COLLAPSED_1997, 
  CV_SAMPLE_TYPE_1997, 
  KEY_RACE_ETHNICITY_1997, 
  CVC_SAT_MATH_SCORE_2007_XRND, 
  CVC_SAT_MATH_RND_2007_XRND, 
  CVC_SAT_VERBAL_SCORE_2007_XRND, 
  CVC_SAT_VERBAL_RND_2007_XRND.
