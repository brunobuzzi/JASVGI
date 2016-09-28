lines
drawLineM: points id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"The receiver draw a line (svg type M) using points in collection <points> with id <id> line width in px <widthPx> stroke color <stroke> and fill color <fillColor>"

	^self draw: (JASVGITagPath newLineM: points id: id widthPx: widthPx stroke: stroke fillColor: fillColor)