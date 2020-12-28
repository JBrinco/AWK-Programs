#!/bin/awk

BEGIN{getline <"temp"
	slope = $1
	origin = $2
	averagey = $3
	FS = ","
}

{estimatedY = ($1*slope)+origin
	SStot = SStot +($2-averagey)*($2-averagey)
	SSres = SSres +($2-estimatedY)*($2-estimatedY)
}
END{print( 1-(SSres/SStot)) > "temp2"}
