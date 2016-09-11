##This program download and extracts the data obtained by ... in the study ..., its behaviour has three stages: the 
##first one - the creation of the directories and the downloading of the packages, the second stage is the manipulacion of
## the data, stracting and naming the columns and the rows with its respective labels, the third one in the mergin 
## al the processed data in one big data frame which facilitates the posterior analysis.
rm(list = ls())
mainDir <- "C:/Users/Galileo/Documents/R/GETTING&CLEANING_DATA" #defining the main directory to download the Data
subDir <- "UCI_Data"#defining the folder to put the zip file

fileName = "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip"

if(file.exists(subDir)){
  setwd(file.path(mainDir, subDir))            #analizing the existence of the folder then create or puttin that folder to create the target folder
} else {
  dir.create(file.path(mainDir,subDir))
}

WD <- paste(c(mainDir,"/",subDir), sep = "", collapse = "") #set extract from the ZIP file the data
setwd(WD)

temp <- tempfile()
download.file(fileName,temp)
unzip(temp, exdir = WD)
unlink(temp)
rm("temp")
WD <- paste(c(WD,"/",dir()[2]), sep = "", collapse = "")
setwd(WD)

#reading and processing data, merging the two data sets

library(dplyr)
library(data.table)

## Modifygin the names of the variables in the feature file

feature_mod <- read.table("features.txt")[,2]

feature_mod <- gsub("Acc","A",feature_mod)
feature_mod <- gsub("Body","B",feature_mod)
feature_mod <- gsub("Gravity","Gr",feature_mod)
feature_mod <- gsub("Gyro","Gy",feature_mod)
feature_mod <- gsub("Jer","J",feature_mod)
feature_mod <- gsub("Mag","M",feature_mod)

features <- feature_mod

act_labels <- read.table("activity_labels.txt")[,2]%>%as.character

#processing Train Data

sub_train <- read.table("train/subject_train.txt", col.names = "Volunteer")
X_train <- read.table("train/X_train.txt",col.names = features)
Y_train <- read.table("train/Y_train.txt")[,1]%>%factor
levels(Y_train) <- act_labels
Activities <- Y_train
Volunteer <- sub_train
train_data <- cbind(Activities, Volunteer, X_train)

#processing Test Data

sub_test <- read.table("test/subject_test.txt", col.names = "Volunteer")
X_test <- read.table("test/X_test.txt",col.names = features)
Y_test <- read.table("test/Y_test.txt")[,1]%>%factor
levels(Y_test) <- act_labels
Activities <- Y_test
Volunteer <- sub_test
test_data <- cbind(Activities, Volunteer, X_test)

# saving the two condensed train and test sets

save(train_data,test_data, file = "final_GCD.RData")
rm(list = ls())
load("final_GCD.RData")

UCI_data <- rbind(train_data,test_data)

## Extracting the measurements on the mean and standard deviation.

UCI_means_sd <- select(
                        UCI_data,
                        Activities,
                        Volunteer,
                        contains('mean', ignore.case = FALSE), 
                        contains('std', ignore.case = FALSE)
                       )
## Calculating the mean by activitie of each volnteer

UCI_means_volunteer <- aggregate(UCI_means_sd[,3:81], list(UCI_means_sd$Activities,UCI_means_sd$Volunteer),mean)

## Exrpoting te resulting data analysis to the file UCI_analyzed.txt
MainDirAnalys <- "C:/Users/Galileo/Documents/R/GETTING&CLEANING_DATA/UCI_Data"
analysDir <- "UCI_analysis"
WD <- paste(c(MainDirAnalys,"/",analysDir), sep = "", collapse = "") #set extract from the ZIP file the data
dir.create(file.path(MainDirAnalys,analysDir))
setwd(WD)
write.table(UCI_means_sd, 'UCI_analysis_data_set.txt', row.names = FALSE)
write.table(UCI_means_volunteer, 'Summarized_UCI_analysis.txt', row.names = FALSE)
