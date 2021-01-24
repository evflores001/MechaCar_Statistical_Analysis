# MechaCar Statistical Analysis
---

## Linear Regression to Predict MPG
---

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    
    The vairables that provided a non-random amoint of variance are the intercept, ground_clearance, and vehicle_length.

* Is the slope of the linear model considered to be zero? Why or why not?
    
    The slope of the model is not considered to be flat. Since the p-value is significantly low (<0.05), it shows strong evidence to reject the null value which states that the slope of a line will be zero.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    
    This model does predict the mpg of MechaCar prototypes effectively since the variables given to predict the dependent variable had a positive slope as well as high R-Squared values.

![](https://github.com/evflores001/MechaCar_Statistical_Analysis/blob/main/Results/mpgLinearRegression.png)

## Summary Statistics on Suspension Coils
---

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Looking at the total summary dataframe, the manufacturing data does suggest that MechaCar is well within their alotted variance

![](https://github.com/evflores001/MechaCar_Statistical_Analysis/blob/main/Results/totalSummary.png)

However, when looking at the summaries per lot, it is clear that not all lots are well within their alotted variance. From the following image, we can see that lot three is almost twice as much as the alotted variance.

![](https://github.com/evflores001/MechaCar_Statistical_Analysis/blob/main/Results/lotSummary.png)

## T-Tests on Suspension Coils

Performing the T-Test on all lots and then per individual demonstrated that there are some significant statistical differences between lot 3 versus the rest of the lots. Out of all the lots, lot 3 had a higher magnitute value for it's T-Value and a p-value less than alpha (<0.05) thus this rejects the null hypothesis; this lot had the highest statistical differences compared to other lots

The following T-Test results were rendered:
![](https://github.com/evflores001/MechaCar_Statistical_Analysis/blob/main/Results/ttest.png)
![](https://github.com/evflores001/MechaCar_Statistical_Analysis/blob/main/Results/ttest2.png)

## Study Design: MechaCar vs Competition
---

A statistical study that can be quantifys how MechaCar performs against the compitition and is of interest is predicting maintenance cost on a vehicle depending on that specific vehicle's fuel effeciency and horsepower.

* What metric or metrics are you going to test?

The metrics I would use to test from both MechaCars and its compititors would be fuel effeciency, horsepower, and maintenance fees.

* What is the null hypothesis or alternative hypothesis?

The null hypothesis would be that the two factors (i.e., fuel effeciency, horsepower) do not make a difference in maintenance costs.
The alternative hypothesis would be that these two factors do make a difference in MechaCars maintenance fees vs its competitors

* What statistical test would you use to test the hypothesis? And why?

Because we are trying to predict the outcome of a dependent variable using multiple independent variables, I would use a multiple linear regression model.

* What data is needed to run the statistical test?

I would need historical data which include maintenance costs of vehicles of the years as well as the cars fuel efficiency and horsepower.
