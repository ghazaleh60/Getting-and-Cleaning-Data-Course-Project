
setwd("C:\\Users\\Ghazaleh\\Downloads\\R\\UCI HAR Dataset")

gh_x_test <- read.table("test/X_test.txt")
gh_x_train <- read.table("train/X_train.txt")
test_x_train <- rbind(gh_x_test,gh_x_train)

gh_y_test <- read.table("test/y_test.txt")
gh_y_train <- read.table("train/y_train.txt")
test_y_train <- rbind(gh_y_test,gh_y_train)

gh_subject_test <- read.table("test/subject_test.txt")
gh_subject_train <- read.table("train/subject_train.txt")
test_subject_train <- rbind(gh_subject_test,gh_subject_train)

test_train <- cbind(test_x_train,test_y_train,test_subject_train)
