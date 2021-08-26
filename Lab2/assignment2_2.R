#2.
#a) Get the dataset from UCI ML Repository: https://archive.ics.uci.edu/ml/datasets/iris.
print(getwd())
setwd("E:/R/dataset")
print(getwd())
#Read the iris data
irisdata <- read.csv('E:/R/dataset/iris_Dataset.csv')
print(irisdata)
head(irisdata,3) #to get the 1st 3 rows
dim(irisdata)    #to get the dimension of the dataset

#b) Find the mean of all the metrics (Sepal Length, Sepal Width, Petal Length, Petal Width)
mean(irisdata$SepalLengthCm)
mean(irisdata$SepalWidthCm)
mean(irisdata$PetalLengthCm)
mean(irisdata$PetalWidthCm)

#c) Compute the sum of all the metrics across species and group by species.
Sum = aggregate(irisdata[,2:5],by=list(irisdata$Species),FUN=sum, na.rm=TRUE)
print(Sum)

#d) Compute the count of all the metrics across species and group by species.
Count = aggregate(irisdata[,2:5],by=list(irisdata$Species),FUN=length)
print(Count)

#e) Compute the maximum of all the metrics across species and group by species.
Maximum = aggregate(irisdata[,2:5],by=list(irisdata$Species),FUN=max, na.rm=TRUE)
print(Maximum)
