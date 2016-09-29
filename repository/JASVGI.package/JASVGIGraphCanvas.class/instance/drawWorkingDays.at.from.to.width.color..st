days
drawWorkingDays: workingDays at: aPoint from: startDate to: endDate width: width color: color
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	
	^self drawWorkingDays: workingDays at: aPoint from: startDate to: endDate width: width color: color dayHasContent: false