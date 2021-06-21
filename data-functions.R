## 1. Import Data

setwd("/home/issyzack/Documents/DEDP/Data Science for Social Scientists/Dinr")

#Header
sample_csv <- read.csv("data/Bihar_sample_data.csv", header = TRUE)
sample_csv <- read.csv("data/Bihar_sample_data.csv", header = FALSE) #This will use the first row as a data point
#sep
sample_text <- read.table("data/data-export.txt", sep = ",", header = TRUE)


