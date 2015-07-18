# Data Science Specialisation - Module 3 - Getting and Cleaning Data - Course Project Readme file
This is the readme file for Data Science Specialisation - Module 3 - Getting and Cleaning Data - Course Project.

This readme explains how the R script (run_analysis.R) works.

Data used for this course project is obtained from the link below:-

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Explanation of how the R script works

# Step 1 - Clear workspace environment

  This clears the R workspace environment to free up memory.

# Step 2 - Set up working directory

  This points to the working directory where this R script is located and the directory (UCI HAR Dataset) where the data sets are located.

# Step 3 - Define functions used by the script

  2 functions are defined.

  Function 1 - Reads data to a data frame.
  Function 2 - Writes data from a data frame to a text file.

# Step 4 - Include libraries used by this script

# Step 5 - Read 'features' and 'activity labels' data to data frames

# Step 6 - Read the data files from the 'train' folder to data frames

# Step 7 - Read the data files from the 'test' folder to data frames

# Step 8 - Combine both the train and test data frames into a single data frame by subject, activity and features

# Step 9 - Put column names into the combined data frames

# Step 10 - Merges the training and the test sets to create one data set

# Step 11 - Extracts only the measurements on the mean and standard deviation for each measurement

# Step 12 - Uses descriptive activity names to name the activities in the data set

# Step 13 - Appropriately labels the data set with descriptive variable names

# Step 14 - From the data set in step 13, creates a second, independent tidy data set with the average of each variable for each activity and each subject

# Step 15 - Finally output the tidy data set to a text file

~ END ~
