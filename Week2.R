---
  title: "week 2"
author: "Amit Balia"
date: "7/28/2019"
output: html_document
---

#Get current directory
getwd()

#changing the directory
setwd(dir = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio")


#Create new object
week2.df <- data.frame(id = 1:5, sex = c("m", "m", "f", "f", "m"), score = c(51, 20, 67, 52, 42))

score.by.sex <- aggregate(score ~ sex, FUN = mean, data = week2.df)

week2.htest <- t.test(score ~ sex, data = week2.df)

#Check of new objects
ls()

#Code to save object
save(week2.df, score.by.sex, week2.htest,file = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio")

save(week2.df, score.by.sex, week2.htest,file = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio\week2.RData")

# Saving the image
save.image(file = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio/samplefile.RData")

#load object
load(file = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio/Test.RData")

# Load object samplefile 
load(file = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio/samplefile.RData")

#To remove an object
rm(week2.df)

#To remove all objects
rm(list=ls())

# writing table in pr_file as tabdelimited 

pr_file.df <- data.frame(id = 1:5, sex = c("m", "m", "f", "f", "m"), Age= c(51, 20, 67, 52, 42))
ls()

#Set directory
setwd(dir = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio")
getwd()
save(pr_file.df,file = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio/Test.RData")

write.table(x = pr_file.df,
           file = "pr_file.txt",  
           sep = "\t")    

# Save file in separate location
write.table(x = pr_file.df,
            file = "C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio/pr_file1.txt",  
            sep = "\t")    
#File read
alpha <- read.table(file = 'C:\Users\abaliA\Amit\Harrisburg Documents\506- EDA\Code porfolio/alpha.txt',    # file is in a data folder in my working directory
                     sep = '\t',                  # file tab--delimited
                     header = TRUE,               # the first row is a header row
                     stringsAsFactors = FALSE)    

#File read from web
fromweb <- read.table(file = 'http://goo.gl/jTNf6PD',
                      sep = '\t',
                      header = TRUE)

