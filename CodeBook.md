# Data Science Specialisation - Module 3 - Getting and Cleaning Data - Course Project Code Book

This code book describes the variables, the data, and any transformations or work that was performed to clean up the data in order to produce a tidy data set.


# Variables



# Data

The data source is from:-

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


# Work performed to clean up the data and produce a tidy data set

An R script called run_analysis.R is used to:-

1) Read the 'features' and 'activity labels' data.

2) Read the data sets contained in the 'train' and 'test' folders and combine them into a single data set.

3) Put proper column names for the data.

4) Extracts only the measurements on the mean and standard deviation for each measurement.

5) Uses descriptive activity names to name the activities in the data set.

6) Appropriately label the data set with descriptive variable names.

7) From the data set in step 4, creates a second, independent tidy data set with the average of
   each variable for each activity and each subject

8) Finally output the tidy data set to a text file.


~ END ~
