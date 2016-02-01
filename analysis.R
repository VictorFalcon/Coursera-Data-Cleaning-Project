#0# Reading the data and naming "subject" and "activity" columns
XtrainData<- read.table("X_train.txt",quote="")
ytrainData<- read.table("y_train.txt")
sbjtrainData<-read.table("subject_train.txt")
names(sbjtrainData)<-"subject"
names(ytrainData) <-"activity"

XtestData<- read.table("X_test.txt",quote="")
ytestData<- read.table("y_test.txt")
sbjtestData<-read.table("subject_test.txt")
names(sbjtestData)<-"subject"
names(ytestData) <-"activity"


activityData<- read.table("activity_labels.txt")

featuresData<- read.table("features.txt")
features.vector<-featuresData[,2]
names(XtestData)<-features.vector
names(XtrainData)<-features.vector

#test measurements are binded to subjects and activities to create test data
#training measurements are binded to subjects and activities to create training data
testData<-cbind(sbjtestData,ytestData,XtestData)
trainData<-cbind(sbjtrainData,ytrainData,XtrainData)
#1#merging the training and test data to create one data set for the full experiment
mgData<-rbind(testData,trainData)
##########################

#2#Extracts only the measurements on the mean and standard deviation for
#each measurement.
#Each variable starting from column 3 is a measurement identifiable by
#mean() or std()
# we'll use the stringr package to extract means and std of measurements
library(stringr)
 vect1<-grep("mean",names(mgData))
 vect2<-grep("std",names(mgData))
 vect3 <-c(vect1,vect2)
MeanStdData<-mgData[,c(1,2,vect3)]
#########################

#3#Use descriptive activity names to name the activities in the dataset
for (i in seq_along(activityData$V2)){
        idx<-which(MeanStdData$activity==i)
     MeanStdData[idx,][,2] <- as.character(activityData$V2[i]) 
  
}
########################

#4#Appropriately labels the data set with descriptive variable names
names(MeanStdData)<-gsub("-", "", names(MeanStdData))
names(MeanStdData)<-gsub("\\(\\)", "", names(MeanStdData))


names(MeanStdData)<-gsub("^t", "time", names(MeanStdData))
names(MeanStdData)<-gsub("^f", "frequency", names(MeanStdData))
names(MeanStdData)<-gsub("Acc", "Accelerometer", names(MeanStdData))
names(MeanStdData)<-gsub("Gyro", "Gyroscope", names(MeanStdData))
names(MeanStdData)<-gsub("Mag", "Magnitude", names(MeanStdData))
names(MeanStdData)<-gsub("BodyBody", "Body", names(MeanStdData))

#######################

#5#From the data in step 4,create a second, independent tidy data set with
#the average of each variable for each activity and each subject.

for (i in 3:ncol(MeanStdData)) MeanStdData[,i] <- as.numeric(MeanStdData[,i])
library(dplyr)
tidyData<-MeanStdData%>%group_by(subject,activity) %>%summarize_each(funs(mean))
write.table(tidyData, file = "tidydata.txt",row.name=FALSE)

