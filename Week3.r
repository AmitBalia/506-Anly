---
  title: "week 3"
author: "Amit Balia"
date: "7/28/2019"
output: html_document
---

#Load library
library(readr)

ozone<-read_csv("C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio\EPA_data.csv")
# View the file
View(ozone)

# Remove white spaces
names(ozone)<-make.names(names(ozone))
names(ozone)

#Data Analysis functions
nrow(ozone)
ncol(ozone)
str(ozone)
head(ozone[,c(6:7,10)])
tail(ozone[,c(7:8,11)])
table(ozone$POC)


install.packages(dplyr)
library(dplyr)

# Filter the data
filter(ozone, Longitude == head(ozone$Longitude,1)) %>% 
  select(`Observation.Count`,`State.Code`,
         `Sample.Duration`,`Arithmetic.Mean`)

#Filter the data
filter(ozone, ozone$'State.Code' == "01") %>% 
  select(`Observation.Count`,`State.Code`,
         `Sample.Duration`,`Arithmetic.Mean`) %>% 
  as.data.frame


# Distinct States with counts
select(ozone, State.Name) %>% 
  unique %>% 
  nrow

View(ozone)
quantile(ozone$Observation.Count, seq(0, 1, 0.1))

# Group state and counties by arithmetic mean
ranking <- group_by(ozone, State.Name, County.Name) %>%
  summarize(ozone = mean(ozone$Arithmetic.Mean)) %>%
  as.data.frame %>%
  arrange(desc(ozone))

# Top ranking
head(ranking)

# Bottom ranking
tail(ranking,10)

# Countfor White Pine county in Nevada
filter(ozone, State.Name == "Nevada" & County.Name == "White Pine") %>% 
  nrow
