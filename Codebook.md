
In this project I built Tidy.txt as my cleaned dataset
for the first part I have resd the test and train txt files for x,y and subject then merged them in three variables named:

test_x_train
test_y_train
test_subject_train

Then for next step I read features.txt file and choosed the items which includ mean or std and put it to ext variable then 
I assigned the related items to test_x_train.

For the third step I assigned names to the related rows of test_y_train based on activity_labels.txt items from previuos 
step.

For forth step we have test_subject_train and test_y_train which should assign labeles Subject and Activity to them and 
bind all columns and named it "complete".

And for the last step I built new independent tidy dataset from "complete" and named it "Tidy" and calculate the average 
for each activity for each variable.
