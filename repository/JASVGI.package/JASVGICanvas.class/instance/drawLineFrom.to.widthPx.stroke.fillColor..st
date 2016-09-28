lines
drawLineFrom: startPoint to: endPoint widthPx: widthPx stroke: stroke fillColor: fillColor 
	"The receiver draw a line from start <startPoint> to end <endPoint> width in px <widthPx> stroke color <stroke> and fill color <fillColor>"

	^self drawLineFrom: startPoint to: endPoint id: UUID new asString widthPx: widthPx stroke: stroke fillColor: fillColor