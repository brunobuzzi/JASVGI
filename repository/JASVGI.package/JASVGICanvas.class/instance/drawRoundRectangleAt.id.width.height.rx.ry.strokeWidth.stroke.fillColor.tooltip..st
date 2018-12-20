rectangles
drawRoundRectangleAt: aPoint id: id width: width height: height rx: rx ry: ry strokeWidth: widthPx stroke: stroke fillColor: fillColor tooltip: tooltip
	"The receiver draw a round rectangle a <aPoint> with id <id> height <height> width <width> fill color <fillColor> and stroke color <stroke>"
	| rectangle |

	rectangle := JASVGITagRectangle newRoundAt: aPoint id: id width: width height: height rx: rx ry: ry strokeWidth: widthPx stroke: stroke fillColor: fillColor.
	rectangle tooltip: tooltip.

	^self draw: rectangle