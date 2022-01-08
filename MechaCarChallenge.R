# MPG Multiple Linear Regression
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")
MechaCar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
MechaCar_lm_summary <- summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# PSI Analysis
Suspension_Coil <- read.csv("Suspension_Coil.csv")
total_summary <- summarise(Suspension_Coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Suspension Coil T-Test
PSI_test <- t.test(Suspension_Coil$PSI, mu=1500)
lot1_test <- t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1", PSI), mu=1500)
lot2_test <- t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2", PSI), mu=1500)
lot3_test <- t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3", PSI), mu=1500)