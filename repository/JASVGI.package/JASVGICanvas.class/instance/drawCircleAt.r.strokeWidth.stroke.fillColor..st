circles
drawCircleAt: aPoint r: radius strokeWidth: strokeWidth stroke: stroke fillColor: fillColor 
	"The receiver draw a circle with:
	radius: <radius> 
	at: <aPoint> 
	fill color: <fillColor>
	stroke color: <stroke>
	stroke width: <strokeWidth>"

	^self drawCircleAt: aPoint id: UUID new asString r: radius strokeWidth: strokeWidth stroke: stroke fillColor: fillColor