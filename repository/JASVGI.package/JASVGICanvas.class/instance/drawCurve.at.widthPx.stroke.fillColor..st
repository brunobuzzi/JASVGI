curves
drawCurve: points at: aPoint widthPx: widthPx stroke: stroke fillColor: fillColor 
	"The receiver draw a curve using the collection points <points> with width in px <widthPx> stroke color <stroke> and fill color <fillColor>"

	^self drawCurve: points at: aPoint id: UUID new asString widthPx: widthPx stroke: stroke fillColor: fillColor