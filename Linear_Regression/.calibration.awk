#!/bin/awk

BEGIN{FS=","}

#NR == 1{	fieldlabel1 = $1
#		fieldlabel2 = $2
#}

FNR != 1{sum1 += $1
	sum2 += $2
	sum1squared += $1 * $1
	sum2squared += $2 * $2
	sum1times2 += $1 * $2
}

END {points = NR -1 #y is $2 (signal) ||||| x is $1 (concentration)

	slope = ((points * sum1times2)-(sum2*sum1))/((points * sum1squared) -(sum1 * sum1))

	average2=sum2/points

	origin = ((sum1squared * sum2) - (sum1 *sum1times2)) / ((points * sum1squared) - (sum1 * sum1))


	print( slope, origin, average2) > "temp"
#	print (slope, origin, fieldlabel2, fieldlabel1)
}
