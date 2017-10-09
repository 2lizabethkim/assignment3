# assignment 3

# read command line argument
args <- commandArgs(trailingOnly = TRUE)

# load csv file into data frame
data <- read.csv(args)

names(data)