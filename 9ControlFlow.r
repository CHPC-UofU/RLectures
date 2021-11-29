# Global clean-up
rm(list=ls())

# Discussion:
#  for
#  while
#  if/else
#  switch


# For Loop Construct
x <- seq(from=3,to=25,by=4)
x
# A.Loop over objects
for(val in x){
  print(val)
}
# B.Loop using index
for(i in 1:length(x))
{
  print(x[i])
}


# While construct
i <-1
while(i<=length(x)){
  print(x[i])
  i <- i +1
}

# Repeat construct
i<-1
repeat{
  print(x[i])
  if(i==length(x))
  {
    break
  }
  i <- i +1
}


# If-Else statements
# Case A: If/Else
NUMEL <- 25
x <- sample(1:1000,NUMEL,replace=TRUE)
x
veven <- vector()
vodd  <- vector()

for (el in x)
{
   if(el %% 2 == 0){
     veven <- c(veven,el)
   }
   else{
     vodd <- c(vodd,el)
   }   
}  
cat("Even numbers::")
veven
cat("Odd numbers::")
vodd

# if/else if/else construct
check_number <- function(val){
  if (val > 0) {
    sprintf(" %d:positive number", val)
  }
  else if (val <0) {
    sprintf(" %d:negative number", val)
  }
  else {
    sprintf(" %d:zero",val)
  }
}

check_number(2)
check_number(0)
check_number(-17)
   
# Switch statement
mystring <- "Lisa"
if(mystring=="Homer"){
  foo <- 12
} else if(mystring=="Marge"){
  foo <- 34
} else if(mystring=="Bart"){
  foo <- 56
} else if(mystring=="Lisa"){
  foo <- 78
} else if(mystring=="Maggie"){
  foo <- 90
} else {
  foo <- NA
}
foo
# Alternative version using switch
# EXPR can be Numeric or a String
# a.STRING: exact string matching
mystring <- "Marge"
foo <- switch(EXPR=mystring,Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90,NA)
foo
# b.NUMERIC: positional match
#    if positional match not covered => NULL
mynum <- 3
foo <- switch(mynum,12,34,56,78,NA)
foo

