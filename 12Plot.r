# Clean up variables from the env.
rm(list=ls())

# Simple plots:
# ------------
# EXAMPLE 1:
# ---------
x <- c(1.1,2,3.5,3.9,4.2)
y <- c(2,2.2,-1.3,0.,0.2)
# type: p: points(defaults)
#       l: lines(only)
#       b: both points & line
#       o: overplot with lines
# title & axis label:
#       main: Title of the plot
#       xlab: X-label
#       ylab: Y-label
# colors: colors() 585:sienna

# Further Graphical Parameters
# ----------------------------
# http://www.statmethods.net/advgraphs/parameters.html
# A.Plotting points (pch: character for each point)
#   
#   pch=0,1,2,3,4,..,25 (1:default)
# B.Lines:
#   lty: Type of the line  1,2,3,4,5,6
#   lwd: Line width (relative to defalt =1)    
# C.Text & Symbol Size
#   cex: control text size in graphs
#   cex: 1 (default) 1.5:1.5 times larger 
# D.Fonts:
#   font: 1(plain),2(bold),3(italic) ,
#         4(bold italic), 5(symbol)
colors()
plot(x,y,type="b",main="Title of the plot",
         xlab="X",ylab="Y",col="sienna",pch=1,
         lty=2,lwd=2,cex=1.2,font=2)
help(par)

# PLOT 2: Underdamped oscillator
# ------
a <- 1.
gamma  <- 1. 
omega0 <- 10
omega1 <- sqrt(omega0^2 - gamma^2)
t  <-  seq(from=0,to=2.5,by=0.005)
f1 <-  exp(-gamma*t)
f2 <- -exp(-gamma*t)
f3 <-  exp(-gamma*t) *a*cos(omega1*t)
# First plot
plot(t,f3,type="l",col="green",lty=3,lwd=2,
     main="Underdamped oscillator",
     xlab="Time/s",ylab="x/x0",ylim=c(-1.,1.0),xlim=c(0.,2.5))
# Second plot -> use lines
lines(t,f1,col="red",type="l",lty=3,lwd=1)
lines(t,f2,col="red",type="l",lty=3,lwd=1)
abline(h=c(0.0),col="blue",lty=2,lwd=1)
legend("topright",legend=c("Under. osc.","Hull"),
                  col=c("green","red"),lty=c(3,3),
                  pt.cex=c(1.5,1.5))

# There are other simple plots available in the Core R
# density plots
# dot plots
# bar plots
# line chart
# pie chart
# box plot
#scatter plot

# Specialized plotting  package:
# http://ggplot2.org/
library(ggplot2)
