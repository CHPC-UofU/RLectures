rm(list=ls())

# R as a simple CALCULATOR:
# -------------------------
1 + 2
14/(3+5)
25**2 
25^2
sqrt(x=5.3)
log(100)
log(x=100,base=7)
7^log(x=100,base=7)
1.2E+12
1.3E-07


# VARIABLES:
# ---------
# Assignment of variables 
x <- 7         # 1. Preferred way
x
y = 8          # 2.
y
y = y+1
y
assign("z",10) # 3. 
z
# Variable names are CASE-sensitive
value <-13
Value      # Should give error

# R has DYNAMIC typing (cfr. Python) vs. static typing
x <- 7
x <- "Hello"

# List all variables in the workspace
ls()
# How to REMOVE a variable from the workspace?
rm(z)
ls()
# Remove everything from the workspace
# Good practice when starting with a new script
rm(list=ls())


# BASIC DATA TYPES:
# ----------------
# We will discuss the following topics ::
#   A. numeric
#   B. integer
#   C. complex
#   D. character
#   E. factor 
#   F. date
#   G. boolean 

# A. Numeric Type:
x <- 7
x
class(x)
is.numeric(x)

# B. Integer (subset/subclass of numeric):
x <- 19L
x
class(x)
is.integer(x)
is.numeric(x)
x/5      # "Regular" division cast number into a numeric
x%/%5    # integer division
x%%5     # modulo

# C. Complex numbers:
sqrt(-1)              # Error
sqrt(as.complex(-1))  # Cast numeric to numeric 
z <- complex(real=5,imaginary=3.)
z
is.complex(z)
is.numeric(z)

Re(z)
Im(z)
Conj(z)
Mod(z)
Arg(z)
# Check Mod & Arg
Mod(z) == sqrt(z*Conj(z))
atan(Im(z)/Re(z))


# D.Characters/Strings:
#   Allows quotes & double quotes
x <- "Hello World"
x
y <- 'This is a string'
y
class(x)
nchar(x)
z <- 234
z
z <- as.character(234)
z
x == "Hello World"

# CONCATENATION of strings
# cat :: output to screen
# paste:: concatenation + returns results as R-object
ex <- c("This", "!", "example","hello", "is", "cool")
cat(ex[1],ex[5],ex[6],ex[2])
paste(ex[1],ex[5],ex[6],ex[2])
cat(ex[1],ex[5],ex[6],ex[2],sep="")
paste(ex[1],ex[5],ex[6],ex[2],sep="-")

a <- 5
cat("the square of",a, "is",a^2)

# Extract substring
city <- "Salt Lake City"
substr(city,start=6,stop=9)

# E. Factors
# To be covered in dataframe.

# F. Dates:
d1 <- as.Date("2016-08-24") # YYYY-MM-DD
d1
class(d1)
d1Value <- as.numeric(d1) # #Days since Jan. 1 1970
d1Value

d2 <- as.POSIXct("2016-08-24 16:35")
d2
class(d2)
d2Value <- as.numeric(d2) # Seconds since Jan. 1 1970 
d2Value


# G. Booleans: (like in C)
bool1 <- TRUE
bool2 <- FALSE
bool1 || bool2  # OR
bool1 && bool2  # AND
!bool1          # NOT
bool1 == bool2 
bool1 != bool2
x <- 5
y <- 6
x == y
x != y
x <= y
class(x)

