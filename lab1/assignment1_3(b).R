#WAP in R to find display the sum of n natural numbers using function.
{
  sum <- function(number) {
    if(number <= 1) {
      return(number)
    } else {
      return(number + sum(number-1))
    }
  }
  sum(5)
}
