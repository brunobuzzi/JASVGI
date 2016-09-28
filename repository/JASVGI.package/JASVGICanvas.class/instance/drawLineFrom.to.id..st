lines
drawLineFrom: startPoint to: endPoint id: id
	"The receiver draw a line from start <startPoint> to end <endPoint> with id <id>"

	^self drawLineFrom: startPoint to: endPoint id: id widthPx: '1px' stroke: 'black' fillColor: 'black'