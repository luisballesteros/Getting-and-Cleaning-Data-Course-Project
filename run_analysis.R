# You should create one R script called run_analysis.R that does the following. 
# 1 Merges the training and the test sets to create one data set.
# 2 Extracts only the measurements on the mean and standard deviation for each 
# measurement. 
# 3 Uses descriptive activity names to name the activities in the data set
# 4 Appropriately labels the data set with descriptive variable names. 
# 5 From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
library(plyr)
library(dplyr)
library(data.table)
# 1.- Merges the training and the test sets to create one data set.
source("import_data.R")

# 2 Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
source("extract_mean_std.R")

# 3 Uses descriptive activity names to name the activities in the data set
source("descriptive_activity_names.R")

#4 Appropriately labels the data set with descriptive variable names
source("descriptive_variable_names.R")

# 5 From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
source("activity_subject_mean.R")
fwrite(mean_std_df_grouped_mean, file = "data/mean_std_df_grouped_mean.txt", 
            row.name=FALSE)
