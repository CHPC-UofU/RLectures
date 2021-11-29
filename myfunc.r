# This is our first function
myFirstFunction <- function(str="")
{
   attach(mtcars)
   plot(mpg,xlab="",xaxt="n",main=str,ylab="MPG")
   axis(1, at=1:32,labels=rownames(mtcars),las=2)
   cat("This is the end of my function")
}  
