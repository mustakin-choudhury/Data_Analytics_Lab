#2 
library(MASS)
hist(Animals$body,prob=TRUE)
lines(density(Animals$body,lwd=2,col="chocolate3")) 

#(a)
logbody<-log(Animals$body)
plot(density(logbody)) 

#(b) 
Mean<-mean(logbody)
Standard_Deviation<-sd(logbody)
xval <- pretty(c(Mean - 3 * Standard_Deviation, Mean + 3 * Standard_Deviation), 50)
lines(xval, dnorm(xval, mean = Mean, sd = Standard_Deviation))

