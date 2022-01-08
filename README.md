# MechaCar_Statistical_Analysis
Using R to analyze vehicle data

## Linear Regression to Predict MPG

![MPG Linear Regression](https://user-images.githubusercontent.com/90737940/148618934-4f327b8c-3009-4af5-9d14-4493d3ca7245.png)

  - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - With a p-value less than 0.05, we can see the vehicle_length, vehicle_weight, and ground clearance have a statistically significant impact on mpg for the vehicles included in the dataset.
  - Is the slope of the linear model considered to be zero? Why or why not?
    - No, because there are variables that have a statistically significant impact in the determination of the mpg of the vehicles in the dataset we can reject the null hypothesis that m = 0.
  - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - This linear model does a reasonably good job of predicting the mpg of MechaCar prototypes. The R-squared value of 0.7149 allows us to conclude that this model accounts for 71.5 percent of the variability in mpg in the MechaCar prototypes in this dataset.

## Summary Statistics on Suspension Coils

  - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Total Summary:

![total_summary](https://user-images.githubusercontent.com/90737940/148620327-0862dfd9-da69-4ddb-ba15-6b38a05b155c.png)


Lot Summary:

![lot_summary](https://user-images.githubusercontent.com/90737940/148620336-b4bfd71e-0436-41cf-8d46-ea0602ff403a.png)

From the total summary, we can see the variance in the PSI of the suspension coils is 62.3 and does not exceed 100 pounds per square inch. When we dig deeper into each lot in our dataset, we see a different story. In lots 1 and 2 we see the variance in the PSI of the suspension coils is 0.98 and 7.5, respectively, which is well below the cutoff of 100. In lot 3, we see a variance of 170.3 which does not meet the standard.

## T-Tests on Suspension Coils
Within this analysis we are using a one-sample t-test to determine if there is a statistically significant difference in the mean PSI of the suspension coils between our sample dataset with three separate lots with the population mean of 1,500 pounds per square inch. The results of each of the four tests are below.


####  t-test across all lots
![PSI_ttest](https://user-images.githubusercontent.com/90737940/148621134-fe1f7993-8f9e-4023-974f-af9ed0fbd48b.png)
  - The results of the t-test for the full sample dataset return a p-value of 0.06028. Because our p-value is greater than our significance level of 0.05, we fail to reject the null hypothesis that there is no statistically significant difference in our sample mean and the population mean.

#### Lot 1 t-test
![lot1_ttest](https://user-images.githubusercontent.com/90737940/148621176-762c9047-6f14-4d13-8c4d-4118afe4879b.png)
  - The results of the t-test for lot 1 return a p-value of 1. Because our p-value is greater than our significance level of 0.05, we fail to reject the null hypothesis that there is no statistically significant difference in our sample mean for lot 1 and the population mean.

#### Lot 2 t-test
![lot2_ttest](https://user-images.githubusercontent.com/90737940/148621185-e5ca8a0c-d50d-4201-bb9b-135ac034192c.png)
  - The results of the t-test for lot 2 return a p-value of 0.6072. Because our p-value is greater than our significance level of 0.05, we fail to reject the null hypothesis that there is no statistically significant difference in our sample mean for lot 1 and the population mean.

#### Lot 3 t-test
![lot3_ttest](https://user-images.githubusercontent.com/90737940/148621201-f5e741f8-1d42-4cc6-bebe-e30b526273fe.png)
  - The results of the t-test for lot 3 return a p-value of 0.04168. Because our p-value is less than our significance level of 0.05, we can reject the null hypothesis that there is no statistically significant difference in our sample mean for lot 1 and the population mean.

## Study Design: MechaCar vs. Competition
A potential study that can be done is to design a Multiple Linear Regression model in order to predict the price of various vehicles on the road today. This will allow us to compare MechaCar's price to its competitors. To run this test, we would need to collect data points on price, mpg, horsepower, safety rating, engine type, car type, etc... on comparable vehicle types to MechaCar. It would be important to run tests of independence on the data that we have before designing our regression model as different metrics within our dataset may be dependent on others. For example, safety rating could be dependent on car type. 

The hypothesis for our regression model would be:
  - H0: The independent variables in our study (mpg, safety rating, car type, engine type) have no relationship with the price of the vehicle.
  - Ha: The independent variables in our study have an impact on the price of the vehicle.
