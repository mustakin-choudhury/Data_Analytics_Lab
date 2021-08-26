# Get and print current working directory.
print(getwd())

# Set current working directory.
{setwd("E:/R/dataset")
print(getwd())
}

#1.Perform the following pre-processing tasks.
#(a) Get the dataset and read it using read.csv function. Dataset contains four columns:
#Country, Age, Salary, Purchased and has total 10 observations. Dataset contains
#information of customers of some company and first three columns are information
#of a customer like country, age, salary and fourth column tells if the customer has
#purchased the product of the company or not. The attribute "Purchase" is the target
#variable names.
{data <- read.csv('E:/R/dataset/Dataset.csv')
print(data)
}

{#(b) The dataset contains missing data.Handle the missing data by taking mean/median/mode.

data$Age[is.na(data$Age)]<-mean(data$Age,na.rm=TRUE)
print(data)
data$Salary[is.na(data$Salary)]<-median(data$Salary,na.rm=TRUE)
print(data)
}
#(c) Encode categorical data. Encode "France", "Spain" and "Germany" with 1, 2, 3
#values. Also encode the target variable with 0 and 1 i.e. Encode Yes with 0 and No
#with 1. factor function or if-else statement can be used to convert the categorical
#features into numeric features.

{data$Country=factor(data$Country,levels=c('France', 'Spain', 'Germany'),labels=c(1,2,3))
print(data)
data$Purchased=factor(data$Purchased,levels=c('Yes','No'),labels=c(0,1))
print(data)
}
#(d)  Scale the dataset using any of the scaling technique. Use scale function to scale the values.

{library(caTools)
set.seed(123)
split = sample.split(data$Purchased, SplitRatio = 0.8)
#Training set
training_set = subset(data, split == TRUE)
training_set
#Test set
test_set=subset(data, split == FALSE)
test_set
}
#Feature Scaling
training_set[, 2:3] = scale(training_set[, 2:3])
training_set
test_set[, 2:3] = scale(test_set[, 2:3])
test_set
