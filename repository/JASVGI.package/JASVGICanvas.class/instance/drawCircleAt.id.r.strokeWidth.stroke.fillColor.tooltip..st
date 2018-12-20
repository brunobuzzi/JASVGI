circles
drawCircleAt: aPoint id: id r: radius strokeWidth: strokeWidth stroke: stroke fillColor: fillColor tooltip: tooltip
	"The receiver draw a circle with:
	radius: <radius> 
	at: <aPoint> 
	figure id: <id>
	fill color: <fillColor>
	stroke color: <stroke>
	stroke width: <strokeWidth>"
	| circle |

	circle := JASVGITagCircle newAt: aPoint id: id r: radius fillColor: fillColor stroke: stroke strokeWidth: strokeWidth.
	circle tooltip: tooltip.

	^self draw: circle