#1. Perform the following tasks:
#(a) Import mtcars dataset.
data("mtcars")
head(mtcars)
nrow(mtcars)
ncol(mtcars)
summary(mtcars)

#(b) Visualize your data using scatter plots.
plot(x = mtcars$wt,y = mtcars$mpg,xlab = "Weight",ylab = "Mileage",main = "Weight v/s Mileage")

#(c) Compute the Correlation between mpg and wt variables.
#cor(x=mtcars$wt,y=mtcars$mpg,use="everything",method = c("pearson","kendall","spearman"))
cor(x=mtcars$wt,y=mtcars$mpg,use="everything",method = "pearson")
cor(x=mtcars$wt,y=mtcars$mpg,use="everything",method = "kendall")
cor(x=mtcars$wt,y=mtcars$mpg,use="everything",method = "spearman")
