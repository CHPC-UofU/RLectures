# Clean up variables from the env.
rm(list=ls())

# 'Everything' in R is a vector
# Note: a. R doesn't know the concept of a scalar.
#          i.e. scalar := vector of length 1
#       b. All elements of a vector are of the same type 
#          & stored contiguously.
#       c. All elements of the vector start at 1 (cfr. Fortan)
#       d. Can also have NA value (cfr Python None)

# A. CREATION of vectors ::
# -----------------------
# c: stands for concatenate

x <- 1:10
x
y <- 10:1
y
v <- -7:5
v
w <- 5:-7
w
x <- c(1,4,7,13)
x

x <- seq(from=1,to=17,by=3) # Arithmetic SEQUENCE
x
y <- seq(from=3,to=27,length.out=4)
y

y <- rep(x,2) # REPEAT the vector x 2 times
y
y <- rep(x,times=2) 
y
y <- rep(x,each=2)
y
y <- rep(x,each=2,times=3)
y

x <- vector(mode="complex", length=4) # Default = "logical"
x
x[1] <- 4
x

# B. OPERATIONS on vectors -> element-wise:
# ----------------------------------------
x <- -3:3
y <-  1:7
x
y
x2 <- x^2
x2
xy <- x*y
xy
xpy <- x^y
xpy
length(x)
sum(x)
prod(x[-4])

# Length function + recycling
x <- 0:10
y <- 1:2
length(x)
length(y)
x
y
x+y

x <- seq(2,100,by=15)
y <- seq(0,100,by=10)
x
y
x[x>45]
any(x<y)
all(x[6:7]>y[2:3])
x[4:6]
w
w[c(1,3,5,7)]
a <- c(x,w)   # Appending vector  to vector
a

# '-' : Exclude elements
x
x[-c(2,4,6)]
x

y <- c(13,24,75,33,89,91,102,115)
y
z <- y[-1] - y[-length(y)]
z


# C. Vector & Hash Table:
# ----------------------
jobtype <- c("clerk","baker","barrista","electrician","plumber")
firstname <- c("John","Gill","Cedar","Marie","Joe")
jobtype
firstname

# Check whether names are set.
names(jobtype) <- firstname
jobtype 
job1 <- jobtype[3]
job1
job2 <- jobtype["Marie"]
job2
# Remove names from the vector
names(jobtype) <- NULL
jobtype

# D. NULL & NA:
# ------------
#  
v <- c(1:5,NA,7,NA,9)
mean(v) 
is.na(v)
mean(v,na.rm=TRUE)
v <- c(1:5,NULL,7,NULL,9)
mean(v)
is.null(v)

# E.which/in operator /match:
# --------------------------
x <- 1:10
which(x>2 & x<=7)  # Returns indices  LOOKS STRANGE (cfr. C) but is correct (see below)

v <- letters
v
which('f'==letters)

# in
'f' %in% letters    # Returns boolean

# match
match('f',v)        # Returns index or NA

# F. sort function:
# ----------------
sort(x=c(2.5,-1,-10,3.44),decreasing=FALSE)

# NOTE on the boolean operators (AND , OR):
# ----------------------------------------
x <- 5
y <- 6
x < 10 && x>0     # Combinations of simple atomic units
x < 0 || x > 10   # Comb. of simple atomic units

a <- c(T,F,T,F,F)
b <- c(F,F,T,F,T)
a
b
a | b  # Element-wise comparison
a & b  # Element-wise comparison
