
# Set working directory
# setwd()


new_data <- read.table('default.dat', sep=' ')
names(new_data) <- c('R0000100',
  'R0320600',
  'R0322500',
  'R0322600',
  'R0322700',
  'R0359300',
  'R0359400',
  'R0536300',
  'R0536401',
  'R0536402',
  'R0607900',
  'R0608000',
  'R0608100',
  'R0608200',
  'R0608300',
  'R0608400',
  'R0681200',
  'R1210200',
  'R1210300',
  'R1235800',
  'R1482600',
  'Z9033700',
  'Z9033800',
  'Z9033900',
  'Z9034000')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 999.0] <- 1.0
  data$R0000100[1000.0 <= data$R0000100 & data$R0000100 <= 1999.0] <- 1000.0
  data$R0000100[2000.0 <= data$R0000100 & data$R0000100 <= 2999.0] <- 2000.0
  data$R0000100[3000.0 <= data$R0000100 & data$R0000100 <= 3999.0] <- 3000.0
  data$R0000100[4000.0 <= data$R0000100 & data$R0000100 <= 4999.0] <- 4000.0
  data$R0000100[5000.0 <= data$R0000100 & data$R0000100 <= 5999.0] <- 5000.0
  data$R0000100[6000.0 <= data$R0000100 & data$R0000100 <= 6999.0] <- 6000.0
  data$R0000100[7000.0 <= data$R0000100 & data$R0000100 <= 7999.0] <- 7000.0
  data$R0000100[8000.0 <= data$R0000100 & data$R0000100 <= 8999.0] <- 8000.0
  data$R0000100[9000.0 <= data$R0000100 & data$R0000100 <= 9999.0] <- 9000.0
  data$R0000100 <- factor(data$R0000100, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0), 
    labels=c("0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999"))
  data$R0320600 <- factor(data$R0320600, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Excellent",
      "Very good",
      "Good",
      "Fair",
      "Poor"))
  data$R0322500 <- factor(data$R0322500, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9"))
  data$R0322600 <- factor(data$R0322600, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12"))
  data$R0322700[1.0 <= data$R0322700 & data$R0322700 <= 49.0] <- 1.0
  data$R0322700[50.0 <= data$R0322700 & data$R0322700 <= 99.0] <- 50.0
  data$R0322700[100.0 <= data$R0322700 & data$R0322700 <= 149.0] <- 100.0
  data$R0322700[150.0 <= data$R0322700 & data$R0322700 <= 199.0] <- 150.0
  data$R0322700[200.0 <= data$R0322700 & data$R0322700 <= 249.0] <- 200.0
  data$R0322700[250.0 <= data$R0322700 & data$R0322700 <= 299.0] <- 250.0
  data$R0322700[300.0 <= data$R0322700 & data$R0322700 <= 349.0] <- 300.0
  data$R0322700[350.0 <= data$R0322700 & data$R0322700 <= 399.0] <- 350.0
  data$R0322700[400.0 <= data$R0322700 & data$R0322700 <= 449.0] <- 400.0
  data$R0322700[450.0 <= data$R0322700 & data$R0322700 <= 499.0] <- 450.0
  data$R0322700[500.0 <= data$R0322700 & data$R0322700 <= 999999.0] <- 500.0
  data$R0322700 <- factor(data$R0322700, 
    levels=c(0.0,1.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0,450.0,500.0), 
    labels=c("0",
      "1 TO 49",
      "50 TO 99",
      "100 TO 149",
      "150 TO 199",
      "200 TO 249",
      "250 TO 299",
      "300 TO 349",
      "350 TO 399",
      "400 TO 449",
      "450 TO 499",
      "500 TO 999999: 500+"))
  data$R0359300 <- factor(data$R0359300, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("VERY UNDERWEIGHT",
      "SLIGHTLY UNDERWEIGHT",
      "ABOUT THE RIGHT WEIGHT",
      "SLIGHTLY OVERWEIGHT",
      "VERY OVERWEIGHT"))
  data$R0359400 <- factor(data$R0359400, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("LOSE WEIGHT",
      "GAIN WEIGHT",
      "STAY THE SAME WEIGHT",
      "NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$R0536300 <- factor(data$R0536300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("No Information",
      "Male",
      "Female"))
  data$R0536401 <- factor(data$R0536401, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("1: January",
      "2: February",
      "3: March",
      "4: April",
      "5: May",
      "6: June",
      "7: July",
      "8: August",
      "9: September",
      "10: October",
      "11: November",
      "12: December"))
  data$R0607900 <- factor(data$R0607900, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Excellent",
      "Very good",
      "Good",
      "Fair",
      "Poor"))
  data$R0608000 <- factor(data$R0608000, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R0608100 <- factor(data$R0608100, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R0608200 <- factor(data$R0608200, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7"))
  data$R0608300 <- factor(data$R0608300, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12"))
  data$R0608400[1.0 <= data$R0608400 & data$R0608400 <= 24.0] <- 1.0
  data$R0608400[25.0 <= data$R0608400 & data$R0608400 <= 49.0] <- 25.0
  data$R0608400[50.0 <= data$R0608400 & data$R0608400 <= 74.0] <- 50.0
  data$R0608400[75.0 <= data$R0608400 & data$R0608400 <= 99.0] <- 75.0
  data$R0608400[100.0 <= data$R0608400 & data$R0608400 <= 124.0] <- 100.0
  data$R0608400[125.0 <= data$R0608400 & data$R0608400 <= 149.0] <- 125.0
  data$R0608400[150.0 <= data$R0608400 & data$R0608400 <= 174.0] <- 150.0
  data$R0608400[175.0 <= data$R0608400 & data$R0608400 <= 199.0] <- 175.0
  data$R0608400[200.0 <= data$R0608400 & data$R0608400 <= 224.0] <- 200.0
  data$R0608400[225.0 <= data$R0608400 & data$R0608400 <= 249.0] <- 225.0
  data$R0608400[250.0 <= data$R0608400 & data$R0608400 <= 9.9999999E7] <- 250.0
  data$R0608400 <- factor(data$R0608400, 
    levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0), 
    labels=c("0",
      "1 TO 24",
      "25 TO 49",
      "50 TO 74",
      "75 TO 99",
      "100 TO 124",
      "125 TO 149",
      "150 TO 174",
      "175 TO 199",
      "200 TO 224",
      "225 TO 249",
      "250 TO 99999999: 250+"))
  data$R0681200 <- factor(data$R0681200, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Excellent",
      "Very good",
      "Good",
      "Fair",
      "Poor"))
  data$R1210200 <- factor(data$R1210200, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
    labels=c("Never married, cohabiting",
      "Never married, not cohabiting",
      "Married, spouse present",
      "Married, spouse absent",
      "Separated, cohabiting",
      "Separated, not cohabiting",
      "Divorced, cohabiting",
      "Divorced, not cohabiting",
      "Widowed, cohabiting",
      "Widowed, not cohabiting"))
  data$R1210300 <- factor(data$R1210300, 
    levels=c(0.0,1.0,2.0,3.0,4.0), 
    labels=c("Never married",
      "Married",
      "Separated",
      "Divorced",
      "Widowed"))
  data$R1235800 <- factor(data$R1235800, 
    levels=c(0.0,1.0), 
    labels=c("Oversample",
      "Cross-sectional"))
  data$R1482600 <- factor(data$R1482600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Black",
      "Hispanic",
      "Mixed Race (Non-Hispanic)",
      "Non-Black / Non-Hispanic"))
  data$Z9033700 <- factor(data$Z9033700, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0), 
    labels=c("Have not yet received the scores",
      "200 - 300",
      "301 - 400",
      "401 - 500",
      "501 - 600",
      "601 - 700",
      "701 - 800"))
  data$Z9033800 <- factor(data$Z9033800, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0), 
    labels=c("Round 1",
      "Round 2",
      "Round 3",
      "Round 4",
      "Round 5",
      "Round 6",
      "Round 7",
      "Round 8",
      "Round 9",
      "Round 10",
      "Round 11",
      "Round 12",
      "Round 13",
      "Round 14",
      "Round 15",
      "Round 16",
      "Round 17"))
  data$Z9033900 <- factor(data$Z9033900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0), 
    labels=c("Have not yet received the scores",
      "200 - 300",
      "301 - 400",
      "401 - 500",
      "501 - 600",
      "601 - 700",
      "701 - 800"))
  data$Z9034000 <- factor(data$Z9034000, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0), 
    labels=c("Round 1",
      "Round 2",
      "Round 3",
      "Round 4",
      "Round 5",
      "Round 6",
      "Round 7",
      "Round 8",
      "Round 9",
      "Round 10",
      "Round 11",
      "Round 12",
      "Round 13",
      "Round 14",
      "Round 15",
      "Round 16",
      "Round 17"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "HOW RS GENL HEALTH? 1997",
  "HEIGHT OF R IN FEET 1997",
  "HEIGHT OF R IN INCHES 1997",
  "WEIGHT OF R - POUNDS 1997",
  "R DESC WEIGHT 1997",
  "WHAT R DO ABOUT WEIGHT 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "PR GENL HEALTH 1997",
  "PR HAVE HLTH PROB LIM EMP? 1997",
  "PR HLTH PROB SIN OLDEST BORN? 1997",
  "HEIGHT OF PR IN FEET 1997",
  "HEIGHT OF PR IN INCHES 1997",
  "WEIGHT OF PR 1997",
  "HOW IS R HEALTH? 1997",
  "CV_MARSTAT 1997",
  "CV_MARSTAT_COLLAPSED 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "CVC_SAT_MATH_SCORE_2007",
  "CVC_SAT_MATH_RND_2007",
  "CVC_SAT_VERBAL_SCORE_2007",
  "CVC_SAT_VERBAL_RND_2007"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "YHEA-100_1997",
    "YHEA-2000_1997",
    "YHEA-2100_1997",
    "YHEA-2200_1997",
    "YSAQ-373_1997",
    "YSAQ-374_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "P4-001_1997",
    "P4-002_1997",
    "P4-003_1997",
    "P4-004_1997",
    "P4-005_1997",
    "P4-006_1997",
    "PC9-001_1997",
    "CV_MARSTAT_1997",
    "CV_MARSTAT_COLLAPSED_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "CVC_SAT_MATH_SCORE_2007_XRND",
    "CVC_SAT_MATH_RND_2007_XRND",
    "CVC_SAT_VERBAL_SCORE_2007_XRND",
    "CVC_SAT_VERBAL_RND_2007_XRND")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#summary(categories)

#************************************************************************************************************

