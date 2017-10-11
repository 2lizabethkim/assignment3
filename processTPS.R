# assignment 3
#processTPS.R

# read command line argument
args <- commandArgs(trailingOnly = TRUE)


# load csv file into data frame
TPSdata <- read.csv(args)


# cat "Processing data from file:" with the csv file
cat("Processing data from file:", args, "\n")

# cat this statement
cat("Total number of incident per incident type:", "\n")


# identify unique Incident Types in specific TPSdata file
myIncidentTypes <- unique(TPSdata$Incident_Type)

for (i in myIncidentTypes) {
	# add the total number of incidents per each incident type
	totalIncidentTypes <- (sum(i == TPSdata$Incident_Type))
	# cat each incident type and the total number of each
	(cat('\t', i,'--', totalIncidentTypes, '\n'))
}

# cat the average number of units dispatched for priority level greater than 5
cat("Average number of units dispatched for Priority > 5:", mean(TPSdata$Units_Arrived_At_Scene[TPSdata$Priority_Number > 5]), '\n')


# variable for sorting table of Forward_Sortation_Area in decreasing order
maxFowardSortationArea <- sort(table(TPSdata$Forward_Sortation_Area), decreasing = TRUE)

#cat this statement with the largest number of incidents and the postal code 
cat("Postal code/s with the largest number of incidents (", maxFowardSortationArea[1], '): ', rownames(maxFowardSortationArea)[1], '\n')





