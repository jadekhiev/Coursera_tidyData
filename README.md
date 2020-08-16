How To Use This Git
===================

Run the `run_analysis.R` located in this directory to create a
tidy data set that can be used in future analysis ([sourced from the UCI
Machine Learning
Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)).

To assess the dataset and get more information, visit the /data
directory.

run\_analysis.R
=======

This script is used to import, clean, and consolidate the test and train
datasets. It is also used to output an average of variables representing
mean and standard deviation, cut by subject and activity. There are 2
functions on this script: one is for importing and cleaning the raw
files (importCleaned) and the other is for consolidating them into
relevant datasets for this assignment (createDatasets).

data
====

All data used in the assignment has been stored in this directory.
Please see the CodeBook for more details.

### CodeBook.MD

This file contains a description of the data, variables, and
manipulations made to the data.
