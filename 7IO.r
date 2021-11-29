# Global clean-up
rm(list=ls())

# Data
# IO

# R has a lot of built-in datasets (part of the R distribution)
data()
?airquality
names(airquality)
airquality[1:10,]
airquality$Ozone


# A.Reading from screen/keyboard ::
# Reading from Keyboard  -> End:: blank entry
a <- scan()   # DEFAULT numeric
a
mode(a)

# Reading strings from keyboard
b <- scan(what=" ")
b
mode(b)

# readline() -> string
w <- readline()
w

# B. Reading external DataFiles
# Simple example
getwd()  # Working Directory
tt <- read.table(file="./DataFiles/seaice.txt",header=TRUE)
names(tt)

# Linear Regression (quadratic curve)
x <- tt$Year
x2 <- x^2
y <- tt$Ice
f1 <- lm(formula = y ~ x + x2)
summary(f1)
anova(f1)
xarr  <- seq(from=min(x),to=max(x),by=0.05)
beta0 <- f1$coefficients[1]
beta1 <- f1$coefficients[2]
beta2 <- f1$coefficients[3]
yarr  <- beta0 + beta1*xarr + beta2 *xarr^2
plot(x,y,main="Extent Artic Sea Ice in month of September")
lines(xarr,yarr,lty=3,col="red",lwd=2)

# Simple Write-out Example
my.state <- c("AL","AK","AZ","AR","CA","CO")
my.year <- c(1819,1959,1912,1836,1859,1876)
mydf <- data.frame(state=my.state,year=my.year,stringsAsFactors = FALSE)
mydf
getwd()
write.table(mydf,"./DataFiles/state.txt",row.names=FALSE,col.names=TRUE,quote=TRUE)
tt <- read.table("./DataFiles/state.txt",header=TRUE,stringsAsFactors = FALSE)
tt
