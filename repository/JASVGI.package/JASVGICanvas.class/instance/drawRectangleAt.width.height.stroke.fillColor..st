rectangles
drawRectangleAt: aPoint width: width height: height stroke: stroke fillColor: fillColor
	"The receiver draw a rectangle a <aPoint> with height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self drawRectangleAt: aPoint id: UUID new asString width: width height: height stroke: stroke fillColor: fillColor