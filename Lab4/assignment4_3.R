# 3) 

norm<-rnorm(50)
mean(norm)
sd(norm)
hist(norm,main="Estimated Density Function")

#Sample Size 4
norm1<-rnorm(4)
mean(norm1)
sd(norm1)
hist(norm1,main = "Density function of size=4")

#Sample Size 9
norm2<-rnorm(9)
mean(norm2)
sd(norm2)
hist(norm2,main = "Density function of size=9")

#Sample Size 25
norm3<-rnorm(25)
mean(norm3)
sd(norm3)
hist(norm3,main = "Density function of size=25")
