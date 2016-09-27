circles
drawCircleAt: aPoint r: radius fillColor: fillColor stroke: stroke
	"The receiver draw a circle with:
	radius: <radius> 
	at: <aPoint> 
	fill color: <fillColor>
	stroke color: <stroke>"

	^self drawCircleAt: aPoint id: UUID new asString r: radius fillColor: fillColor stroke: stroke strokeWidth: '1'