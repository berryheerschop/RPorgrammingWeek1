# Show working directory

getwd()

#define a new variable x

x <- 1

# Print the value of x

print(x)

# Define an integer sequence variable

y <- 1:20

#autoprint y

y

#Divide by Infinity

1/ Inf

# Show difference between a numeric and an integer
z <- 1
w <- 1L

z
w

class(z)
class(w)

# Create a vector of objects with the c() function: concatenate

a <- c(1,3,5)
b <- c("a", "b", "d")
c <- c(TRUE,TRUE,FALSE,FALSE,TRUE)
d <- 1:29

# Print values
a
b
c
d

# Use the vector function to create a type of vector with n elements

v <- vector("numeric",4)
v

# Coercion: obects of a different type in defined in one vector result in one type of vector

h <- c(1.5,"anderhalf")
e <- c(FALSE, "Dit is goed")
k <- c(T,3.14)

h
e
k

# Conversion of one type to another eg form numeric to character or numeric to logical

as.character(a)
as.numeric(h)
as.logical(k)


# List can contain elements with different types

l1 <- list(1,F,"Fout", 1+2i)
l1

# Creating a matrix with 2 rows and 3 columns

m1 <- matrix(nrow=2, ncol=3)
m1
dim(m1)
attributes(m1)


# Create a factor vector

fac <- factor(c("Male", "Female", "Unknown"),levels=c("Male","Female", "Unknown"))
fac

table(fac)

# Create a data frame
df <- data.frame(foo=1:4,bar=c(TRUE,TRUE,FALSE,TRUE))

nrow(df)
ncol(df)

summary(df)

occ_data <- read.csv("occupation-2018-census-csv.csv")
summary(occ_data)
pop <- subset(occ_data, Occupation != "Total" & Occupation != "Total stated")
pop

n_pop <- pop$Employed_census_usually_resident_population_count_aged_15_years_and_over
barplot(n_pop)

x <- c(4, "a", TRUE)
class(x)

x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x, y)

x <- list(2, "a", "b", TRUE)
x[[2]]

x <- 1:4
y <- 2
x+y

x <- c(3, 5, 1, 10, 12, 6)
x[x<6]<-0
x

unzip("quiz1_data.zip")
read.csv("hw1_data.csv")
my_data <- read.csv("hw1_data.csv")
str(my_data)


my_data <- read.csv("hw1_data.csv",nrows=2)
my_data

my_data <- read.csv("hw1_data.csv")
tail(my_data,2)

my_data <- read.csv("hw1_data.csv")
my_data[47,]

oz <-my_data$Ozone
oz
bad <- is.na(oz)
length(oz[bad])

good <- oz[!bad]

mean(good)

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90.

my_data <- read.csv("hw1_data.csv")

my_filtered_data <- my_data[my_data$Ozone>31 & my_data$Temp >90,]
my_complete_filtered_data <- my_filtered_data[complete.cases(my_filtered_data), ]
solar_R <- my_complete_filtered_data$Solar.R
mean_solar_R <- mean(solar_R)
mean_solar_R

my_filtered_data2 <- my_data[my_data$Month==6,]
mean_temp_my_filtered_data2 <- mean(my_filtered_data2$Temp)
mean_temp_my_filtered_data2

data_for_may_ozone <- my_data[my_data$Month==5,"Ozone"]
complete_data_for_may_ozone <- data_for_may_ozone[complete.cases(data_for_may_ozone)]
complete_data_for_may_ozone

max(complete_data_for_may_ozone)



















