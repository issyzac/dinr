library(ggplot2)
library(tidyverse)
require(cowplot)

# Load the Data
bihar_data <- read_csv("data/Bihar_sample_data.csv")
#US data
us_data <- read_csv("data/US_sample_data.csv")

#Have a look at the data
print(bihar_data)
#Have a look at the US Dta
print(us_data)

#Keep only female 
bihar_adult_female <- filter(bihar_data, adult==1, female==1)

#US female data
us_female_data <- filter(us_data, female==1, adult==1)

ggplot(us_female_data, aes(height_cm))+
  geom_histogram(fill="red", color="darkred")

#Lets view the female only table
print(bihar_adult_female)

#Some people looks like they are very small, filtering them out 
bihar_adult_female_trunc <- filter(bihar_adult_female, height_cm>120, height_cm<200)

bihar_male <- filter(bihar_data, female==0, adult==1, height_cm>120, height_cm<180)

print(bihar_adult_female_trunc)

#Default histogram in ggplot
default <- ggplot(bihar_adult_female, aes(height_cm))+
  geom_histogram(fill="blue", color="darkblue", binwidth = 2)+
  xlab("Height in Centemetres, Bihar Female!")

female_trunc <- ggplot(bihar_adult_female_trunc, aes(height_cm))+
  geom_histogram(fill="blue", color="darkblue", binwidth = 2)+
  xlab("Height in Centemetres, Bihar Female!") 

male_height <- ggplot(bihar_male, aes(height_cm))+
  geom_histogram(fill="red", color="darkred", binwidth = 2)+
  xlab("Height in Centemetres, Bihar Female!")

plot_grid(default, female_trunc, male_height, labels = "Female Height in Bihar")

#Save the histogram in a pdf
ggsave("graphs/bihar_female.pdf")
