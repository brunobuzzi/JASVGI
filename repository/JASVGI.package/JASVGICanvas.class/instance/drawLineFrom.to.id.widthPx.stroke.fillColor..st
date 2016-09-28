lines
drawLineFrom: startPoint to: endPoint id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"The receiver draw a line from start <startPoint> to end <endPoint> with id <id> width in px <widthPx> stroke color <stroke> and fill color <fillColor>"

	^self draw: (JASVGITagLine newLineFrom: startPoint to: endPoint id: id widthPx: widthPx stroke: stroke fillColor: fillColor)