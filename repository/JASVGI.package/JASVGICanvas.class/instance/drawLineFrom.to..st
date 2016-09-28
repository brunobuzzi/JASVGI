lines
drawLineFrom: startPoint to: endPoint
	"The receiver draw a line from start <startPoint> to end <endPoint> "

	^self drawLineFrom: startPoint to: endPoint id: UUID new asString