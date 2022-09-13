setwd("C:/A-Work/course in HKU/Biostatistics/Module 1")

library(ggplot2)
fishdata <- read.csv("Fish_data_Horne.csv")

#Descriptive statistics

mean_fem_size <- mean(fishdata$Female.Size)
sd_fem_size <- sd(fishdata$Female.Size)
mean_male_size <- mean(fishdata$Male.Size)
sd_male_size <- sd(fishdata$Male.Size)
range_fem_size <- range(fishdata$Female.Size)
med_fem_size <- median(fishdata$Female.Size)

#Plotting graphs
#1
p_fem_size <- ggplot(data = fishdata, aes(x = Female.Size)) + 
                geom_histogram()
plot(p_fem_size)

#2
p_male_size <- ggplot(data = fishdata, aes(x = Male.Size)) + 
  geom_histogram()
plot(p_male_size)

#3
p_FemvsMale <- ggplot(data = fishdata, aes(x = Female.Size, y = Male.Size)) + 
                geom_point()
plot(p_FemvsMale)
