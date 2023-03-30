install.packages("irr")

##load the library
library(irr)


file <- "spanishTag.csv" 

## read the data 

# data <- read.csv(file, header=TRUE)

## or read the data from file
data <- read.csv(file, header=TRUE,sep =";")


##check the data
head(data)


######## selecting colums #############


##delete token column (fisrt and second column)
data_noId <- data[,-1]

##check the data
head(data_noId)


######## applying the ITA functions #############

print("Observed agreement")


## calculate fleiss' kappa (for more than two annotators)
print("Fleiss' kappa")
kappam.fleiss(data_noId)


