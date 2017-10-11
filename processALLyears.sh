#!/bin/bash

#assignment3
#processALLyears.sh

for i in *csv; do 

#process Rscript processTPS.R for all years

	Rscript processTPS.R $i 
	echo ""   
done
