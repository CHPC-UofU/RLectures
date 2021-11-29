# Clean up variables from the env.
rm(list=ls())

# What is an R list?
# Mixture of different data types and objects.
#  a. Similar to a C struct
#  b. or python list

# A.CREATION:
# ----------
# Can be done in several ways
aList <- list()  # Empty List
aList
class(aList)

bList <- list(1,2, 8:10,"hello","world")         # NO Names
bList
class(bList)

cList <- list(x=1,y=2,str1="hello",str2="world") # Using names -> Differerence in output (Strings)
cList
class(cList)
length(cList)

dList <- list(matrix(data=1:4,nrow=2,ncol=2),c(T,F,T,T),"hello")
dList
class(dList)


# B.ACCESSING individual elements:
# -------------------------------
# a.WITHOUT NAMES (ALWAYS working)  -> [[ ]]
# --------------------------------
for( i in 1:length(cList)) 
{    
     str = sprintf(" %s %s  %s \n",
     cList[[i]], " type:-> ", class(cList[[i]]))
     cat(str)
}

cat(" dList::")
dList
dList[[1]]
dList[[2]]
dList[[3]]
length(dList)
dList[[1]][,2]
dList[[2]][2]
dList[[3]] <- paste(dList[[3]],"people")
dList

# b.Using NAMES (IFF names are available):
# ----------------------------------------
cat(" x   : -> Type:'", class(cList$x),   "'  Value:",  cList$x)
cat(" y   : -> Type:'", class(cList$y),   "'  Value:",  cList$y)
cat(" str1: -> Type:'", class(cList$str1),"'  Value:",  cList$str1)
cat(" str2: -> Type:'", class(cList$str2),"'  Value:",  cList$str2)

# c.But you can always add NAMES to a list:
# ----------------------------------------
dList
names(dList) <- c("mymat","mybool","mystr")
dList$mymat
dList$mybool
dList$mystr
names(dList)

# NOTE:
# ----
# There is a FUNDAMENTAL difference between [] (slicing -> returns sublist) 
# and [[ ]] -> returns value
for( i in 1:length(cList)) 
{    
  str1 = sprintf(" %s %s  %s \n",
                cList[[i]], " type:-> ", class(cList[[i]]))
  cat(str1)
  str2 = sprintf(" %s %s  %s \n",
                 cList[i], " type:-> ", class(cList[i]))
  cat(str2)
}

# or MAYBE MORE CONCRETE:
# ----------------------
dList
# [[ ]] : Extract Individual el.
dList[[c(2,3)]]
dList[[2]][3]       # Same as dList[[c(2,3)]] 
# Alternative approach:
myVal <- dList[[2]] 
myVal
myVal[3]

# [ ] : Take a slice of the list -> list
dList[c(2,3)]
class(dList[c(2,3)])

# C.Add & delete individual list elements:
# ----------------------------------------
# a.Addition ::
cList
cList$var = "New value"
cList

# b.Using indices ::
cList[[6]] <- 13
length(cList)
cList

cList[[10]] <- 12
length(cList)
cList

# c.Deletion::
cList[[6]] <- NULL
cList
cList[6:9] <- NULL
cList
length(cList)


# D.Very useful WHEN returning more than 1 variable:
# --------------------------------------------------
trial <- function(n)
{
  x <- n*(n+1)/2
  y <- cbind(1:n,(1:n)^2)
  list('x'=x,'y'=y)
}  

n <- 8
res <- trial(n)
res$x
res$y

