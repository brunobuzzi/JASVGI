lines
drawLineFrom: startPoint to: endPoint color: color
	"The receiver draw a line from start <startPoint> to end <endPoint> with fill color <fillColor>"

	^self drawLineFrom: startPoint to: endPoint id: UUID new asString color: color