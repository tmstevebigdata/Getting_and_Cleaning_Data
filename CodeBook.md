# Data Science Specialisation
### Module 3 - Getting and Cleaning Data
### Course Project Code Book

This code book describes:-

> 1) The variables

> 2) The data

> 3) Work that was performed to clean up the data in order to produce a tidy data set

### 1) Variables

The following are the variables names before and after transformation:-

| Before transformation  | After transformation |
| :--------------------- | :------------------- |
| Acc                    | Accelerometer        |
| Gyro                   | Gyroscope            |
| BodyBody               | Body                 |
| Mag                    | Magnitude            |
| ^t                     | Time                 |
| ^f                     | Frequency            |
| tBody                  | TimeBody             |
| -mean()                | Mean                 |
| -std()                 | StandardDeviation    |
| -freq()                | Frequency            |
| angle                  | Angle                |
| gravity                | Gravity              |

The unit of measurement are in radians/second.

### 2) Data

The data source is taken from:-

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The datasets included in the unzipped data file is as follows:-

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

### 3) Work performed to clean up the data and produce a tidy data set

An R script called run_analysis.R is used to:-

> 1) Read the 'features' and 'activity labels' data.

> 2) Read the data sets contained in the 'train' and 'test' folders and combine them into a single data set.

> 3) Put proper column names for the data.

> 4) Extract only the measurements on the mean and standard deviation for each measurement.

> 5) Use descriptive activity names to name the activities in the data set.

> 6) Appropriately label the data set with descriptive variable names.

> 7) From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

> 8) Finally output the tidy data set to a text file.

~ END ~
