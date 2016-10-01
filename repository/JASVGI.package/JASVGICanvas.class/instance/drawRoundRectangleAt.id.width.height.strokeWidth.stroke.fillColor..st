rectangles
drawRoundRectangleAt: aPoint id: id width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self drawRoundRectangleAt: aPoint id: id width: width height: height rx: 5 ry: 5 strokeWidth: widthPx stroke: stroke fillColor: fillColor