#install packages

install.packages(c('quantmod','ff','foreign','R.matlab'),dependency=T)
suppressPackageStartupMessages(library(tidyverse))

install.packages("readr")
install.packages("tidyverse")
library(readr)
library(tidyverse)
library(dplyr)
#change directory path
getwd()

setwd(choose.dir())

#read dataset
data1 <- read_csv("R_data.csv",show_col_types = FALSE)
head(data1, 5)

#1- Check for normality in days_2_recovery

##a-whole
hist(data1$days_2_recovery)#normally distributed

##b- by drug type group

filtered_dataA <- data1 %>% 
  filter(group == "A")
hist(filtered_dataA$days_2_recovery)#normally distributed

filtered_dataB <- data1 %>% 
  filter(group == "B")
hist(filtered_dataB$days_2_recovery)#normally distributed

#2- t-test
#since groups A and B do not depend on each other regarding the results, an independent t-test is used

t_test_result <- t.test(filtered_dataA$days_2_recovery, filtered_dataB$days_2_recovery)
print(t_test_result)

#p-value is greater than .05, meaning difference between the two groups is not significan t(drug effects do not have a big difference 
#in recovery time

#3- Exploratory Data Analysis (EDA)

## mean
mean_valueA <- mean(filtered_dataA$days_2_recovery)
print(mean_valueA)
mean_valueB <- mean(filtered_dataB$days_2_recovery)
print(mean_valueB)

##median

median_valueA <- median(filtered_dataA$days_2_recovery)
print(median_valueA)
median_valueB <- median(filtered_dataB$days_2_recovery)
print(median_valueB)

##standard deviation
standarddev_A <- sd(filtered_dataA$days_2_recovery)
print(standarddev_A)

standarddev_B <- sd(filtered_dataB$days_2_recovery)
print(standarddev_B)

















































