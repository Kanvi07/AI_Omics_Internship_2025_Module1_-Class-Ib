getwd()
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")
data <- read.csv(file.choose())
View(data)
str(data)
# there are three data type that needs to  be converted
range(5)
head(data, 5)
View(data)
str(data)
#Creating new column 
data$gender_fac <- as.factor(data$gender)
str(data)
#Now Reodering the factor 
data$gender_fac <- factor(data$gender_fac, levels = c("Male", "Female"))
# Again for Confirmation 
levels(data$gender_fac)
View(data)
#Now Diagnosis
data$diagnosis_fac <- as.factor(data$diagnosis)
#To check the levels
levels(data$diagnosis_fac)
View(data)
#Smoker 
data$smoker_fac <- as.factor(data$smoker)
#view the levels
levels(data$smoker_fac)
View(data)
#Re-ordering the factor
data$smoker_fac <- factor(data$smoker_fac, levels = c("Yes", "No"))
#now converting into binary 
data$smoker_num <- ifelse(data$smoker_fac == "Yes", 1, 0)
View(data)
write.csv(clean_data, file = "results/patient_info_clean.csv")
write_csv(clean_data, "clean_data/patient_info_clean.csv")
write.csv(daa, file = "results/patient_data.csv")
library(dplyr)
data <- read_csv("patient_info.csv")
str(data)
write_csv(_data, "clean_data/patient_info_clean.csv")
write_csv(data, "data/patient_info_clean.csv")
#loading the data into clean_data folder 
write.csv(data, "clean_data/patient_info_clean.csv")
#Assigning clean_data variable
clean_data <- read.csv("clean_data/patient_info_clean.csv")
#saving 
file.edit("scripts/class_Ib.R")
