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

cat("Average number of units dispatched for Priority > 5:", mean(TPSdata$Units_Arrived_At_Scene[TPSdata$Priority_Number > 5]), '\n')





