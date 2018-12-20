circles
drawEllipseAt: aPoint id: id rx: rx ry: ry strokeWidth: strokeWidth stroke: stroke fillColor: fillColor tooltip: tooltip
	"The receiver draw a ellipse with:
	radius x: <rx> 
	radius y: <ry> 
	at: <aPoint> 
	figure id: <id>
	fill color: <fillColor>
	stroke color: <stroke>
	stroke width: <strokeWidth>"
	| circle |

	circle := JASVGITagEllipse newAt: aPoint id: id rx: rx ry: ry fillColor: fillColor stroke: stroke strokeWidth: strokeWidth.
	circle tooltip: tooltip.
	^self draw: circle