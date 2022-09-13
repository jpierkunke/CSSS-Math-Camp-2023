# review

## creating variables
x <- 3
x + 5
y = x + 5 # what is y?
z = c(2,3,5,7)
class(z)
a <- c("red","blue")
class(a)

## crating a dataset
id = 1:5
hh_income = c(32, 40, 36, 55, 18)
hh_members = c(3, 5, 5, 3, 4)
hh_edu = c("high school", "high school", "some graduate", "college", "high school")
hh_data = data.frame(id, hh_income, hh_members, hh_edu)

hh_data
str(hh_data)

# loading data
milk = read.csv("milk.csv")

# examining data
class(milk)
str(milk)
head(milk)
tail(milk)

names(milk)
ncol(milk)
nrow(milk)
dim(milk)

# Looking at specific columns of the data
protein <- milk$Protein

mean(protein)
range(protein)
median(protein)
sd(protein)
quantile(protein, .75)
summary(protein)

# extracting specific values
head(protein, n=8)
protein[3]
protein[1:5]
protein[c(3,4,8)]

# unique values of week
milk$Diet
unique(milk$Diet)

# plotting

## scatterplot of protein versus week
plot(milk$Week, milk$Protein, xlab="Week", ylab="Protein (mg)",
     main="Change in protien over time in cows",
     ylim = c(0,max(protein)))

# subsetting data (by row or column)

## selecting columns
milk_select_cols = milk[,c("Diet","Protein")]
milk_select_cols = milk[,c(1,4)]
head(milk_select_cols)

## selecting rows
milk[1:5, ]

## selecting rows based on values
milk_mixed = milk[milk$Diet=="Mixed",] # "==" is the comparison operator
nrow(milk_mixed)

cow1 = milk[milk$Cow==1, c("Week", "Protein")] # cow1 only
cow2 = milk[milk$Cow==2, c("Week", "Protein")] # cow2 only

## plot individual cows
plot(cow1$Week, cow1$Protein, type="l", ylim=c(2.5,4.5))
lines(cow2$Week, cow2$Protein, col="red")
