# Clean up variables from the env.
rm(list=ls())

# A.FACTORS in R:
#   ------------
#    a. Take a limited # of different values -> CATEGORICAL variables
#    b. categorical variables  !=   continuous variables 
#    c. Factors: integer variables with a string attached to it -> levels
#    d. Use factor() to create a factor
#    e. Only numeric and string variables can be converted to factors

# EXAMPLE 1:
# ---------
data1 <- sample(0:4,size=25,replace=TRUE) # Create a vector with rdn number [0,4]
data1
myfac1.data = factor(data1, labels=c("VeryLow","Low","Medium","High","VeryHigh"))
myfac1.data
levels(myfac1.data)
is.factor(data1)
is.factor(myfac1.data)

# EXAMPLE 2:
# ----------
temp.data <- c("High","Low","VeryHigh","Low","VeryLow","Medium",
               "VeryHigh","VeryHigh","Low","Low","Medium","VeryHigh",
               "VeryHigh","VeryHigh","Low","High","VeryLow")
temp.data
myfac.temp.data <- factor(temp.data)
myfac.temp.data
levels(myfac.temp.data)


# B. DATA FRAME:
# -------------
# More general than matrices : 
#   columns can have different types 
# Technically: List of vectors of the SAME! length
#   

# Example 1:
# ---------
mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"),
                     age=c(42,40,17,14,1),
                     sex=factor(c("M","F","F","M","M")))
mydata

# Extract parts of it:
# a.(using List Syntax)
mydata[[1]]
mydata[[2]]
mydata[[3]]
mydata[[2]][3]

# b.(using names)
mydata$person
mydata$age
mydate$sex
mydata$age[3]

# c.(using matrix syntax)
mydata[,1]
mydata[,2]
mydata[,3]
mydata[3,2]
nrow(mydata)
ncol(mydata)
dim(mydata)

# Note mydata[[1]] is of factor type
# Character strings automatically converted to factors
# -> to prevent use stringsAsFactors=False (Default=True)
mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"),
                     age=c(42,40,17,14,1),
                     sex=factor(c("M","F","F","M","M")),
                     stringsAsFactors=FALSE)
mydata
mydata[[1]]
mydata[[2]]
mydata[[3]]

# Adding data to existing set (rows & columns)
# A.New Record/Row (rbind 2 data frames)
newrec <- data.frame(person=c("John"),age=c(23),
                     sex=factor(c("M"),levels=levels(mydata$sex)),
                     stringsAsFactors=FALSE)
newrec
mydata <- rbind(mydata,newrec)
mydata

# B. Add a new column
funny <- factor(c("H","M","M","L","H","H"))
funny
mydata <- cbind(mydata,funny)
mydata

# or using matrix/names syntax
mydata[7,]=c("suzie",19,"F","H")
mydata

mydata$yedu= c(12,12,16,10,12,16,20)
mydata

# C. Delete Row/column
mydata$funny <- NULL
mydata
mydata<-mydata[-c(6),] # You need to RECREATE IT
mydata
