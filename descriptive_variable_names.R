# 4 Appropriately labels the data set with descriptive variable names
names_mean_std <- names(mean_std_df)
# Names beginning with t and f are changed to "time" and
# "frequency", respectively.
names_mean_std <- gsub("^f", "frequency", names_mean_std)
names_mean_std <- gsub("^t", "time", names_mean_std)
colnames(mean_std_df) <- names_mean_std
cat("# 4 Appropriately labels the data set with descriptive variable names.")
str(mean_std_df)