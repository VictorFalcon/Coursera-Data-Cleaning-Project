<<<<<<< HEAD

The source data of this experiment was obtained at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

download method: Data was manual downloaded with the mouse. No programmatical method was used; then the data was check for completeness before unzipping.

For the purpose of the this project Inertial Signals data were excluded as they do not include any mean or standard deviation of measurement.This project goal is to obtained a summarized mean and standard deviation by the subjects and the activities of the experiment.

#step0:
Reading the data and naming "subject" and "activity" columns.
Read.table() with default arguments with preserve factors.

#step1
:test measurements are binded to subjects and activities to create test data ; about 30 % of the observations of the experiments.
training measurements are binded to subjects and activities to create training data;about 70 % of the observattions of the experiments.
The training and test data are merged to create one data set for the full experiment

#step2:
Extracts only the measurements on the mean and standard deviation foreach measurement.Each variable starting from column 3 is a measurement identifiable by "mean()" or "std()"

#step3:
descriptiveactivity names are used to name the activities in the experiment; walking, laying, etc...

#step4:
Descriptive variable names are passed to the variables.For instance:
prefix t is replaced by time
Acc is replaced by Accelerometer
Gyro is replaced by Gyroscope
prefix f is replaced by frequency
Mag is replaced by Magnitude
BodyBody is replaced by Body

#step5:
From the data in step 4,a tidy data set created with the average of each variable for each activity for each subject.5 NA were introduced as a result of 5 individual non numeric data present in the measurements.
dplyr package is use to write the tidy data into a text file.


=======
# Coursera-Data-Cleaning-Project
>>>>>>> 30db288193d1666cae0eb7c02708cb8794df7723
