## Course 3: Getting and Cleaning Data
## Asignment: Course Project
## Student: Brenda Cooney

## Below is commented out code that downloads the required data files
## and unzips them. Uncomment (remove '##') if Samsung data is not dowloaded 
## to your current working directory!

## if(!require("data.table")) {
##        package.install("data.table")
## }
## tempfile <- tempfile()
## download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
##              tempfile, method = "curl")
## unzip(tempfile)
## unlink(tempfile)
## setwd("UCI HAR Dataset") ## Goto folder/dir with zippped files

## STEP 1: Merge the training and the test sets to create one data set

## Add files to tables
test_participants <- read.table("test/subject_test.txt")
train_participants <- read.table("train/subject_train.txt")
test_data <- read.table("test/X_test.txt")
train_data <- read.table("train/X_train.txt")
test_activities <- read.table("test/y_test.txt")
train_activities <- read.table("train/y_train.txt")

## Set Variable names in tables
data_var_names <- read.table("features.txt")
colnames(test_data) <- data_var_names[["V2"]]
colnames(train_data) <- data_var_names[["V2"]]
colnames(test_activities) <- c("Activity")
colnames(train_activities) <- c("Activity")
colnames(test_participants) <- c("ParticipantId")
colnames(train_participants) <- c("ParticipantId")

## Combine all tables into one dataset
combined_test <- cbind(test_participants, test_activities, test_data)
combined_train <- cbind(train_participants, train_activities, train_data)
combined_dataset <- rbind(combined_test, combined_train)

## Remove objects no longer needed from memory
remove(test_participants, train_participants, test_data, train_data,
       test_activities, train_activities, combined_test, combined_train)

## STEP 2: Extracts only the measurements on the mean and standard deviation 
##         for each measurement.

## Get sorted vector of all columns to be kept
## Note including 'meanfrequency' columns as the question specifically states that we provide the 
## mean an standard deviation for "each measurement" - frequency is a measurement
cols_keep <- grep("mean", names(combined_dataset))
cols_keep <- append(cols_keep, grep("std", names(combined_dataset)))
cols_keep <- sort.int(cols_keep)
## Get data.frame with all columns that calculate mean and std
mean_std_data <- combined_dataset[, cols_keep]
mean_std_data <- cbind(combined_dataset["ParticipantId"],
                       combined_dataset["Activity"],
                       mean_std_data)

## STEP 3: Uses descriptive activity names to name the activities in the data set

## Assign each "Activity" integer a descriptive name via a vector
mean_std_data[["Activity"]] <- factor(mean_std_data[["Activity"]], labels=c("Walking",
    "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))
             
## STEP 4: Appropriately labels the data set with descriptive variable names.

## prefix 't' is replaced by time
## 'Acc' is replaced by Accelerometer
## 'Gyro' is replaced by Gyroscope
## prefix 'f' is replaced by frequency
## 'Mag' is replaced by Magnitude
## 'BodyBody' is replaced by Body

## Letter(s) in colnames are replaces with more meaningful names
colnames(mean_std_data) <- gsub(pattern="^t", replacement="time", names(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="^f", replacement="frequency", names(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="Acc", replacement="Accelerometer", names(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="Gyro", replacement="Gyroscope", names(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="Mag", replacement="Magnitude", names(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="BodyBody", replacement="Body", names(mean_std_data))

## STEP 5: From the data set in step 4, create a second, independent tidy data set 
## Create the tidy data set
library(reshape2)
melted <- melt(mean_std_data, id=c("ParticipantId","Activity"))
tidy_data_set <- dcast(melted, ParticipantId+Activity ~ variable, mean)
## Output the data to a file
write.table(tidy_data_set, file="tidyDataSet.txt", row.names=FALSE)
 