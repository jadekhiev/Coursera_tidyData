Dataset Description
-------------------

A comprehensive description of the full dataset can be found in
data/README.txt.

For our purposes, we have created 2 datasets for analysis. The first one
is called `fullSet_dt` which contains mean and standard deviation
variables by test subject and activity. The second is called
`avgVars_dt` which contains the averages of each variable in
`fullSet_dt` by subject and activity.

Final Variables and Manipulations
---------------------------------

The test and train datasets shared the same process and were each split
into 5 parts: activity labels (shared), feature labels (shared), subject
data, feature data, and activity data.

### Import & Cleaning

Activity and feature labels were first imported and had their columns
appropriately named (completed using fread). Feature data was read with
tab delimition, converted to character from factor, and then columns
were split by single OR double space (" “|” "). The data was then
converted into a data table, converted from character to numeric, and
had the appropriate feature labels applied to them (i.e. respected the
order of the file). Activity was read using fread and to close up the
data cleaning, a left join was performed to match the activity labels to
their human-friendly names and the columns were appropriately renamed.

### Consolidation

Regex was used to subset the features for only those that represented a
mean or standard deviation calculation. Once that was completed, test
and train sets were created separately by combining their subject,
feature, activity data and finally these two sets were unioned to create
the complete dataset. An additional dataset was created using basic data
table functions to find the averages of our subsetted data by subject
and activity.

### Statistical descriptions of each column in the dataset can be found below and full definitions can be found under /date/README.MD.

$`subject` 

Represents participant. Range is from 1-30.

$`tBodyAcc-mean()-X` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|0.2626|0.2772|0.2743|0.2884|1.0000|

$`tBodyAcc-mean()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
-1.00000|-0.02490|-0.01716|-0.01774|-0.01062|1.00000|

$`tBodyAcc-mean()-Z` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.00000|-0.12102|-0.10860|-0.10892|-0.09759|1.00000|

$`tBodyAcc-std()-X` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9924|-0.9430|-0.6078|-0.2503|1.0000|

$`tBodyAcc-std()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.00000|-0.97699|-0.83503|-0.51019|-0.05734|1.00000|

$`tBodyAcc-std()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9791|-0.8508|-0.6131|-0.2787|1.0000|

$`tGravityAcc-mean()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|0.8117|0.9218|0.6692|0.9547|1.0000|

$`tGravityAcc-mean()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.000000|-0.242943|-0.143551|0.004039|0.118905|1.000000|

$`tGravityAcc-mean()-Z` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.00000|-0.11671|0.03680|0.09215|0.21621|1.00000|

$`tGravityAcc-std()-X` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9949|-0.9819|-0.9652|-0.9615|1.0000|

$`tGravityAcc-std()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9913|-0.9759|-0.9544|-0.9464|1.0000|

$`tGravityAcc-std()-Z` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9866|-0.9665|-0.9389|-0.9296|1.0000|

$`tBodyAccJerk-mean()-X` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|0.06298|0.07597|0.07894|0.09131|1.00000|

$`tBodyAccJerk-mean()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.018555|0.010753|0.007948|0.033538|1.000000|

$`tBodyAccJerk-mean()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.031552|-0.001159|-0.004675|0.024578|1.000000|

$`tBodyAccJerk-std()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9913|-0.9513|-0.6398|-0.2912|1.0000|

$`tBodyAccJerk-std()-Y`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9850|-0.9250|-0.6080|-0.2218|1.0000|

$`tBodyAccJerk-std()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9892|-0.9543|-0.7628|-0.5485|1.0000|

$`tBodyGyro-mean()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.04579|-0.02776|-0.03098|-0.01058|1.00000|s

$`tBodyGyro-mean()-Y`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.10399|-0.07477|-0.07472|-0.05110|1.00000|

$`tBodyGyro-mean()-Z` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|0.06485 0.08626 0.08836 0.11044|1.00000|

$`tBodyGyro-std()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9872|-0.9016|-0.7212|-0.4822|1.0000|

$`tBodyGyro-std()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9819|-0.9106|-0.6827|-0.4461|1.0000|

$`tBodyGyro-std()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9850|-0.8819|-0.6537|-0.3379|1.0000|

$`tBodyGyroJerk-mean()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.11723|-0.09824|-0.09671|-0.07930|1.00000|

$`tBodyGyroJerk-mean()-Y`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.05868|-0.04056|-0.04232|-0.02521|1.00000|

$`tBodyGyroJerk-mean()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.07936|-0.05455|-0.05483|-0.03168|1.00000|

$`tBodyGyroJerk-std()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9907|-0.9348|-0.7313|-0.4865|1.0000|

$`tBodyGyroJerk-std()-Y`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9922|-0.9548|-0.7861|-0.6268|1.0000|

$`tBodyGyroJerk-std()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9926|-0.9503|-0.7399|-0.5097|1.0000|

$`tBodyAccMag-mean()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9819|-0.8746|-0.5482|-0.1201|1.0000|

$`tBodyAccMag-std()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9822|-0.8437|-0.5912|-0.2423|1.0000|

$`tGravityAccMag-mean()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9819|-0.8746|-0.5482|-0.1201|1.0000|

$`tGravityAccMag-std()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9822|-0.8437|-0.5912|-0.2423|1.0000|

$`tBodyAccJerkMag-mean()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9896|-0.9481|-0.6494|-0.2956|1.0000|

$`tBodyAccJerkMag-std()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9907|-0.9288|-0.6278|-0.2733|1.0000|

$`tBodyGyroMag-mean()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9781|-0.8223|-0.6052|-0.2454|1.0000|

$`tBodyGyroMag-std()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9775|-0.8259|-0.6625|-0.3940|1.0000|

$`tBodyGyroJerkMag-mean()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9923|-0.9559|-0.7621|-0.5499|1.0000|

$`tBodyGyroJerkMag-std()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9922|-0.9403|-0.7780|-0.6093|1.0000|

$`fBodyAcc-mean()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9913|-0.9456|-0.6228|-0.2646|1.0000|

$`fBodyAcc-mean()-Y`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9792|-0.8643|-0.5375|-0.1032|1.0000|

$`fBodyAcc-mean()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9832|-0.8954|-0.6650|-0.3662|1.0000|

$`fBodyAcc-std()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9929|-0.9416|-0.6034|-0.2493|1.0000|

$`fBodyAcc-std()-Y`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.97689|-0.83261|-0.52842|-0.09216|1.00000|

$`fBodyAcc-std()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9780|-0.8398|-0.6179|-0.3023|1.0000|

$`fBodyAccJerk-mean()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9912|-0.9516|-0.6567|-0.3270|1.0000|

$`fBodyAccJerk-mean()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9848|-0.9257|-0.6290|-0.2638|1.0000|

$`fBodyAccJerk-mean()-Z` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9873|-0.9475|-0.7436|-0.5133|1.0000|

$`fBodyAccJerk-std()-X` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9920|-0.9562|-0.6550|-0.3203|1.0000|

$`fBodyAccJerk-std()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9865|-0.9280|-0.6122|-0.2361|1.0000|

$`fBodyAccJerk-std()-Z` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9895|-0.9590|-0.7809|-0.5903|1.0000|

$`fBodyGyro-mean()-X` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9853|-0.8917|-0.6721|-0.3837|1.0000|

$`fBodyGyro-mean()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9847|-0.9197|-0.7062|-0.4735|1.0000|

$`fBodyGyro-mean()-Z`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9851|-0.8877|-0.6442|-0.3225|1.0000|

$`fBodyGyro-std()-X`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9881|-0.9053|-0.7386|-0.5225|1.0000|

$`fBodyGyro-std()-Y` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9808|-0.9061|-0.6742|-0.4385|1.0000|

$`fBodyGyro-std()-Z` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9862|-0.8915|-0.6904|-0.4168|1.0000|

$`fBodyAccMag-mean()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9847|-0.8755|-0.5860|-0.2173|1.0000|

$`fBodyAccMag-std()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9829|-0.8547|-0.6595|-0.3823|1.0000|

$`fBodyBodyAccJerkMag-mean()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9898|-0.9290|-0.6208|-0.2600|1.0000|

$`fBodyBodyAccJerkMag-std()` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9907|-0.9255|-0.6401|-0.3082|1.0000|

$`fBodyBodyGyroMag-mean()`

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9825|-0.8756|-0.6974|-0.4514|1.0000|

$`fBodyBodyGyroMag-std()` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9781|-0.8275|-0.7000|-0.4713|1.0000|

$`fBodyBodyGyroJerkMag-mean()` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9921|-0.9453|-0.7798|-0.6122|1.0000|

$`fBodyBodyGyroJerkMag-std()` 

|Min.|1st Qu.|Median|Mean|3rd Qu.|Max.|
|----|-------|------|----|-------|----|
|-1.0000|-0.9926|-0.9382|-0.7922|-0.6437|1.0000|

$`activity_label` 

Represents activity (numerically) being captured.

|Value|1|2|3|4|5|6|
|-----|-|-|-|-|-|-|
|Frequency|1722|1544|1406|1777|1906|1944|

$`activity` 

Represents activity (in words) being captured.

|Values|LAYING|SITTING|STANDING|WALKING|WALKING\_DOWNSTAIRS|WALKING\_UPSTAIRS|
|------|------|-------|--------|-------|-------------------|-----------------|
|Frequency|1944|1777|1906|1722|1406|1544|

