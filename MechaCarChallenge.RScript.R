library(dplyr) #Load dplyr package
library(jsonlite)
library(tidyverse)

df <- read.csv("MechaCar_mpg.csv",sep=",",header = TRUE) #add csv file
view(df) #check df
lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data = df) # linear regression for multiple poins
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data = df)) # lm with summary function

df2 <- read.csv("Suspension_coil.csv",sep = ",", header = TRUE) #add csv file
total_summary <- df2 %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #PSI Summary DF
lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #Lot Summary DF

t.test(df2$PSI, mu = 1500)
t.test(subset(df2, Manufacturing_Lot == "Lot1", select = PSI), mu = 1500)
t.test(subset(df2, Manufacturing_Lot == "Lot2", select = PSI), mu = 1500)
t.test(subset(df2, Manufacturing_Lot == "Lot3", select = PSI), mu = 1500)