pie
drawPieAngles: anglesDictionary at: aPoint radius: radius
	"The receiver draw a Pie Graph with values in <anglesDictionary> where the key is the label and the value is the angle.
	The total sum must be 360 and begin in 0 radian and anti clockwork.
	The radius of the pie is defined by <radius>."

	^self drawPieAngles: anglesDictionary 
			at: aPoint 
			radius: radius 
			transform:  'translate(', (radius + 20) printString, ',', (radius + 20) printString,')'