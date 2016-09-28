curves with circles
drawVerticalCurveWithCircles: points id: id strokeWidth: strokeWidth stroke: stroke fillColor: fillColor
	"The receiver draw curve where at each <points> x value it draw a circle with radius <r> stroke <stroke> fill color <fillColor> and stroke witdth <strokeWidth>.
	Then from each cirlcle draw a vertical line to X axis "

	^self drawVerticalCurveWithCircles: points r: 3 id: id strokeWidth: strokeWidth stroke: stroke fillColor: fillColor