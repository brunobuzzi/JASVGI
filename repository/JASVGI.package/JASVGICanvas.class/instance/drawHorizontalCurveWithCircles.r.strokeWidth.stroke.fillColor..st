curves with circles
drawHorizontalCurveWithCircles: points r: r strokeWidth: strokeWidth stroke: stroke fillColor: fillColor
	"The receiver draw curve where at each <points> x value it draw a circle with radius <r> stroke <stroke> fill color <fillColor> and stroke witdth <strokeWidth>.
	Then from each cirlcle draw a vertical line to Y axis "

	^self drawHorizontalCurveWithCircles: points r: r id: UUID new asString strokeWidth: strokeWidth stroke: stroke fillColor: fillColor