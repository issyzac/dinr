## 1. Import Data

setwd("/home/issyzack/Documents/DEDP/Data Science for Social Scientists/Dinr")

#Header
sample_csv <- read.csv("data/Bihar_sample_data.csv", header = TRUE)
sample_csv <- read.csv("data/Bihar_sample_data.csv", header = FALSE) #This will use the first row as a data point
#sep
sample_text <- read.table("data/data-export.txt", sep = ",", header = TRUE)


## Asses Data
# After importing the data you can view it to see if it was correctly loaded, here you can use Summary Function
summary(sample_text)
nrow(sample_text) # Check the number of rows
ncol(sample_text) # Check number of columns

max(sample_csv) # This will only work for and all numeric data
max(sample_text) # This will give you the result
min(sample_text)
unique(sample_text) # Gives you all the unique instances on your data set

unique(sample_text$X28.Day) # Gives you a set of unique values within a specific column
sort(unique(sample_text$X28.Day)) # This will sort the data based on a specified column
length(unique(sample_text$X28.Day)) # Here we see how many unique entries are there in the specified column

which(sample_text$X28.Day==1) # This will let you know what is the row content of the column that has a value specified
length(which(sample_text$X28.Day==1)) # How many data points we have that have a specified value in a specified column

is.matrix(sample_text) # This will let us know if the data we are working with is a matrix. TRUE/FALSE
is.data.frame(sample_text) # Likewise with this we will know if the data we are working with is a data frame. Returns TRUE/FALSE


