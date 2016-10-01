rectangles
drawRoundRectangleAt: aPoint width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor 
	"The receiver draw a round rectangle a <aPoint> with height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self drawRoundRectangleAt: aPoint id: UUID new asString width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor