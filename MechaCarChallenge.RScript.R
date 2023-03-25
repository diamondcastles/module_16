#Challenge Deliverable 1

library(dplyr)

mechaCar_mpg <- read.csv("MechaCar_mpg.csv")

mcmpg<-data.frame(mechaCar_mpg)

lmmcmpg<-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mcmpg)

summary(lmmcmpg)


#Challenge Deliverable 2

sctable <- data.frame(read.csv("Suspension_Coil.csv", sep=','))


total_summary <- summarize(sctable, psi_mean=mean(PSI), psi_median=median(PSI), psi_variance=var(PSI), psi_stdev=sd(PSI))
print(total_summary)

