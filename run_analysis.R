Library(plyr)

setwd("C:\\Users\\Ghazaleh\\Downloads\\R\\UCI HAR Dataset")

#Merges the training and the test sets to create one data set.

gh_x_test <- read.table("test/X_test.txt")
gh_x_train <- read.table("train/X_train.txt")
test_x_train <- rbind(gh_x_test,gh_x_train)

gh_y_test <- read.table("test/y_test.txt")
gh_y_train <- read.table("train/y_train.txt")
test_y_train <- rbind(gh_y_test,gh_y_train)

gh_subject_test <- read.table("test/subject_test.txt")
gh_subject_train <- read.table("train/subject_train.txt")
test_subject_train <- rbind(gh_subject_test,gh_subject_train)


#Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")
ext <- grep(".*mean.*|.*std.*", features[,2])

test_x_train <- test_x_train[,ext]
names(test_x_train) <- features[ext,2]


#Uses descriptive activity names to name the activities in the data set
act <- read.table("activity_labels.txt")
test_y_train[,1] <- act[test_y_train[,1],2]


#Appropriately labels the data set with descriptive variable names. 
names(test_subject_train) <- "Subject"
names(test_y_train) <- "Activity"
complete <- cbind(test_subject_train,test_y_train,test_x_train)

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Tidy = ddply(complete, c("Subject","Activity"), numcolwise(mean))
                     

