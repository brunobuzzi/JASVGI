lines
drawLineFrom: startPoint to: endPoint id: id color: color
	"The receiver draw a line from start <startPoint> to end <endPoint> with id <id> and fill color <color>"

	^self drawLineFrom: startPoint to: endPoint id: id widthPx: '1px' stroke: 'black' fillColor: color