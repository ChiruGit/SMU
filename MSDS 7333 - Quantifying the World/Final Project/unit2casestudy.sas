/* 	Zach Brown
	MSDS 7333 - Quantifying the World
	Unit 2 Case Study
	5/24/2017 */

/* Import data set with missing values */
data carmpg;
   infile 'C:\Users\xzach\Google Drive\SMU\MSDS 7333 - Quantifying the World\Week 3\Unit 2 Case Study\carmpg.csv' dsd firstobs = 2;
   input Auto $ MPG CYLINDERS SIZE HP WEIGHT ACCEL ENG_TYPE;
run;

/* Perform linear regression on data set using listwise deletion */
proc reg data = carmpg;
	model MPG = CYLINDERS SIZE HP WEIGHT ACCEL ENG_TYPE;
run;

/* Investigate missing data and determine if there is a pattern */
ods select misspattern;
proc mi data=carmpg nimpute=0;
var MPG CYLINDERS SIZE HP WEIGHT ACCEL ENG_TYPE;
run;

/* Create 5 imputed data sets */
proc mi data=carmpg nimpute=5
	out=miout seed=35399;
	var MPG CYLINDERS SIZE HP WEIGHT ACCEL ENG_TYPE;
run;

/* Perform linear regression on each of the 5 imputed data sets */
proc reg data=miout outest=outreg covout;
	model MPG = CYLINDERS SIZE HP WEIGHT ACCEL ENG_TYPE;
	by _imputation_;
run;

/* Combine the 5 regression models using proc mianalyze */
proc mianalyze data=outreg;
	modeleffects CYLINDERS SIZE HP WEIGHT ACCEL ENG_TYPE INTERCEPT;
run;
