bar
drawVerticalBarGraph: aDictionary at: aPoint maxHeight: maxHeight width: width
	"The receiver draw a Vertically oriented Bar Graph with values in <aDictionary> where the key is the label and the value is value.
	The max vertical bar is defined by <maxHeight> where the max value in <aDictionary> will be rendered as maxHeight in the graph.
	The witdh of each bar is defined by <width>"

	^self drawVerticalBarGraph: aDictionary 
			at: aPoint 
			maxHeight: maxHeight 
			width: width 
			transform: 'translate(20,', (maxHeight + 20) printString,')'