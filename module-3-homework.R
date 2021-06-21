rm(list=ls())
library("utils")
library("tidyverse")

# setwd("$DIR") We are already in that working directory, if not set here

#Loading the data
gender_data <- as_tibble(read.csv("data/Gender_StatsData.csv"))

str(gender_data) #Will show us the structure of the data
head(gender_data) # Shows the first six
tail(gender_data) # Shows the last six data
dim(gender_data) # Shwos us the dimentions of our data ROWS COLUMNS

