## Step 1 - Clear workspace environment

rm(list=ls())
ls()

## Step 2 - Set up working directory

WD <- "E:/Big Data Course/Module 3 - Getting and Cleaning Data/Course Project"
setwd(WD)
getwd()

## Step 3 - Define functions used by the script

## Read a data file into a data frame
fReadDataIntoDF <- function(readfrom, headerflag)
{
 return(read.table(readfrom, header = headerflag))
}

## Write data from data frame to text file
fWriteData2TextFile <- function(writefrom, writeto, rowflag)
{
 return(write.table(writefrom, file = writeto, row.names = rowflag))
}

## Show data frame info. for debugging purposes
fShowDFInfo <- function(title, dfname, nooflines = 30L)
{
 print(paste("Title =", title), quote = FALSE)
 print(paste("No. of lines to show =", nooflines), quote = FALSE)
 print("-- Head --", quote = FALSE)
 print(head(dfname, n = nooflines))
 print("-- Tail --", quote = FALSE)
 print(tail(dfname, n = nooflines))
 print("-- Class --", quote = FALSE)
 print(class(dfname))
 print("-- Structure --", quote = FALSE)
 print(str(dfname))

 return(1)
}

## Step 4 - Include libraries used by this script

library(data.table)
library(dplyr)

## Step 5 - Read 'features' and 'activity labels' data to data frames

datafile <- "./UCI HAR Dataset/features.txt"
df_features <- fReadDataIntoDF(datafile, FALSE)

datafile <- "./UCI HAR Dataset/activity_labels.txt"
df_activity_labels <- fReadDataIntoDF(datafile, FALSE)

## Step 6 - Read the data files from the 'train' folder to data frames

datafile <- "./UCI HAR Dataset/train/subject_train.txt"
df_train_subject <- fReadDataIntoDF(datafile, FALSE)

datafile <- "./UCI HAR Dataset/train/y_train.txt"
df_train_activity <- fReadDataIntoDF(datafile, FALSE)

datafile <- "./UCI HAR Dataset/train/X_train.txt"
df_train_features <- fReadDataIntoDF(datafile, FALSE)

## Step 7 - Read the data files from the 'test' folder to data frames

datafile <- "./UCI HAR Dataset/test/subject_test.txt"
df_test_subject <- fReadDataIntoDF(datafile, FALSE)

datafile <- "./UCI HAR Dataset/test/y_test.txt"
df_test_activity <- fReadDataIntoDF(datafile, FALSE)

datafile <- "./UCI HAR Dataset/test/X_test.txt"
df_test_features <- fReadDataIntoDF(datafile, FALSE)

## Step 8 - Combine both the train and test data frames into a single data frame by subject, activity and features

df_combined_subject <- rbind(df_train_subject, df_test_subject)
df_combined_activity <- rbind(df_train_activity, df_test_activity)
df_combined_features <- rbind(df_train_features, df_test_features)

## Step 9 - Put column names into the combined data frames

colnames(df_combined_subject) <- "Subject"
colnames(df_combined_activity) <- "Activity"
colnames(df_combined_features) <- t(df_features[2])

## Step 10 - Merges the training and the test sets to create one data set

df_AllCombinedData <- cbind(df_combined_features, df_combined_activity, df_combined_subject)

## Step 11 - Extracts only the measurements on the mean and standard deviation for each measurement

sstr <- ".*Mean.*|.*Std.*"
MeanSTDDataOnly <- grep(sstr, names(df_AllCombinedData), ignore.case=TRUE)
Data2Extract <- c(MeanSTDDataOnly, 562, 563)
fShowDFInfo("Data2Extract", Data2Extract, 20L)
## dim(df_AllCombinedData)
df_Extracted_Data <- df_AllCombinedData[, Data2Extract]
## dim(df_Extracted_Data)

## Step 12 - Uses descriptive activity names to name the activities in the data set

df_Extracted_Data$Activity <- as.character(df_Extracted_Data$Activity)
for (i in 1:6)
    {
     df_Extracted_Data$Activity[df_Extracted_Data$Activity == i] <- as.character(df_activity_labels[i, 2])
    }
df_Extracted_Data$Activity <- as.factor(df_Extracted_Data$Activity)

## Step 13 - Appropriately labels the data set with descriptive variable names

names(df_Extracted_Data) <- gsub("Acc", "Accelerometer", names(df_Extracted_Data))
names(df_Extracted_Data) <- gsub("Gyro", "Gyroscope", names(df_Extracted_Data))
names(df_Extracted_Data) <- gsub("BodyBody", "Body", names(df_Extracted_Data))
names(df_Extracted_Data) <- gsub("Mag", "Magnitude", names(df_Extracted_Data))
names(df_Extracted_Data) <- gsub("^t", "Time", names(df_Extracted_Data))
names(df_Extracted_Data) <- gsub("^f", "Frequency", names(df_Extracted_Data))
names(df_Extracted_Data) <- gsub("tBody", "TimeBody", names(df_Extracted_Data))
names(df_Extracted_Data) <- gsub("-mean()", "Mean", names(df_Extracted_Data), ignore.case = TRUE)
names(df_Extracted_Data) <- gsub("-std()", "STD", names(df_Extracted_Data), ignore.case = TRUE)
names(df_Extracted_Data) <- gsub("-freq()", "Frequency", names(df_Extracted_Data), ignore.case = TRUE)
names(df_Extracted_Data) <- gsub("angle", "Angle", names(df_Extracted_Data))
names(df_Extracted_Data) <- gsub("gravity", "Gravity", names(df_Extracted_Data))

## Step 14 - From the data set in step 13, creates a second, independent tidy data set with the average of
##           each variable for each activity and each subject

df_Extracted_Data$Subject <- as.factor(df_Extracted_Data$Subject)
df_Extracted_Data <- data.table(df_Extracted_Data)

td_Tidy_Data <- aggregate(. ~Subject + Activity, df_Extracted_Data, mean)
td_Tidy_Data <- td_Tidy_Data[order(td_Tidy_Data$Subject,td_Tidy_Data$Activity), ]

## Step 15 - Finally output the tidy data set to a text file

fWriteData2TextFile(td_Tidy_Data, "tidy_data.txt", FALSE)
