#2. Perform the following:
#(a) Define a normalized vector P.
P <- print(dnorm(c(2, 6, 7, 7, 5, 13, 14, 17, 11, 8)))

#(b) Define a normalized vector Q.
Q <- print(dnorm(c(3, 5, 5, 3, 7, 12, 13, 19, 22, 7))) #mean = 0,sd = 1

#(c) Combine P and Q as matrix object. Please note that when defining a matrix from
#vectors, the vectors should be combined as rows.
matrix1 <- print(matrix(P,byrow = TRUE))
matrix2 <- print(matrix(Q,byrow = TRUE))

#(d) Compute the Euclidean Distance with default parameters.
euclidean <- print( sqrt(sum((P - Q)^2)))  #?????(A(i)-B(i))^2
