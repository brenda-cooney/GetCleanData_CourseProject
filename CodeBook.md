---
title: "CodeBook"
author: "Brenda Cooney"
date: "February 22, 2015"
output: html_document
---

**File Purpose**:     The following **CodeBook** is a requirement of the [Coursera 'Getting and Clean Data - Course Project'] (https://www.coursera.org/course/getdata). Note, it's purpose is to describe the variables, the data, and any transformations or work that was performed to clean up the data given from the links below.

**Course Project Info**
**Project Data**:     Represents data collected from the accelerometers of the Samsung Galaxy S smartphone.
*Download Data From*: Available [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
*Data Description*:  Available [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

**Data Description**: Experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

**Resulting DataSet**: A tidy set was created that consided of the following variables.
**Variables**:     
*Variable Name*:  ParticipantId
*Description*:    Identification for each participant in the study (no names provided)
*Type*:           Numeric
*VALUE*:
                1 - Participant 1
                2 - Participant 2
                3 - Participant 3
                4 - Participant 4
                5 - Participant 5
                6 - Participant 6
                7 - Participant 7
                8 - Participant 8
                9 - Participant 9
                10 - Participant 10
                11 - Participant 11
                12 - Participant 12
                13 - Participant 13
                14 - Participant 14
                15 - Participant 15
                16 - Participant 16
                17 - Participant 17
                18 - Participant 18
                19 - Participant 19
                20 - Participant 20
                21 - Participant 21
                22 - Participant 22
                23 - Participant 23
                24 - Participant 24
                25 - Participant 25
                26 - Participant 26
                27 - Participant 27
                28 - Participant 28
                29 - Participant 29
                30 - Participant 30
                
*Variable Name*: Activity
*Description*:   The action performed by the participants
*Type*:          Factor
*VALUE And LABEL*:
                1 - WALKING
                2 - WALKING_UPSTAIRS
                3 - WALKING_DOWNSTAIRS
                4 - SITTING
                5 - STANDING
                6 - LAYING

*Remaining Variables*: Below is a list of the remaining variables
*Description*: 
        - 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions
        - mean(): Mean value
        - std(): Standard deviation
        - meanFreq(): Weighted average of the frequency components to obtain a mean frequency
*Type*: Numeric
"timeBodyAccelerometer-mean()-X"                        
"timeBodyAccelerometer-mean()-Y"                        
"timeBodyAccelerometer-mean()-Z"                        
"timeBodyAccelerometer-std()-X"                         
"timeBodyAccelerometer-std()-Y"                         
"timeBodyAccelerometer-std()-Z"                         
"timeGravityAccelerometer-mean()-X"                     
"timeGravityAccelerometer-mean()-Y"                     
"timeGravityAccelerometer-mean()-Z"                     
"timeGravityAccelerometer-std()-X"                      
"timeGravityAccelerometer-std()-Y"                      
"timeGravityAccelerometer-std()-Z"                      
"timeBodyAccelerometerJerk-mean()-X"                    
"timeBodyAccelerometerJerk-mean()-Y"                    
"timeBodyAccelerometerJerk-mean()-Z"                    
"timeBodyAccelerometerJerk-std()-X"                     
"timeBodyAccelerometerJerk-std()-Y"                     
"timeBodyAccelerometerJerk-std()-Z"                     
"timeBodyGyroscope-mean()-X"                            
"timeBodyGyroscope-mean()-Y"                            
"timeBodyGyroscope-mean()-Z"                            
"timeBodyGyroscope-std()-X"                             
"timeBodyGyroscope-std()-Y"                             
"timeBodyGyroscope-std()-Z"                             
"timeBodyGyroscopeJerk-mean()-X"                        
"timeBodyGyroscopeJerk-mean()-Y"                        
"timeBodyGyroscopeJerk-mean()-Z"                        
"timeBodyGyroscopeJerk-std()-X"                         
"timeBodyGyroscopeJerk-std()-Y"                         
"timeBodyGyroscopeJerk-std()-Z"                         
"timeBodyAccelerometerMagnitude-mean()"                 
"timeBodyAccelerometerMagnitude-std()"                  
"timeGravityAccelerometerMagnitude-mean()"              
"timeGravityAccelerometerMagnitude-std()"               
"timeBodyAccelerometerJerkMagnitude-mean()"             
"timeBodyAccelerometerJerkMagnitude-std()"              
"timeBodyGyroscopeMagnitude-mean()"                     
"timeBodyGyroscopeMagnitude-std()"                      
"timeBodyGyroscopeJerkMagnitude-mean()"                 
"timeBodyGyroscopeJerkMagnitude-std()"                  
"frequencyBodyAccelerometer-mean()-X"                   
"frequencyBodyAccelerometer-mean()-Y"                   
"frequencyBodyAccelerometer-mean()-Z"                   
"frequencyBodyAccelerometer-std()-X"                    
"frequencyBodyAccelerometer-std()-Y"                    
"frequencyBodyAccelerometer-std()-Z"                    
"frequencyBodyAccelerometer-meanFreq()-X"               
"frequencyBodyAccelerometer-meanFreq()-Y"               
"frequencyBodyAccelerometer-meanFreq()-Z"               
"frequencyBodyAccelerometerJerk-mean()-X"               
"frequencyBodyAccelerometerJerk-mean()-Y"               
"frequencyBodyAccelerometerJerk-mean()-Z"               
"frequencyBodyAccelerometerJerk-std()-X"                
"frequencyBodyAccelerometerJerk-std()-Y"                
"frequencyBodyAccelerometerJerk-std()-Z"                
"frequencyBodyAccelerometerJerk-meanFreq()-X"           
"frequencyBodyAccelerometerJerk-meanFreq()-Y"           
"frequencyBodyAccelerometerJerk-meanFreq()-Z"           
"frequencyBodyGyroscope-mean()-X"                       
"frequencyBodyGyroscope-mean()-Y"                       
"frequencyBodyGyroscope-mean()-Z"                       
"frequencyBodyGyroscope-std()-X"                        
"frequencyBodyGyroscope-std()-Y"                        
"frequencyBodyGyroscope-std()-Z"                        
"frequencyBodyGyroscope-meanFreq()-X"                   
"frequencyBodyGyroscope-meanFreq()-Y"                   
"frequencyBodyGyroscope-meanFreq()-Z"                   
"frequencyBodyAccelerometerMagnitude-mean()"            
"frequencyBodyAccelerometerMagnitude-std()"             
"frequencyBodyAccelerometerMagnitude-meanFreq()"        
"frequencyBodyBodyAccelerometerJerkMagnitude-mean()"    
"frequencyBodyBodyAccelerometerJerkMagnitude-std()"     
"frequencyBodyBodyAccelerometerJerkMagnitude-meanFreq()"
"frequencyBodyBodyGyroscopeMagnitude-mean()"            
"frequencyBodyBodyGyroscopeMagnitude-std()"             
"frequencyBodyBodyGyroscopeMagnitude-meanFreq()"        
"frequencyBodyBodyGyroscopeJerkMagnitude-mean()"        
"frequencyBodyBodyGyroscopeJerkMagnitude-std()"         
"frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()"