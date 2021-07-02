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

## Now, generate a tibble called ”teenager_fr”, which contains only the adolescent fertility rate indicator for each country-year.

teenager_fr <- filter(gender_data, Indicator.Code == "SP.ADO.TFRT")
teenager_fr

## Exploring the data we just loadded
mean_in_1975 <- mean(teenager_fr$X1975, na.rm = TRUE)
mean_in_1975

# What is the sample mean and standard deviation of the adolescent fertility rate in 1960? 
mean_1960 <- mean(teenager_fr$X1960, na.rm = TRUE)
mean_1960
sd_1960 <- sd(teenager_fr$X1960, na.rm = TRUE)
sd_1960

# What is the sample mean and standard deviation of the adolescent fertility rate in 2000?
mean_2000 <- mean(teenager_fr$X2000, na.rm = TRUE)
mean_2000
sd_2000 <- sd(teenager_fr$X2000, na.rm = TRUE)
sd_2000

byincomelevel <- filter(teenager_fr, Country.Code %in% c("LIC", "HIC", "MIC", "WLD" ))
byincomelevel


### PLOTTING a graph of the observation
# plotdata_bygroupyear <- gather(byincomelevel, Year, FertilityRate, X1960:X2015) %>% select(Year, Country.Name, Country.Code, FertilityRate)

# plotdata_byyear<-select(plotdata_bygroupyear, Country.Code, Year, FertilityRate) %>% spread(Country.Code, FertilityRate)

# plotdata_byyear<-spread(plotdata_bygroupyear, Country.Code, FertilityRate)
# plotdata_byyear

# ggplot(plotdata_bygroupyear, aes(x=Year, y=FertilityRate, group=Country.Code, color=Country.Code))+geom_line()+labs(title='Fertility Rate by Country-Income-Level over Time')

histdata_twoyears <- select(teenager_fr, Country.Name, Country.Code, Indicator.Name, Indicator.Code, X1960, X2000)

histdata_twoyears <- gather(teenager_fr, Year, FertilityRate, X1960, X2000) %>%
  select(Year, Country.Name, Country.Code, FertilityRate)

#Remove all entries without FetilityRate value
histdata_twoyears <- filter(histdata_twoyears,!is.na(FertilityRate))

# Plotting the two data into a graph
ggplot(histdata_twoyears, aes(x=FertilityRate)) + 
  geom_histogram(data=subset(histdata_twoyears, Year=="X1960"), 
                 color="darkred", fill="red", alpha=0.2) + 
  geom_histogram(data=subset(histdata_twoyears, Year=="X2000"), 
                 color="darkblue", fill="blue", alpha=0.2, breaks = 0) 
ggsave("hist.png")

#Preliminaries
#---------------------------------------
rm(list=ls())
install.packages('plot3D')
library(plot3D)

#Creating the vector x and y
M <- mesh(seq(0,1,length=100), seq(0,1,length=100))
x<-M$x
y<-M$y
z<-6/5*(M$x+M$y^2)

#Plotting this pdf
persp3D(x, y, z, xlab='X variable', ylab= 'Y variable', xlim = c(0,1), main= "Plotting joint pdf")




