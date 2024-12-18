
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
raw_data <- read.csv("raw_data.csv")
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
# Scatter Plot with Linear Regression Line
# Ensure the dataset is loaded
# Example: dataset <- read.csv("your_data.csv")

# Fit a linear regression model
linear_model <- lm(graduation ~ percent_of._low_income_students, data = dataset)

# Calculate means for reference lines
mean_x <- mean(dataset$percent_of._low_income_students, na.rm = TRUE)
mean_y <- mean(dataset$graduation, na.rm = TRUE)

# Create the scatter plot
plot(dataset$percent_of._low_income_students, dataset$graduation,
     main = "Figure 1",
     xlab = "% Low-Income Students",
     ylab = "Graduation Rates",
     pch = 19, col = "blue") # Add points with style

# Add regression line
abline(linear_model, col = "red", lwd = 2) # Regression line in red

# Add mean lines
abline(h = mean_y, col = "black", lty = 2) # Horizontal line for mean Graduation Rate
abline(v = mean_x, col = "gray", lty = 2)  # Vertical line for mean % Low-Income Students




##################################################################################
####################  Figure 3: residual plot                ####################   
##################################################################################
# Ensure the dataset is loaded
# Example: dataset <- read.csv("your_data.csv")

# Fit the linear regression model
linear_model <- lm(graduation ~ percent_of._low_income_students, data = dataset)

# Extract residuals and independent variable
residuals <- resid(linear_model)
independent_variable <- dataset$percent_of._low_income_students

# Plot the residuals
plot(independent_variable, residuals,
     main = "Figure 2: Scatter Plot of % of Low-Income Students and Residuals from Regression Analysis.",
     xlab = "% Low-Income Students",
     ylab = "Graduation Rate",
     pch = 19, col = "blue")

# Add a horizontal line at zero for reference
abline(h = 0, col = "red", lty = 2, lwd = 2) # Red dashed line for baseline



##################################################################################
####################  Table 2: contingency table                ####################   
##################################################################################
table(dataset$salary,dataset$funding)

chisq.test(table(dataset$salary,dataset$funding))
