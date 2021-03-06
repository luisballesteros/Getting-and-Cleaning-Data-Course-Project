# R - Getting and Cleaning Data Course Project
Tareas calificadas por los compañeros: Getting and Cleaning Data Course Project (R)

## Getting Started
Final evaluation of the Coursera course ["Getting and Cleaning Data Course Project"](https://www.coursera.org/learn/data-cleaning).

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set with R.

### Review criteria
1) The submitted data set is tidy. 
2) The Github repo contains the required scripts.
3) GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4) The README that explains the analysis files is clear and understandable.
5) The work submitted for this project is the work of the student who submitted it.

### Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:
1) a tidy data set as described below,
2) a link to a Github repository with your script for performing the analysis, and
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this [article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project:

 [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Information on project data
The data come from  Human Activity Recognition Using Smartphones Dataset (Version 1.0)

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The authors indicate in their Readme.txt

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

> For each record it is provided:
>- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
>- Triaxial Angular velocity from the gyroscope. 
>- A 561-feature vector with time and frequency domain variables. 
>- Its activity label. 
>- An identifier of the subject who carried out the experiment.

The following files have been used:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

They have been downloaded to the folder "./data".

## Approach
**Hadley Wickham's** approach was followed in his article **"Tidy Data"** in the Journal of Statistical Software (August 2014, Volume 59, Issue 10).
>A dataset is messy or tidy depending on how rows, columns and tables are matched up with observations,variables and types. In tidy data:
>1. Each variable forms a column.
>2. Each observation forms a row.
>3. Each type of observational unit forms a table.

Regarding the wide or long format, the **wide format** has been chosen because it is more appropriate for the resolution of the problem posed.

## R | Rstudio | OS used
R | Rstudio
platform       x86_64-pc-linux-gnu         
arch           x86_64                      
os             linux-gnu                   
system         x86_64, linux-gnu           
status                                     
major          4                           
minor          0.3                         
year           2020                        
month          10                          
day            10                          
svn rev        79318                       
language       R                           
version.string R version 4.0.3 (2020-10-10)
nickname       Bunny-Wunnies Freak Out  

## Installing library
* library(plyr)
* library(dplyr)
* library(data.table)

## Scripts

Following the indications given in David Hood's article, and in order to separate each of the steps of the exercise, a master script run_analysis.R has been created to call each of the scripts (steps of the exercise).

0.- **run_analysis.R** imports the libraries and answers the 5 questions by calling 5 different scripts in which the five requested steps are executed.

2.- Merges the training and the test sets to create one data set.  
**import_data.R**

2 Extracts only the measurements on the mean and standard deviation for each measurement.  
**extract_mean_std.R**

3 Uses descriptive activity names to name the activities in the data set  
**descriptive_activity_names.R**

4 Appropriately labels the data set with descriptive variable names  
**descriptive_variable_names.R**

5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
**activity_subject_mean.R**


## Code book
Detailed information on the processes, variables and data frames that have been created or used can be found in the code book.


## Acknowledgments
[thoughtfulbloke aka David Hood](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/)  

[Hadley Wickham's article "Tidy Data" in the Journal of Statistical Software (August 2014, Volume 59, Issue 10)](https://www.jstatsoft.org/index.php/jss/article/view/v059i10/v59i10.pdf)  

[Markdown syntaxis](https://markdown.es/sintaxis-markdown/)

