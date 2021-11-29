rm(list=ls())
# A.SPECIAL VALUES:
# ----------------
# 1.Infinity:
# ----------
#   When the value is too BIG to represent => valued:infinite
#   Only associated with numeric vectors
#   Inf : Case-sensitive
a <- Inf
b <- c(3.1415,Inf,3.1,-55,Inf)
1000^200
Inf+10
5/0.             # Other languages NaN
-5/0.
is.infinite(a)
is.finite(a)
Inf*-5
Inf + Inf
Inf - Inf        # => NaN


# 2.NaN:
# -----
# In some situations, it's impossible to express the result of 
# a calc. using a number, Inf, -Inf -> NaN (Not A Number)
x <- NaN
x
y <- Inf/Inf
y
is.nan(y)
0/0
# Every mathematical operation with NaN results in NaN
NaN + 5
2 + (0./0.)*7


# 3.NA: Not Available
# In statistical analyses, sometimes missing data => NA (Not Available)
# NaN : only for numeric values vs NA: for all types

x <- c(1,2,5,6,NA,7)
is.na(x)
mean(x)
mean(x,na.rm=TRUE)
 
# 4.NULL
# Defines an empty entity (cfr. NULL pointer in C/C++)
x <- NULL
x
is.null(x)
y <- NA
y        # [1] in the print-out

x <- c(1:5,NULL,7)
x
mean(x)
y <- c(1:5,NA,7)
y
mean(y)
mean(y,na.rm=TRUE)


# B.Attributes, class, types:
# ---------------------------
# 1.ATTRIBUTES:
# ------------
# Each R-object has some additional information
X <- 1:10
attributes(X)

M <- matrix(X,nrow=2,byrow=TRUE)
attributes(M)
dim(M)

days <- 1:7
names(days) <- c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")
days
attributes(days)
names(days)

# 2.CLASS Function:
# ----------------
# Returns the type of the object
# Every created object is identified with at least 1 object 
class(days)
vec1 <- 1:9
vec1
class(vec1)
is.integer(vec1)

vec2 <- seq(from=1.0,to=9.0,by=0.5)
vec2
class(vec2)
is.numeric(vec2)

vec3 <- c("hello","world")
vec3
class(vec3)
is.character(vec3)

vec4 <- c(F,T,T,F)
vec4
class(vec4)
is.logical(vec4)

# 3.Coercion/Cast
# \sum_{k=0}^n (choose(n,k))^2 = choose(2n,2)
n    <- 5
x    <- 0:5
vec1 <- choose(n,x)
vec1
class(vec1)
vec1*vec1

# choose(2*n,n)
# vec1 <- as.vector(vec1)
z<- vec1%*%vec1
z
class(z)
z<- as.integer(z)
z
