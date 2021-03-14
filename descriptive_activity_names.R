# 3 Uses descriptive activity names to name the activities in the data set
# The variable "activity" is converted from numeric to factor
mean_std_df$activity <- as.factor(mean_std_df$activity)
mean_std_df$subject <- as.factor(mean_std_df$subject)
cat("activity is: ", class(mean_std_df$activity), "\n",
    "factor levels: ", levels(mean_std_df$activity), "\n")
mean_std_df$activity <- mapvalues(mean_std_df$activity,
                                  from = activity_labels$V1, 
                                  to = activity_labels$V2)
cat("# 3 Uses descriptive activity names to name the activities 
      in the data set")
cat("factor levels new: ", levels(mean_std_df$activity), "\n")