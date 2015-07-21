## Step 1 - Clear workspace environment

rm(list=ls())
ls()

## Step 2 - Set up working directory

WD <- "E:/Big Data Course/Module 3 - Getting and Cleaning Data/Course Project"
setwd(WD)
getwd()

## Step 3 - Define functions used by the script

## Function - Read a data file into a data frame
fReadDataIntoDF <- function(readfrom, headerflag = FALSE)
{
 return(read.table(readfrom, header = headerflag))
}

## Function - Write data from data frame to text file
fWriteData2TextFile <- function(writefrom, writeto, rownamesflag = FALSE)
{
if (file.exists(writeto))
   {
    file.remove(writeto)
   }

 return(write.table(writefrom, file = writeto, row.names = rownamesflag))
}

## Step 4 - Include libraries used by the script

library(data.table, quietly = TRUE)

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
colnames(df_combined_features) <- t(df_features[2]) # Perform a transform on features names to change rows to columns

## Step 10 - Merges the training and the test data sets to create one data set

df_AllCombinedData <- cbind(df_combined_features, df_combined_activity, df_combined_subject)

## Step 11 - Extract only the measurements on the mean and standard deviation for each measurement

MeanSTDDataOnly <- grep("*mean*|*std*", names(df_AllCombinedData), ignore.case=TRUE)
ActivitySubjectOnly <- grep("Activity|Subject", names(df_AllCombinedData), ignore.case=FALSE)
Data2Extract <- c(MeanSTDDataOnly, ActivitySubjectOnly)
df_Final_Subset <- df_AllCombinedData[, Data2Extract]

## Step 12 - Use descriptive activity names to name the activities in the data set

df_Final_Subset$Activity <- as.character(df_Final_Subset$Activity)
for (i in 1:length(df_Final_Subset$Activity))
    {
     df_Final_Subset$Activity[df_Final_Subset$Activity == i] <- as.character(df_activity_labels[i, 2])
    }
df_Final_Subset$Activity <- as.factor(df_Final_Subset$Activity)

## Step 13 - Appropriately label the data set with descriptive variable names

df_Ori_Names <- c("Acc", "Gyro", "BodyBody", "Mag", "^t", "^f", "tBody", "-mean()", "-std()", "-freq()", "angle", "gravity")
df_New_Names <- c("Accelerometer", "Gyroscope", "Body", "Magnitude", "Time", "Frequency", "TimeBody", "Mean", "StandardDeviation", "Frequency", "Angle", "Gravity")

for (i in 1:length(df_Ori_Names))
    {
     names(df_Final_Subset) <- gsub(df_Ori_Names[i], df_New_Names[i], names(df_Final_Subset), ignore.case = TRUE)
    }

## Step 14 - From the data set in step 13, create a second, independent tidy data set with the average of each variable for each activity and each subject

df_Final_Subset$Subject <- as.factor(df_Final_Subset$Subject)
df_Final_Subset <- data.table(df_Final_Subset)

dt_Tidy_Data <- aggregate(. ~Subject + Activity, df_Final_Subset, mean)
dt_Tidy_Data <- dt_Tidy_Data[order(dt_Tidy_Data$Subject, dt_Tidy_Data$Activity), ]

## Step 15 - Finally output the tidy data set to a text file

fWriteData2TextFile(dt_Tidy_Data, "tidy_data.txt", FALSE)

## Clear workspace before ending the program
rm(list=ls())
ls()
