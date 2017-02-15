*JASVGI-Seaside
drawRectangleAt: aPoint id: id width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self drawRectangleAt: aPoint id: id width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor opacity: '1'