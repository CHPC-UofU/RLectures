# Global clean-up
rm(list=ls())

# Functional Programming:
# Example 1:
u <- 1:5 ; u
v <- seq(1,23,5) ; v

# Many operations in R are already vectorized 
# e.g.: +,- , ^
u^2 + v

# When used in a function, the function can become vectorized
func1 <- function(a,b){
  
   res <- a^2 + b 
   return(res)
} 

func1(u,v)

# FILTERING
#  A. Filtering (Vectors)
v <- c(12,45,13,-1,23,75,5)
v>=13
which(v>=13)    # Gives us indices for which v>=13
w <- v[v>=13]

#  B. Also works for matrices and dataframes
x <- matrix(1:10,nrow=5,byrow=TRUE)
x
w <- x[x[,2] >=4 & x[,2]<=8,]
w

# ifelse(test,'f if true', 'g if false')
# 
x <- 1:10
x
w <- ifelse(x %% 2 ==0 , 'EVEN', 'ODD')
w
z <- ifelse(x%%2 == 0, x^2, x^3)
z

# Apply family: \in the R base package
# Avoids explicit loops
# apply, lapply, sapply, vapply, mapply, rapply,tapply
# Which one to use?
#   a.depends on the data structure
#   b.on the output to be generated

# Applying a function to ALL elements of a 
# apply(m,dimcode,f,[fargs])  MATRIX
#   m: matrix
#   dimcode: 1 (ROWS) , 2 (COLUMNS)
#   f: function to be applied on arrays (Dim >=2)
#   fargs: (optional) argument list supplied to f
# EXAMPLE 1: 
# ---------
x <- matrix(1:15,nrow=3)
x
yr <- apply(x,1,sum)  # i.e. Column index disappears
yr
rowSums(x)

yc <- apply(x,2,sum)  # Sum matrix over columns  ROW:1   COLUMNS:2
yc
colSums(x)

# Note: you can apply 'apply' to a vector (AFTER a cast to a matrix)


# EXAMPLE 2:
# ---------
# lapply,l f)
#   l: list
#   f: function applied to list/vector
# r
mylist <- lapply(list(1:5,20:30),mean)
mylist

city <- "salt lake city"
cityc <- lapply(city,toupper)
cityc


# You can use EITHER a cast to get a vector
v <- as.numeric(mylist)
v
v[1]
v[2]

citycs <- as.character(cityc)
citycs

# Other options -> use sapply (output:vector)
# sapply : simplied apply -> returns VECTOR
v <- sapply(list(1:5,20:30),mean)
v
v[1]
v[2]

city <- sapply("salt lake city",toupper)
city

# Functions as first class objects
f1 <- function(x,y) return (x+y)
f2 <- function(x,y) return (x-y)

myf <- f2
res <- myf(1:5,seq(from=1,to=9,by=2))
res
myf <- f1
res <- myf(1:5,seq(from=1,to=9,by=2))

# You can edit the functions on the fly
f3 <- edit(f1)
