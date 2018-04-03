rectangles
drawDecorationRectangleAt: aPoint id: id width: width height: height stroke: stroke fillColor: fillColor
	"The receiver draw a rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self drawDecorationRectangleAt: aPoint id: id width: width height: height stroke: stroke strokeWidth: '1px' fillColor: fillColor