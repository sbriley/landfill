#Landfill CSS restoration analysis
#Sarah Kimball
#created May 21, 2024
#edited 

#set working directory
#load necessary packages
library(tidyverse)
library(car)

#import data
data.height <- read.csv("./Landfill_shrub_March_data.csv")

str(data.height)

data.chlorophyll <- read.csv("./Landfill_shrub_data.csv")
str(data.chlorophyll)
data.chlorophyll$shrub_id <- paste(data.chlorophyll$Site, data.chlorophyll$Shrub_location)
data.height$shrub_id <- paste(data.height$Site, data.height$Shrub_location)
data<-left_join(data.chlorophyll, data.height, by="shrub_id")
names(data)



# Logicstic regression
# Impact of Species / soil type on Survival

# Change in height ANOVA 

# How many of each species in each soil type? 

# Species -> Hieght
# Soil type -> Height
# Interactions? 

# Species -> Chlorophyll Content
# Soil type -> Chlorophyll Content
# Interactions? 
