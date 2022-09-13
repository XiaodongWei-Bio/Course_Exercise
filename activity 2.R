setwd("C:/A-Work/course in HKU/Biostatistics/Module 2")

library(ggplot2)

pfizer <- read.csv("CovidPfizer.csv")
salamanders <- read.csv("Millikin_2019_CORT_validation_data.csv")

# larvae
larvae <- subset(salamanders, Stage == "Larvae with gills")
p_larvae <- ggplot(larvae, 
                   aes(x = rank(Water.borne.CORT.pg.SVL.h), y = rank(Plasma.ng.ml))) +
                      geom_point() +
                      labs(x = "Water cortisone per length (ranked)",
                           y = "Plasama cortisol concentration (ranked)",
                           title = "Stage: Larvae with gills") +
                      theme_grey(base_size = 15)
print(p_larvae)

cor_lar <- cor(larvae$Plasma.ng.ml, larvae$Water.borne.CORT.pg.SVL.h, method = 'spearman')
print(cor_lar)


# metamorph
metamorph <- subset(salamanders, Stage == "Metamorph")
p_metamorph <- ggplot(metamorph, 
                   aes(x = rank(Water.borne.CORT.pg.SVL.h), y = rank(Plasma.ng.ml))) +
                      geom_point() +
                      labs(x = "Water cortisone per length (ranked)",
                           y = "Plasama cortisol concentration (ranked)",
                           title = "Stage: Metamorph") +
                      theme_grey(base_size = 15)
print(p_metamorph)

cor_meta <- cor(metamorph$Plasma.ng.ml, metamorph$Water.borne.CORT.pg.SVL.h, method = 'spearman')
print(cor_meta)


# adult
adult <- subset(salamanders, Stage == "Adult")
p_adult <- ggplot(adult, 
                   aes(x = rank(Water.borne.CORT.pg.SVL.h), y = rank(Plasma.ng.ml))) +
                      geom_point() +
                      labs(x = "Water cortisone per length (ranked)",
                           y = "Plasama cortisol concentration (ranked)",
                           title = "Stage: Adult") +
                      theme_grey(base_size = 15)
print(p_adult)

cor_adult <- cor(adult$Plasma.ng.ml, adult$Water.borne.CORT.pg.SVL.h, method = 'spearman')
print(cor_adult)


# Quiz 2
## question 2
print(dbinom(12, size = 20, prob = 0.7))

## question 4
print(pbinom(12, size = 20, prob = 0.7))

## question 6
print(1 - pnorm(8, mean = 6, sd = 1.5))

## question 8
print(pnorm(-2.3, mean = 0, sd = 1) + pnorm(2.3, mean = 0, sd = 1, lower.tail = FALSE))
