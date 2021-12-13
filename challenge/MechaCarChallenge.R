library(dplyr)

##Deliverable 1
#import dataset
mechacar_mpg <- read.csv("MechaCar_mpg.csv")

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg)

#Generate summary statistic
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg))

##Deliverable 2

#import dataset
suspension_coil <- read.csv("Suspension_Coil.csv", check.names=F,stringsAsFactors = F)

#Create summary table
total_summary <- suspension_coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),variance_PSI=var(PSI),sd_PSI=sd(PSI), .groups = 'drop')

#create summary table with multiple columns
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),variance_PSI=var(PSI),sd_PSI=sd(PSI), .groups = 'keep')


##Deliverable 3
#test for normality(all lots)
plt <- ggplot(suspension_coil,aes(x=PSI)) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

##Passing the normality test
#compare means with population mean 1500
t.test(suspension_coil$PSI,mu=1500)

#PSI sample for lot1
lot_1 = subset(suspension_coil, Manufacturing_Lot == "Lot1")

#Compare means with population mean 1500
t.test(lot_1$PSI,mu=1500)

#PSI sample for lot2
lot_2 = subset(suspension_coil, Manufacturing_Lot == "Lot2")

#Compare means with population mean 1500
t.test(lot_2$PSI,mu=1500)

#PSI sample for lot3
lot_3 = subset(suspension_coil, Manufacturing_Lot == "Lot3")

#Compare means with population mean 1500
t.test(lot_3$PSI,mu=1500)