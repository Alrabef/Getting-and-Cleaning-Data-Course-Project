# Getting-and-Cleaning-Data-Course-Project
* Final project for thecourse Getting and Cleaning data, data science specialization.
* 
The data was obtained from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In which are condensed the resulting data of the study of use Smartphone accelerometer and gyroscope for analysing the motion and dynamics of 30 volunteers performing 6 different activities.

This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:

1. Firstly download the ".zip" which contains the dataset, creates a folder and unzip the file.
2. Load the information inseveral data frames, the first one is the feature data frame in which are changed the names as is consended in the Data Book. Then Load the activity and feature info.
3. It is created a factor which associate the number of the activity with the name activity, called activities.
4. It is created a datafram which contains the number associated with eac volunteer, called volunteer.
5. The resulting dataframes are train and test.
6. The data frames are merged in a data frame calles UCI_data and saved with the data frame in called final_GCD.RData. 
7. The environmet ins cleaned and the filnal_GCD.RData is calles. 
8. From the UCI_data data frame is extracted those variables which contains the mean and the standart deviation. This result is exported to a file called UCI_analysis_data_set.txt, an extra file is created in which the mean resulting for each volunteer for activity is condensed, the file is Summarized_UCI_analysis.txt

Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
The end result is shown in the file tidy.txt.
