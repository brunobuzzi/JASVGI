circles
drawCircleAt: aPoint r: radius stroke: stroke fillColor: fillColor
	"The receiver draw a circle with:
	radius: <radius> 
	at: <aPoint> 
	fill color: <fillColor>
	stroke color: <stroke>"

	^self drawCircleAt: aPoint r: radius strokeWidth: '1' stroke: stroke fillColor: fillColor