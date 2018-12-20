circles
drawCircleAt: aPoint id: id r: radius strokeWidth: strokeWidth stroke: stroke fillColor: fillColor 
	"The receiver draw a circle with:
	radius: <radius> 
	at: <aPoint> 
	figure id: <id>
	fill color: <fillColor>
	stroke color: <stroke>
	stroke width: <strokeWidth>"

	^self drawCircleAt: aPoint id: id r: radius strokeWidth: strokeWidth stroke: stroke fillColor: fillColor tooltip: nil