
### assignment number 02

# que=1
# Write a program to check whether a year (integer) entered by the user is a leap year or not? 

year = 1900
if((year %% 4) == 0) {
  if((year %% 100) == 0) {
    if((year %% 400) == 0) {
      print(paste(year,"is a leap year"))
    } else {
      print(paste(year,"is not a leap year"))
    }
  } else {
    print(paste(year,"is a leap year"))
  }
} else {
  print(paste(year,"is not a leap year"))
}

# que 2
## Write an R program to find the sum of natural numbers without formula using the if-else statement and the while loop. 
num=5
if(num < 0) {
  print("Enter a positive number")
} else {
  sum = 0
  while(num > 0) {
    sum = sum + num
    num = num - 1
  }
  print(paste("The sum is", sum))
}



## que - 03
# Write a program that prints the grades of the students according to the marks obtained.
marks = 500
if (marks >= 800 && marks <=1000) {
  grade = 'A+';
  } else {
      if (marks >= 700 && marks <= 799) {
        grade = 'A';
   } else {
       if (marks >= 500 && marks <= 699) {
         grade = 'B+';
     } else {
         if (marks >= 400 && marks <= 499) {
           grade = 'B';
       } else {
           if (marks >=150 && marks <=399) {
             grade ="C";
         } else {
            grade = 'D';
        }
      }
    }
   }
  }
print(paste("grade of student is :",grade))

#que - 04
## Write an R program to make a simple calculator that can add, subtract, multiply and divide using switch cases and functions. 
add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}
divide <- function(x, y) {
  return(x / y)
}

print("Select operation.")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
choice = as.integer(readline(prompt="Enter choice[1/2/3/4]: "))
num1 = as.integer(readline(prompt="Enter first number: "))
num2 = as.integer(readline(prompt="Enter second number: "))
operator <- switch(choice,"+","-","*","/")
result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2))
print(paste(num1, operator, num2, "=", result))


# Ques 5
install.packages("readxl")
library("readxl")
data <- read_excel("C:\\Users\\riddhi\\OneDrive\\Documents\\Smart Phone.xlsx")
print(data)
data["Company"]
unique(data["Company"])
class(data)

#data[unique(data["Company"]) & max(data["Price"])]

head(data)

summary(data)

View(data)

install.packages("dplyr")
library(dplyr)

max(data$Price)

min(data$Price)

data %>%
  group_by(Company) %>%
  summarise(max = max(Price,na.rm = FALSE))

data %>%
  group_by(Company,Model) %>%
  filter(Price == min(Price,na.rm = FALSE))


# ques 6
install.packages("data.table")
library("data.table")

# For max - 
data %>%
  group_by(Company) %>%
  slice_max(Price)

# For min - 
data %>%
  group_by(Company) %>%
  slice_min(Price)


