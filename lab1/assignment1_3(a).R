#WAP in R to find the highest of three nos. using functions.
{
  highest=function(a,b,c)
  {
    high=a;
    if(b>high)
      high=b;
    if(c>high)
      high=c;
    return(high);
  }
  highest(10,20,-30)
}
