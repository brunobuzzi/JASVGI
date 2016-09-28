rectangles
drawRoundRectangleAt: aPoint height: height width: width fillColor: fillColor stroke: stroke
	"The receiver draw a round rectangle a <aPoint> with height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self drawRoundRectangleAt: aPoint id: UUID new asString width: width height: height stroke: stroke fillColor: fillColor