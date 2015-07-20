# Data Science Specialisation
### Module 3 - Getting and Cleaning Data
### Course Project Code Book

This code book describes:-

> 1) The variables

> 2) The data

> 3) Work that was performed to clean up the data in order to produce a tidy data set

### 1) Variables

The following are the variables names before and after transformation:-

| Before transformation | After transformation |
| :-------------------- | :------------------- |
| Acc                   | Accelerometer        |
| Gyro                  | Gyroscope            |
| BodyBody              | Body                 |
| Mag                   | Magnitude            |
| ^t                    | Time                 |
| ^f                    | Frequency            |
| tBody                 | TimeBody             |
| -mean()               | Mean                 |
| -std()                | StandardDeviation    |
| -freq()               | Frequency            |
| angle                 | Angle                |
| gravity               | Gravity              |

The following are the list of all variables in the tidy data set:-

| No. | Variable Name                                        |
| :-- | :--------------------------------------------------- |
| 1   | Subject                                              |
| 2   | Activity                                             |
| 3   | TimeBodyAccelerometerMean()-X                        |
| 4   | TimeBodyAccelerometerMean()-Y                        |
| 5   | TimeBodyAccelerometerMean()-Z                        |
| 6   | TimeBodyAccelerometerSTD()-X                         |
| 7   | TimeBodyAccelerometerSTD()-Y                         |
| 8   | TimeBodyAccelerometerSTD()-Z                         |
| 9   | TimeGravityAccelerometerMean()-X                     |
| 10  | TimeGravityAccelerometerMean()-Y                     |
| 11  | TimeGravityAccelerometerMean()-Z                     |
| 12  | TimeGravityAccelerometerSTD()-X                      |
| 13  | TimeGravityAccelerometerSTD()-Y                      |
| 14  | TimeGravityAccelerometerSTD()-Z                      |
| 15  | TimeBodyAccelerometerJerkMean()-X                    |
| 16  | TimeBodyAccelerometerJerkMean()-Y                    |
| 17  | TimeBodyAccelerometerJerkMean()-Z                    |
| 18  | TimeBodyAccelerometerJerkSTD()-X                     |
| 19  | TimeBodyAccelerometerJerkSTD()-Y                     |
| 20  | TimeBodyAccelerometerJerkSTD()-Z                     |
| 21  | TimeBodyGyroscopeMean()-X                            |
| 22  | TimeBodyGyroscopeMean()-Y                            |
| 23  | TimeBodyGyroscopeMean()-Z                            |
| 24  | TimeBodyGyroscopeSTD()-X                             |
| 25  | TimeBodyGyroscopeSTD()-Y                             |
| 26  | TimeBodyGyroscopeSTD()-Z                             |
| 27  | TimeBodyGyroscopeJerkMean()-X                        |
| 28  | TimeBodyGyroscopeJerkMean()-Y                        |
| 29  | TimeBodyGyroscopeJerkMean()-Z                        |
| 30  | TimeBodyGyroscopeJerkSTD()-X                         |
| 31  | TimeBodyGyroscopeJerkSTD()-Y                         |
| 32  | TimeBodyGyroscopeJerkSTD()-Z                         |
| 33  | TimeBodyAccelerometerMagnitudeMean()                 |
| 34  | TimeBodyAccelerometerMagnitudeSTD()                  |
| 35  | TimeGravityAccelerometerMagnitudeMean()              |
| 36  | TimeGravityAccelerometerMagnitudeSTD()               |
| 37  | TimeBodyAccelerometerJerkMagnitudeMean()             |
| 38  | TimeBodyAccelerometerJerkMagnitudeSTD()              |
| 39  | TimeBodyGyroscopeMagnitudeMean()                     |
| 40  | TimeBodyGyroscopeMagnitudeSTD()                      |
| 41  | TimeBodyGyroscopeJerkMagnitudeMean()                 |
| 42  | TimeBodyGyroscopeJerkMagnitudeSTD()                  |
| 43  | FrequencyBodyAccelerometerMean()-X                   |
| 44  | FrequencyBodyAccelerometerMean()-Y                   |
| 45  | FrequencyBodyAccelerometerMean()-Z                   |
| 46  | FrequencyBodyAccelerometerSTD()-X                    |
| 47  | FrequencyBodyAccelerometerSTD()-Y                    |
| 48  | FrequencyBodyAccelerometerSTD()-Z                    |
| 49  | FrequencyBodyAccelerometerMeanFreq()-X               |
| 50  | FrequencyBodyAccelerometerMeanFreq()-Y               |
| 51  | FrequencyBodyAccelerometerMeanFreq()-Z               |
| 52  | FrequencyBodyAccelerometerJerkMean()-X               |
| 53  | FrequencyBodyAccelerometerJerkMean()-Y               |
| 54  | FrequencyBodyAccelerometerJerkMean()-Z               |
| 55  | FrequencyBodyAccelerometerJerkSTD()-X                |
| 56  | FrequencyBodyAccelerometerJerkSTD()-Y                |
| 57  | FrequencyBodyAccelerometerJerkSTD()-Z                |
| 58  | FrequencyBodyAccelerometerJerkMeanFreq()-X           |
| 59  | FrequencyBodyAccelerometerJerkMeanFreq()-Y           |
| 60  | FrequencyBodyAccelerometerJerkMeanFreq()-Z           |
| 61  | FrequencyBodyGyroscopeMean()-X                       |
| 62  | FrequencyBodyGyroscopeMean()-Y                       |
| 63  | FrequencyBodyGyroscopeMean()-Z                       |
| 64  | FrequencyBodyGyroscopeSTD()-X                        |
| 65  | FrequencyBodyGyroscopeSTD()-Y                        |
| 66  | FrequencyBodyGyroscopeSTD()-Z                        |
| 67  | FrequencyBodyGyroscopeMeanFreq()-X                   |
| 68  | FrequencyBodyGyroscopeMeanFreq()-Y                   |
| 69  | FrequencyBodyGyroscopeMeanFreq()-Z                   |
| 70  | FrequencyBodyAccelerometerMagnitudeMean()            |
| 71  | FrequencyBodyAccelerometerMagnitudeSTD()             |
| 72  | FrequencyBodyAccelerometerMagnitudeMeanFreq()        |
| 73  | FrequencyBodyAccelerometerJerkMagnitudeMean()        |
| 74  | FrequencyBodyAccelerometerJerkMagnitudeSTD()         |
| 75  | FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()    |
| 76  | FrequencyBodyGyroscopeMagnitudeMean()                |
| 77  | FrequencyBodyGyroscopeMagnitudeSTD()                 |
| 78  | FrequencyBodyGyroscopeMagnitudeMeanFreq()            |
| 79  | FrequencyBodyGyroscopeJerkMagnitudeMean()            |
| 80  | FrequencyBodyGyroscopeJerkMagnitudeSTD()             |
| 81  | FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()        |
| 82  | Angle(TimeBodyAccelerometerMean,Gravity)             |
| 83  | Angle(TimeBodyAccelerometerJerkMean),GravityMean)    |
| 84  | Angle(TimeBodyGyroscopeMean,GravityMean)             |
| 85  | Angle(TimeBodyGyroscopeJerkMean,GravityMean)         |
| 86  | Angle(X,GravityMean)                                 |
| 87  | Angle(Y,GravityMean)                                 |
| 88  | Angle(Z,GravityMean)                                 |

> Note: The unit of measurement are in radians/second.

### 2) Data

The original data is derived from the "Human Activity Recognition Using Smartphones Data Set".

For a detailed explanation of the data set, refer to the following link:-

> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data source is taken from:-

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The datasets included in the unzipped data source file is as follows:-

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
