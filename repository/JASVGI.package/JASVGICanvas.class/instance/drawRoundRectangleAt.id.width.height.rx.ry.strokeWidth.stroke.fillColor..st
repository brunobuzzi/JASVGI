rectangles
drawRoundRectangleAt: aPoint id: id width: width height: height rx: rx ry: ry strokeWidth: widthPx stroke: stroke fillColor: fillColor
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self draw: (JASVGITagRectangle 
						newRoundAt: aPoint 
						id: id 
						width: width 
						height: height 
						rx: rx
						ry: ry
						strokeWidth: widthPx
						stroke: stroke
						fillColor: fillColor)