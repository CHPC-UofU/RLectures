# Clean up
rm(list=ls())

# Scoping rules
# Environment
#   separate containers where data are stored
#   allows to distinguish between id. names

# GLOBAL env.: contains user-defined objects
x <- 5
ls()   # list objects in curr. global env
y <- matrix(1:10, nrow=4, ncol=5)
ls()
rm("x")  # Remove x


# PACKAGE env.
#  package can have visible 
#  and invisible functionality
#  (cfr. private & public variables in C++)
search()  # See visible packages
ls(".GlobalEnv")
ls("package:base")

search()
library(hermite)
# search(hermite)
ls("package:hermite")
?phermite

# LOCAL ENV
# When a function is created a local env
# is created which disappears at the end of the function
z <- matrix(data=1:4,nrow=2,ncol=2)  # local env with data, nrow & ncol

# seq function
w <- seq(from=2, to=5, by=0.5)
environment(seq)
ls("package:base")  # contains seq

# Remove package from search()
search()
qhermite(p=0.7,a=1.,b=1.)
detach("package:hermite")  # Remove hermite package from search path
search()
qhermite(p=0.7,a=1.,b=1.)

# Attach: Add Objects to search path
wcapital <- list(UT='Salt Lake City',NV='Carson City',AZ='Phoenix',NM='Santa Fe')
wcapital$UT
wcapital
ls(".GlobalEnv")
search()

attach(wcapital)
ls(".GlobalEnv")
search()
UT
detach(wcapital)
search()
UT
wcapital$UT

