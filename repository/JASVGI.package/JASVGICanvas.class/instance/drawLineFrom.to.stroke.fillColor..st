lines
drawLineFrom: startPoint to: endPoint stroke: stroke fillColor: color
	"The receiver draw a line from start <startPoint> to end <endPoint> with id <id> and fill color <color>"

	^self drawLineFrom: startPoint to: endPoint widthPx: '1px' stroke: stroke fillColor: color