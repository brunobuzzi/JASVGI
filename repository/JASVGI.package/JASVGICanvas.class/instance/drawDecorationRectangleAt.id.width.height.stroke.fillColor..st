rectangles
drawDecorationRectangleAt: aPoint id: id width: width height: height stroke: stroke fillColor: fillColor
	"The receiver draw a rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"

	^self draw: (JASVGIDecorationRectangle 
						newAt: aPoint 
						id: id 
						width: width 
						height: height 
						stroke: stroke
						fillColor: fillColor)