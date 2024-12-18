Description
This repository contains the R code and related files for analyzing the relationship between the percentage of low-income students (VAR 1) and graduation rates (dependent variable). The analysis utilizes a linear regression model to explore how socioeconomic disparities affect educational outcomes. This project includes data cleaning, operationalization, and statistical analysis, providing a comprehensive framework for understanding the relationship between these two variables.

Operationalization of Variables
Percentage of Low-Income Students (VAR 1):
This variable represents the proportion of students in a school who are classified as low-income, expressed as a percentage.
Measurement Scale: Quantitative (Ratio).
This variable was selected because it reflects the socioeconomic composition of a school and is often linked to resource availability and educational challenges.
Graduation Rates (Dependent Variable):

This variable represents the percentage of students in a school who successfully graduate.
Measurement Scale: Quantitative (Ratio).
Graduation rates are a key indicator of educational success and provide insight into how socioeconomic factors may impact student outcomes.
Data Cleaning Process
Loading the Dataset:

The dataset is imported into R using the read.csv() function.
Missing values are removed using the na.omit() function to ensure only complete cases are included in the analysis.
Variable Preparation:

The percentage of low-income students and graduation rates are extracted and analyzed.
New variables are computed if necessary (e.g., log transformations).
Assumption Testing:

Residual plots are used to check for normality, linearity, and homoscedasticity of errors.
How to Use This Package
Clone the Repository:

Clone the repository to your local machine using the command:
bash
Copy code
git clone https://github.com/yourusername/repository-name.git
Install Required R Packages:

Ensure you have the following R packages installed:
ggplot2 for visualizations.
dplyr for data manipulation.
stats for regression analysis.
Use the install.packages() function in R to install any missing packages.
Run the Analysis:

Open the R script file analysis.R in R Studio or your preferred IDE.
Execute the script to load, clean, and analyze the data.

The code generates a scatter plot of the relationship between low-income students and graduation rates, along with the regression line.
Residual plots are included to assess model assumptions.
The output includes descriptive statistics, regression coefficients, 𝑅2, and significance values.

Contact and Contributions
If you encounter issues or have suggestions for improvements, please open an issue or submit a pull request. Contributions are welcome!
