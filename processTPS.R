# assignment 3

# read command line argument
args <- commandArgs(trailingOnly = TRUE)
cat("Processing data from file:", args, "\n")

cat("Total number of incident per incident type:", "\n")

# load csv file into data frame
TPSdata <- read.csv(args)

myIncidentTypes <- unique(TPSdata$Incident_Type)
for (i in myIncidentTypes) {
	count1 <- (sum(i == TPSdata$Incident_Type))
	(cat('\t', i,'--', count1, '\n'))
}


