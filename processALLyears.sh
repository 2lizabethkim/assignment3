#!/bin/bash

for i in *csv; do 
	Rscript processTPS.R $i 
	echo ""   
done
