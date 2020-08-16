# libraries
library(data.table)
library(tidyverse)

# this function is used to complete the following requirements:
## "3. Uses descriptive activity names to name the activities in the data set"
## "4. Appropriately labels the data set with descriptive variable names."
importCleaned <- function() {
        # data 
        data_dir <- ".../Coursera_TidyData/data/"
        test_dir <- ".../Coursera_TidyData/data/test/"
        train_dir <- ".../Coursera_TidyData/data/train/"
        
        # data dir
        # pull lookup tables
        setwd(data_dir)
        ftrLkp_df <<- fread("features.txt")
        activityLkp_df <- fread("activity_labels.txt")
        
        # rename lookup columns
        setnames(ftrLkp_df,c("V1","V2"), c("colNum","colName"))
        setnames(activityLkp_df,c("V1","V2"), c("activity_label","activity"))
        
        # pull test data
        dir=test_dir
        type=list("test","test.txt")
        
        assign(paste0("subject_",type[1]),read.delim(paste0(dir, "subject_",type[2]), header = FALSE, sep = "\t"))
        assign(paste0("X_",type[1]),read.delim(paste0(dir, "X_",type[2]), header = FALSE, sep = "\t"))
        assign(paste0("y_",type[1]),read.delim(paste0(dir, "y_",type[2]), header = FALSE, sep = "\t"))
        
        # format subject data
        setnames(subject_test,"V1","subject")
        subject_test <<- data.table(subject_test)
        
        
        # format feature data
        ## reassign column from factor to character
        X_test$"V1" <- as.character(X_test$"V1")
        ## trim white space, split columns
        X_test <- strsplit(trimws(X_test[,"V1"])," |  ")
        ## convert to data table
        X_test <- data.table(Reduce(rbind,X_test))
        ## convert to numeric
        X_test <<- X_test[,lapply(.SD, as.numeric)]
        ## assign proper feature names
        colnames(X_test) <<- c(ftrLkp_df$colName)
        
        # format label dataset
        y_test <- data.table(y_test)
        ## clean up colname
        y_test <- setnames(y_test, "V1", "activity_label")
        ## attach activity name
        y_test <<- merge(y_test, activityLkp_df)
        
        # pull train data
        dir=train_dir
        type=list("train","train.txt")
        
        assign(paste0("subject_",type[1]),read.delim(paste0(dir, "subject_",type[2]), header = FALSE, sep = "\t"))
        assign(paste0("X_",type[1]),read.delim(paste0(dir, "X_",type[2]), header = FALSE, sep = "\t"))
        assign(paste0("y_",type[1]),read.delim(paste0(dir, "y_",type[2]), header = FALSE, sep = "\t"))
        
        # format subject data
        setnames(subject_train,"V1","subject")
        subject_train <<- data.table(subject_train)
        
        # format feature data
        ## reassign column from factor to character
        X_train$"V1" <- as.character(X_train$"V1")
        ## trim white space, split columns
        X_train <- strsplit(trimws(X_train[,"V1"])," |  ")
        ## convert to data table
        X_train <- data.table(Reduce(rbind,X_train))
        ## convert to numeric
        X_train <<- X_train[,lapply(.SD, as.numeric)]
        ## assign proper feature names
        colnames(X_train) <<- c(ftrLkp_df$colName)
        
        # format label data
        y_train <- data.table(y_train)
        ## clean up colname
        setnames(y_train, "V1", "activity_label")
        ## attach activity name
        y_train <<- merge(y_train, activityLkp_df)
        
}

# this function is used to complete the following requirements:
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 1. Merges the training and the test sets to create one data set.
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
createDatasets <- function(subject_test, X_test, y_test, subject_train, X_train, y_train) {
        
        
        # limit features to only mean and standard deviations
        cols <- grep("mean\\(\\)|std\\(\\)",names(X_test),value=TRUE)
        X_test <- X_test[,cols,with=FALSE]
        
        cols <- grep("mean\\(\\)|std\\(\\)",names(X_train),value=TRUE)
        X_train <- X_train[,cols,with=FALSE]
        
        # combine test and train sets
        test_dt <- cbind(subject_test, X_test, y_test)
        train_dt <- cbind(subject_train, X_train, y_train)
        fullSet_dt <<- rbind(test_dt, train_dt) 
        
        # create dataset containing averages of variables by subject, activity
        avgVars_dt <<- fullSet_dt[,lapply(.SD, mean),by=.(subject,activity_label,activity)]
        
}

# import raw datasets and format them
importCleaned()

# create relevant datasets
createDatasets(subject_test, X_test, y_test, subject_train, X_train, y_train)
#setwd(".../Coursera_TidyData/")
#write.table(avgVars_dt, "avgVars_bySubject_Activity.txt", row.name=FALSE)
