# 2 Extracts only the measurements on the mean and standard deviation for
# each measurement. 
# Select columns with "mean" or "std"
toMatch <- c("mean", "std")
names_all <- names(all_df)
select_column <- grep(paste(toMatch,collapse="|"), names_all , 
                      ignore.case = TRUE, value = FALSE)
cat("select columns of mean_std_df is: ", "\n", select_column, "\n")
names_all[select_column]
mean_std_df <- all_df %>% select(subject, activity, names_all[select_column])
cat("dim of mean_std_df is: ", dim(mean_std_df ), "\n")
cat("# 2 Extracts only the measurements on the mean and standard deviation
      for each measurement.")
str(mean_std_df)