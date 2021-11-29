# Global clean up
rm(list=ls())

# Function: Recycle code
# Syntax
#   functionname <- function(arg1,..)
#   {
#      body of the function
#      return(obj)
#   }
# return: Leave function

# Example 1:
# ---------
mysum1 <- function(x,y){
  return(x+y)
}
mysum1(3,4)

# Example 2: Default arg.
# ----------
mysum2 <- function(x,y=5){
  return(x+y)
}
mysum2(2)
mysum2(2,7)

# return: a. exit function
# if there is NO return 
#    will return the most recently
#    assigned or created object
# 

# Exploit VECTORIZATION to speed-up code
# Simple For Loop
myfunc1 <- function(n, av=0., s=1.)
{
  res <- rnorm(n,mean=av,sd=s)
  tot <- 0.0
  for(i in 1:n){
    tot <- tot + res[i]*res[i]
  }
  return(tot)
}

# Vectorization
myfunc2 <- function(n, av=0., s=1.)
{
  res <- rnorm(n,mean=av,sd=s)
  tot <- sum(res^2)
  return(tot)
}

# Compare timings func1 vs func2
arr <- c(10^4,10^5,10^6,10^7)
for( n in arr){
  cat(sprintf(" N:%d\n",n)) # Functions do NOT print in an NON-INTERACTIVE mode
  s1 <- system.time(myfunc1(n))
  cat("    ", s1,"\n")
  s2 <- system.time(myfunc2(n))
  cat("    ", s2,"\n")
}
