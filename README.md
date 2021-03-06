---
title: "README"
author: "Brenda Cooney"
date: "February 22, 2015"
output: html_document
---

**File Purpose**:     
-----------------------------------------------------------------
The following **README** is a requirement of the [Coursera 'Getting and Clean Data - Course Project'] (https://www.coursera.org/course/getdata). Note, it should describe how script 'run_analysis.R' works.

**Course Project Info**
-----------------------------------------------------------------

- *Project Purpose*:  Demonstrate an ability to collect, work with, and clean a data set.
- *Project Goal*:     Prepare tidy data that can be used for later analysis. 
- *Project Data*:     Represents data collected from the accelerometers of the Samsung Galaxy S smartphone.
- *Download Data From*: Available [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- *Data Description*:  Available [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

**Project Requirements and Steps Taken to Implement Assignment**
---------------------------------------------------------------------------------------------

**Requirement 1**: Merges the training and the test sets to create one data set.

**Solution**

- *Step 1*: Read in 6 files from the unzipped folder "test/subject_test.txt", "train/subject_train.txt", "test/X_test.txt", "train/X_train.txt", "test/y_test.txt", and "train/y_train.txt".
- *Note*: Did not read in data from the folders 'Inertial Signals' as there is no indication that the data in these folders has anything to do with the 'mean' and 'standard deviation' a requirement for the project
- *Step 2*: The column names for data in files 'X_test' and 'X_train' is in file "features.txt". Read in column names and set them for table 'test_data' and 'train_data'.
- *Step 3*: Set the column name for the activity data, read in from files 'y_test' and 'y_train' and set in tables test_activities' and 'train_activities'. Note the activity is the actual action performed by the participants and then monitored.
- *Step 4*: Set the column name for the Participant Id, read in from files 'subject_test' and 'subject_trainand set in tables 'test_participants' and 'train_participants'. Note, experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six of the above activities.
- *Step 5*: Combine all the tables created above into one table using 'cbind' and 'rbind'.
- *Step 6*: Was not required but for good practise I removed objects no longer needed from memory, as this dataset was large.

**Requirement 2**: Extracts only the measurements on the mean and standard deviation for each measurement.

**Solution**

- *Step 1*: Get columns with the word 'mean' in them. Do this by searching for the word 'mean' in the column names using the function 'grep' .
- *Note*: Including 'meanfrequency' columns as the question specifically states that we provide the mean an standard deviation for "each measurement" - frequency is a measurement.
- *Step 2*: Get columns with the word 'std; in them. Do this by searching for the work 'std' in the column names using the function 'grep'. Append the results from 'Step 1' and 'Step 2'.
- *Step 3*: Return new data frame with columns from 'Step 1' and 'Step 2'. Then bind the 'Activity' and 'ParticipantId' columns to the new data frame.

**Requirement 3**: Uses descriptive activity names to name the activities in the data set 

**Solution**

- *Step 1*: File "activity_labels.txt" contains the names of each activity. Opened file to see what the activity numeric actually represents, then set the current numeric data values in column 'Activity' to be of type factor where the numeric now has a label or name.

**Requirement 4**: Appropriately labels the data set with descriptive variable names.

**Solution**

- *Step 1*: This dataset is very technical and its not easy to understand what the variables represent in the refined dataset. To counter this issue i read the data from the given documentation and updated the column names as best possible. Note the names are long and this is certainly not ideal but required given the technical nature of each variable. This was completed using the function 'gsub', which looks for a pattern and replaces it with the given 'replacement' value.

**Requirement 5**: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**Solution**

- *Step 1*: Melt the data into a 'tidy' data set by specifying the id's. The using 'dcast' get the mean of each varaible for each activity and each subject.
- *Step 2*: Output the data from the above to a file.