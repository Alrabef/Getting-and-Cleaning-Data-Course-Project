DATA DICTIONARY FOR UCI HAR Dataset

AL

Activity Labels
In the study were performed 6 activities.  All activity labeled with a number between one to 6 in the following way:

1. WALKING
2. WALKING UPSTAIRS
3. WALKING DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

FEATURES

The names of A=all variables considered in the study are changed following the code:
Body -> B
Gyro -> Gy
Gravity -> Gr
Acc -> A
Jerk -> J
Mag _> M

Then variables as:
tBodyAcc -> tBA
tGravityAcc -> tGrA
tBodyAccJerk -> tBAJ
tBodyGyro -> tBGy
tBodyGyroJerk -> tBGyJ
tBodyAccMag -> tBAM
tGravityAccMag -> tGrAM
tBodyAccJerkMag -> tBAJM
tBodyGyroMag -> tBGyM
tBodyGyroJerkMag -> tBGyJM
fBodyAcc-XYZ -> fBA-XYZ
fBodyAccJerk-XYZ -> fBAJ-XYZ
fBodyGyro-XYZ -> fBGy-XYZ
fBodyAccMag -> fBAM
fBodyAccJerkMag -> fBAJM
fBodyGyroMag -> fBGyM
fBodyGyroJerkMag -> fBGyJM 

the other values as, 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.
 
are leave unchanged, in the same way as the levels of the factors, which contains the original names of the variables. 
In the analysis performed analysis are obtained 561 variables + Volunteer Number + Activity Label.
