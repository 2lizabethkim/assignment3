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
cat("Postal code/s with the largest number of incidents")



#count1 <- (sum(i == myIncidentTypes))
#cat('count1')

#cat("Unique data frame ----------\n")

#for (elem in unique(data$Incident_Type)) {
	#print(length(which(elem == data$Incident_Type)))
#}
#cat("Types are", a, "\n")
#unique(data)
#data[1:10, "Incident_Type"]
