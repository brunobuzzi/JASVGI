rectangles
drawRoundRectangleAt: aPoint width: width height: height stroke: stroke fillColor: fillColor tooltip: tooltip
	"The receiver draw a round rectangle a <aPoint> with height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self drawRoundRectangleAt: aPoint id: UUID new asString width: width height: height rx: 5 ry: 5 strokeWidth: '1px' stroke: stroke fillColor: fillColor tooltip: tooltip