DATA DICTIONARY FOR UCI HAR Dataset

Activity Labels
In the study were performed 6 activities.  All activity labelled with a number between one to 6 in the following way:

1. WALKING
2. WALKING UPSTAIRS
3. WALKING DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

FEATURES

The names of A=all variables considered in the study are changed following the code:
1. Body -> B
2. Gyro -> Gy
3. Gravity -> Gr
4. Acc -> A
5. Jerk -> J
6. Mag _> M

Then variables as:

1.  tBodyAcc -> tBA
2.  tGravityAcc -> tGrA
3.  tBodyAccJerk -> tBAJ
4.  tBodyGyro -> tBGy
5.  tBodyGyroJerk -> tBGyJ
6.  tBodyAccMag -> tBAM
7.  tGravityAccMag -> tGrAM
8.  tBodyAccJerkMag -> tBAJM
9.  tBodyGyroMag -> tBGyM
10. tBodyGyroJerkMag -> tBGyJM
11. fBodyAcc-XYZ -> fBA-XYZ
12. fBodyAccJerk-XYZ -> fBAJ-XYZ
13. fBodyGyro-XYZ -> fBGy-XYZ
14. fBodyAccMag -> fBAM
15. fBodyAccJerkMag -> fBAJM
16. fBodyGyroMag -> fBGyM
17. fBodyGyroJerkMag -> fBGyJM 

the other values as, 

1.  mean(): Mean value
2.  std(): Standard deviation
3.  mad(): Median absolute deviation 
4.  max(): Largest value in array
5.  min(): Smallest value in array
6.  sma(): Signal magnitude area
7.  energy(): Energy measure. The sum of the squares divided by the number of values. 
8.  iqr(): Interquartile range 
9.  entropy(): Signal entropy
10. arCoeff(): Autoregression coefficients with Burg order equal to 4
11. correlation(): correlation coefficient between two signals
12. maxInds(): index of the frequency component with the largest magnitude
13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency
14. skewness(): skewness of the frequency domain signal 
15. kurtosis(): kurtosis of the frequency domain signal 
16. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
17. angle(): Angle between two vectors.
 
are leave unchanged, in the same way as the levels of the factors, which contains the original names of the variables. 
In the analysis performed analysis are obtained 561 variables + Volunteer Number + Activity Label.
