## now it's my turn :) - Class Assignment

# Remove/clear the memory
rm(list = ls())
dev.off()

# Load libraries if any
library(psych)

# **********************************************************************
#1. Create a vector of length 12. Print the 3rd and 7th element
vec12 <- seq(1,12)
cat("The 3rd and 7th element are = ",vec12[c(3,7)])

# **********************************************************************
# 2. Create a vector of lenth 21 stating with the value 3.4 and ending with value 9.6
# what is the position of value 8.0
vec2 <- seq(3.4,9.6, length.out = 32 )
paste("The position of value 8.0 =", which(vec2 == 8.0))

# **********************************************************************
# 3. Create the 4x4 matrix
m <- matrix(c(1,3,4,2,6,2,12,9,3,7,8,9,2,1,8,0), byrow = T, nrow = 4)
m

#3.a Return 2nd column
cat("The 2nd column of the matrix ==",m[,2])

#3.b Change the element in the 2nd row and 2nd col to 3
cat("Element in 2nd row and 2nd col -- Before --",m[2,2])
m[2,2] <- 3
cat("Element in 2nd row and 2nd col -- After --",m[2,2])

# **********************************************************************
# 4. random sample from a ND of length = 200 and mean = 4 and std.dev =2.
# use set.seed(100)
set.seed(100)

r200 <- rnorm(200, mean = 4, sd = 2)

#$4.a
cat("Total values less than 2 are == ",sum(r200 < 2))

#$4.b
cat("Total values between 3 and 5 (excluding 3 and 5) == ",sum(r200 > 3 & r200 <5))

#4.c
cat("The mean and std. dev of the data \n mean ==", mean(r200), " std.dev ==", sd(r200))

# **********************************************************************
#5.a
day1data <- read.csv("/home/hduser/Documents/myModernStats/day1_data.csv", header = T) 

cat("Dimension of the data file read in == ", dim(day1data))

cat("Mean, Std. dev., Min and Max of column 4 i.e. X4 == ")

mean(day1data$X4, na.rm = T)
sd(day1data$X4, na.rm = T)
min(day1data$X4, na.rm = T)
max(day1data$X4, na.rm = T)

## Alternate way - using describe from psych library
describe(day1data$X4, na.rm = T)

