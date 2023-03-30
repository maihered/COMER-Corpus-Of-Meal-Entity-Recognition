install.packages("irr")

##load the library
library(irr)


file <- "BasqueTag.csv" 

## read the data 

# data <- read.csv(file, header=TRUE)

## or read the data from file
data <- read.csv(file, header=TRUE,sep =";")


##check the data
head(data)


######## selecting colums #############


##delete token and NA column (fisrt and second column)
data_noId <- data[,-1]
data_noId <- data_noId[,-3]
##check the data
head(data_noId)

##select two columns
two_annotators <- data_noId[,c(1,2)]


##check the data
head(two_annotators)
######## applying the ITA functions #############

print("Observed agreement")


## calculate cohen's kappa (only for two annotators). 


print("Cohen's kappa for two annotators")
kappa2(two_annotators)

