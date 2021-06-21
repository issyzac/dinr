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

## Manipulating the data
sample_csv_matrix <- as.matrix(sample_text) # This will convert from other data representations to a matrix representation
is.matrix(sample_csv_matrix) # Confirming if data is a matrix or not after converting

a <- matrix(1, 2, 3) # Create simple matrix
is.matrix(a) # Confirm its a matrix
b <- as.data.frame(a) # Convert it to a data frame
b
is.data.frame(b) # Confirm its a data frame

# Transpose the data (matrix)
t(a) # This will transpose from a 3X2 matrix to a 2X3 matrix

# Delete add a row/column in the data
a <- a[-1, ] # First value inside [] os a row number and the second is a column number (-ve) value deletes the row
a
a <- rbind(a, c(2, 2, 2))
a
a <- cbind(a, c(3, 3))
a





