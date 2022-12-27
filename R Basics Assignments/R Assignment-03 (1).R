#q-1

# part a
a <- 1:20
print(a)

# part b
b<- 20:1
print(b)

# part c
c <- c(1:20,19:1)
print(c)

# part d
temp <- c(4, 6, 3)
print(temp)

# part e
temp2 <- rep(temp, 10)
print(temp2)

# part f
temp3 <- rep(temp, length=31)
print(temp3)

# part g
temp4 <- rep(temp, times = c(10, 20, 30))
print(temp4)

##############################################################################################################################

# QUESTION 2

x <- seq(3, 6, by = 0.1)
print(x)
print(exp(x)*cos(x))

##############################################################################################################################

# QUESTION 3

#part A
A1 = (0.1^seq(3,36,by=3))*(0.2^seq(1,34,by=3))
print(A1)

# part B
B1 = (2^(1:25))/(1:25)
print(B1)

#############################################################################################################################

# QUESTION 4
# part A
temp <- 10:100
sum1 <- sum(tmp^3+4*temp^2)
print(sum1)
# part B
temp <- 1:25
sum2=sum((2^tmp)/temp + 3^tmp/(tmp^2))
print(sum2)

################################################################################################################################

# QUESTION 5

# part A
vec1 <- paste("label"),1:30
print(vec1)

# part B
vec2 <- paste("fn"),1:30
print(vec2)

###############################################################################################################################

# QUESTION 6

set.seed(50)
xVec<- sample(0:999, 250, replace = T)
yVec <- sample (0:999, 250, replace = T)

# part A
new_vec2 = yVec[-1]-xVec[-length(xVec)]
print(new_vec2)

# part B
new_vec3 = sin(yVec[-2])/cos(xVec[-1])
print(new_vec3)

# part C
vec4 = (xVec[-3]+2*xVec[-2]-xVec[-1])
print(vec4)

# part D
sum(exp(-xVec[-1])/(xVec[-length(xVec)]+10))

##############################################################################################################################

# QUESTION 7

#part A
for (i in yVec){
  if (i<600){
    print(i)
  }
}

#part B
which(x %in% c(2,4))
for (i in yVec){
  if (i<600){
    print(which(i %in% yVec))
  }
}
# every value has a index of i 

#part C

# part D
xm = mean(xVec)

vec5 = (xVec[-1]-xm)^1.5 ###############
print(vec5)

# part E
sum(yVec>max(yVec)-200)

# part F
sum(xVec%%2==0)

# part G
xVec[order(yVec)]

# part H
yVec[c(T,F,F)]

##############################################################################################################################

# QUESTION 8
1+sum(cumprod(seq(2,38, by = 2)/seq(3,39,by = 2)))

##############################################################################################################################
