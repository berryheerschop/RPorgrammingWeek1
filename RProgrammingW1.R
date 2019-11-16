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








