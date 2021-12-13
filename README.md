# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
1. Background:
   There are 50 prototype MechaCars have been assessed multiple metrics, that is **vehicle length, vehicle weight, spoiler angle, drivetrain and ground clearance. **
2. Question:
   Whether **the MPG(miles per gallon)** of each vehicle can be *predicted by* the data of **vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance?**
3. Hypothesis:
   - H0 : The slope of the linear model is **zero,** or m = 0
   - Ha : The slope of the linear model is **not zero,** or m ≠ 0
4. Results:
   - ![Summary of multiple regression result](https://github.com/xueying-lin/MechaCar_Statistical_Analysis/blob/32e758da4cebee00fed79f813f1277188136b258/images/d1.PNG)
   - Among all the variables, **vehicle length, ground_clearance, and intercept** are a non-random amount of variance to the mpg values in the dataset since the significant level of those three coefficients is close to zero, highly significant.
   - As highlighted in the picture, **R-squared** is **0.72**, which means about **72% of MPG variance could be explain by this linear model**. 72% is a fairly strong prediction, so the linear model predict mpg of MechaCar prototypes effectively.
   - Since the **p-value** is **5.35e-11**, which is much smaller than the assumed significance level: 0.05, we reject the null hypothesis. **That is the slope of the linear model is not zero.**

## Summary Statistics on Suspension Coils
- ![The total summary](https://github.com/xueying-lin/MechaCar_Statistical_Analysis/blob/3090fac0ebb2411fbc52f96122a2cadfac28cc59/images/d2-1.PNG)
- The *variance of PSI (pounds per square inch)* for all manufacturing lots is **62.29**, did not exceed 100 PSI, so **the current manufacturing data for all lots in total meet the design specification.**
- ![Lot summary](https://github.com/xueying-lin/MechaCar_Statistical_Analysis/blob/3090fac0ebb2411fbc52f96122a2cadfac28cc59/images/d2-2.PNG)
- As shown on the picture, the *variance of PSI* of **lot 1 and lot 2** is **0.98 and 7.47**, did not exceed 100 PSI. So **Lot 1 and 2 meet the design specification.**
- However, the *variance PSI* of **lot 3** is **170.29**, which is **much higher than 100 PSI,** so the **lot 3 did not meet the design specification.**

## T-tests on Suspension Coils
- ![Overall t-test](https://github.com/xueying-lin/MechaCar_Statistical_Analysis/blob/39177cb26d63c6d556a8aef61582cf41dee79360/images/d3-1.PNG)
- Since th *p-value* is **0.06**, larger than significance level 0.05, so we **fail to reject the null hypothesis.** There is **no statistical difference** between the PSI for **all manufacturing lots** and the population mean of 1,500 pounds per square inch.
- ![Lot1 t-test](https://github.com/xueying-lin/MechaCar_Statistical_Analysis/blob/39177cb26d63c6d556a8aef61582cf41dee79360/images/d3-2.PNG)
- Since the *p-value* is **1**, much larger than the significance level, 0.05, so we **fail to reject the null hypothesis.** There is **no statistical difference** between the PSI for **manufacturing lot 1** and the population mean of 1,500 pounds per square inch.
- ![Lot2 t-test](https://github.com/xueying-lin/MechaCar_Statistical_Analysis/blob/39177cb26d63c6d556a8aef61582cf41dee79360/images/d3-3.PNG)
-  Since the *p-value* is **0.61**, much larger than the significance level, 0.05, so we **fail to reject the null hypothesis.** There is **no statistical difference** between the PSI for **manufacturing lot 2** and the population mean of 1,500 pounds per square inch.
-  ![Lot3 t-test](https://github.com/xueying-lin/MechaCar_Statistical_Analysis/blob/39177cb26d63c6d556a8aef61582cf41dee79360/images/d3-4.PNG)
-  Since the *p-value* is **0.042**, slightly smaller than the significance level, 0.05, so we **reject the null hypothesis.** There is **statistical difference** between the PSI for **manufacturing lot 3** and the population mean of 1,500 pounds per square inch.

## Study Design: MechaCar vs Competition
