bar
drawHorizontalBarGraph: aDictionary at: aPoint maxWidth: maxWidth width: width
	"The receiver draw a Horizontally oriented Bar Graph with values in <aDictionary> where the key is the label and the value is value.
	The max horizontal bar is defined by <maxWidth> where the max value in <aDictionary> will be rendered as maxWidth in the graph.
	The witdh of each bar is defined by <width>"

	^self drawHorizontalBarGraph: aDictionary 
			at: aPoint 
			maxWidth: maxWidth 
			width: width 
			transform: 'translate(20,20)'