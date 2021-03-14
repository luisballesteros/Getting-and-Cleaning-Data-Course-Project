# 1 Merges the training and the test sets to create one data set.
# import files
# features.txt features of X_* files
# activity_labels.txt labels of y_* files
# subject* 30 volunteers within an age bracket of 19-48 years
# *_test 30% of the volunteers was selected for generating the test data.
# *_train 70% of the volunteers was selected for generating the training data
# X_* 561-feature vector with time and frequency domain variables.
# y_* activity label.
print("import file to data frame")
features <- fread("data/features.txt")
activity_labels <- fread("data/activity_labels.txt")
subject_test <- fread("data/test/subject_test.txt", col.names = "subject")
X_test <- fread("data/test/X_test.txt", col.names = features$V2)
y_test <- fread("data/test/y_test.txt", col.names = "activity")
subject_train <- fread("data/train/subject_train.txt", col.names = "subject")
X_train <- fread( "data/train/X_train.txt", col.names = features$V2)
y_train <- fread("data/train/y_train.txt", col.names = "activity")

# Data frames are joined by columns with "cbind". Join two dateframes in a 
# temporary variable and join the third date frame again with "cbind".
# The data frames of the test series are joined
print("# 1 Merges the training and the test sets to create one data set.")
print("join data frame")
temp_var <- cbind(subject_test, y_test)
test_df <- cbind(temp_var, X_test)
cat("dim of test_df is: ", dim(test_df), "\n")
# The data frames of the train series are joined
temp_var <- cbind(subject_train, y_train)
train_df <- cbind(temp_var, X_train)
cat("dim of train_df is: ", dim(train_df), "\n")
#The data frames "train" and "test" are joined by rows.
all_df <- rbind(test_df, train_df)
cat("dim of train_df is: ", dim(all_df), "\n")