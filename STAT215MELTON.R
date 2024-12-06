
# Set Working Directory
setwd("H:/STA215")

# Install "haven" package
install.packages("haven")

# Load "haven" package
library("haven") 
library("readr")
library("dplyr")
library("haven")
library("psych")
library("ggplot2")
# Load the data
data <- read.csv("raw_data.csv")
dataset <- na.omit(raw_data)
View(dataset)
##################################################################################
############### Table 1: descriptive statistics    ####################   
##################################################################################
table(dataset$graduation)
table(dataset$transportation)
table(dataset$funding)


summary(dataset$reduced_lunch)
sd(dataset$graduation)


summary(dataset$population)
sd(dataset$population)

summary(dataset$homeless)
sd(dataset$homeless)




##################################################################################
#################### Figure 1: boxplot             ####################   
##################################################################################
dataset$lnlunch <- log(dataset$reduced_lunch+1)
boxplot(lnlunch ~ funding, data = dataset)
anova <-aov (lnlunch ~ funding, data = dataset)
summary(anova)
##################################################################################
####################   Figure 2: scatter plot             ####################   
##################################################################################
plot(dataset$transportation,dataset$graduation)

meanx <- mean(dataset$graduation)
meany <- mean(dataset$transportation)
abline(h = meanx, col = "black")
abline(v = meany, col = "black")
linear_relationship <- lm(transportation ~ graduation, data = dataset)
summary(linear_relationship)
abline(linear_relationship, col = "red")


##################################################################################
####################  Figure 3: residual plot                ####################   
##################################################################################
# Plot the residuals
plot(dataset$transportation, residuals(linear_relationship))

# Add a horizontal line at zero to indicate the baseline
abline(h = 0, col = "red")


##################################################################################
####################  Table 2: contingency table                ####################   
##################################################################################
table(dataset$salary,dataset$funding)

chisq.test(table(dataset$salary,dataset$funding))
