#!/bin/awk

BEGIN{getline <"temp"
	slope = $1
	origin = $2

	getline rsquared <"temp2"

	print ("Slope ", slope) > "results"
	print ("Origin ", origin) >> "results"
	print ("R^2 ", rsquared) >> "results"
	print "Area", "Concentration" >> "results"

	FS = ","
}

{print($1, ($1-origin)/slope) >> "results"}
