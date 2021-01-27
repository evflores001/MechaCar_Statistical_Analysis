# MechaCar Statistical Analysis
---

## Linear Regression to Predict MPG
---
In this analysis we used linear regression to predict a vehicles MPG based on factors such as car weight, ground clearance, wheel drive, vehicle length and spoiler angle. In order to answer the following:

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    
    - By observing the variables significance value, or p-value, we can see that the variables that provided a non-random amount of variance are the intercept, ground_clearance, and vehicle_length. The p-value for these features were the lowest compared to other values, meaning they had a higher significance than the others.

2. Is the slope of the linear model considered to be zero? Why or why not?
    
    - Had there not been any significant variables placed within the linear regression model, then the slop of the line woould have been flat (i.e., 0); however, because the p-value is significantly low (<0.05) for some of these variables, it shows strong evidence to reject the null value which states that the slope of a line will be zero. Thus the linear model is not flat.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    
    - Looking at the models r-squared value (0.7149), we see that this model has the ability of predicting a cars MPG. The 0.7149 r-squared value means that the model has a 71% chance of predicting accurately.
    
Results from R:
![](https://github.com/evflores001/MechaCar_Statistical_Analysis/blob/main/Results/mpgLinearRegression.png)

## Summary Statistics on Suspension Coils
---
Using the suspension coils dataset provided, we compared the PSI values for suspension coils across three differents lots. Using these values we calculated the mean, medians, modes, and standard deviates for all three lots as a whole and individually.
Our goal was to answer the following:

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

As a whole, all three lots do meet the design specification of remaining below 100 lbs. as seen in the image below:

![](https://github.com/evflores001/MechaCar_Statistical_Analysis/blob/main/Results/totalSummary.png)

However, when looking at the summaries per lot, it is clear that not all lots are well within their alotted variance. From the following image, we can see that the first two lots are within design specification, however, looking at the third lot we see that it exceeds the limits by almost twice as much.

![](https://github.com/evflores001/MechaCar_Statistical_Analysis/blob/main/Results/lotSummary.png)

## T-Tests on Suspension Coils

Lastly, we ran tests on each lot independently to study if there were any significant Performing the T-Test on all lots and then per individual demonstrated that there are some significant statistical differences between lot 3 versus the rest of the lots. Out of all the lots, lot 3 had a higher magnitute value for it's T-Value and a p-value less than alpha (<0.05) thus this rejects the null hypothesis; this lot had the highest statistical differences compared to other lots

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
