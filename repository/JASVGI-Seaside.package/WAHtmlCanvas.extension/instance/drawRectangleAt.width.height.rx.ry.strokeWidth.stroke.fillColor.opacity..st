*JASVGI-Seaside
drawRectangleAt: aPoint width: width height: height rx: rx ry: ry strokeWidth: widthPx stroke: stroke fillColor: fillColor opacity: opacity
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self drawRectangleAt: aPoint id: UUID new asString width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor opacity: opacity