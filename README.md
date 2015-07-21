# Data Science Specialisation
### Module 3 - Getting and Cleaning Data
### Course Project Readme file

This readme file explains:-

> 1) The purpose of the project

> 2) The files contained in the GitHub repo

> 3) The source of the data

> 4) How the R script **(run_analysis.R)** works

### 1) Purpose

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
> 
> The goal is to prepare tidy data that can be used for later analysis.

### 2) Files contained in GitHub Repo

The GitHub repo consist of 4 files as detailed below:-

> 1) **README.md** - This file explains the purpose of the project and the steps in the R code.

> 2) **run_analysis.R** - The R source code used to product the Tidy Data file.

> 3) **tidy_data.txt** - Tidy Data file in .txt format.

> 4) **CodeBook.md** - This code book describes the variables, the data, and any transformations or work that was performed to clean up the data in order to produce a tidy data set.

### 3) Data Source

Data used for this course project is obtained from the link below:-

> **https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip**

### 4) Explanation of how the R script works

> **Step 1** - Clear workspace environment

  This clears the R workspace environment to free up memory.

> **Step 2** - Set up working directory

  This points to the working directory where this R script is located and the directory (UCI HAR Dataset) where the data sets are located.

> **Step 3** - Define functions used by the script

  2 functions are defined.

  Function 1 - Reads data from a data file to a data frame.
  Function 2 - Writes data from a data frame to a text file.

> **Step 4** - Include libraries used by this script

> **Step 5** - Read 'features' and 'activity labels' data to data frames

> **Step 6** - Read the data files from the 'train' folder to data frames

> **Step 7** - Read the data files from the 'test' folder to data frames

> **Step 8** - Combine both the train and test data frames into a single data frame by subject, activity and features

> **Step 9** - Put column names into the combined data frames

> **Step 10** - Merges the training and the test data sets to create one data set

> **Step 11** - Extract only the measurements on the mean and standard deviation for each measurement

> **Step 12** - Use descriptive activity names to name the activities in the data set

> **Step 13** - Appropriately label the data set with descriptive variable names

> **Step 14** - From the data set in step 13, create a second, independent tidy data set with the average of each variable for each activity and each subject

> **Step 15** - Finally output the tidy data set to a text file **(tidy_data.txt)**

~ END ~
