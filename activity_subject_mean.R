# 5 From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
mean_std_df_grouped <- mean_std_df %>% group_by(subject, activity)
mean_std_df_grouped_mean <- mean_std_df_grouped %>% 
  summarise_all(mean)
cat("# 5 From the data set in step 4, creates a second, independent
    tidy data set with the average of each variable for each activity
    and each subject.")
str(mean_std_df_grouped_mean)