# assignment 3

# read command line argument
args <- commandArgs(trailingOnly = TRUE)
cat("Processing data from file:", args, "\n")

# load csv file into data frame
data <- read.csv(args)

names(data)