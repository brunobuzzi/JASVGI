pie
drawPiePercentage: percentageDictionary at: aPoint radius: radius
	"The receiver draw a Pie Graph with values in <percentageDictionary> where the key is the label and the value is the percentage.
	The total sum must be 100.
	The radius of the pie is defined by <radius>."

	^self 
		drawPieAngles: (percentageDictionary collect: [:per | (per * 360) / 100]) "convert percentaje to pie angle"
		at: aPoint
		radius: radius