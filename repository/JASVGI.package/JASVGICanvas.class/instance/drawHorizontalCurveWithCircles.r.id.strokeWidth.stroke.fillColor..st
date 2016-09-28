curves with circles
drawHorizontalCurveWithCircles: points r: r id: id strokeWidth: strokeWidth stroke: stroke fillColor: fillColor
	"The receiver draw curve where at each <points> x value it draw a circle with radius <r> stroke <stroke> fill color <fillColor> and stroke witdth <strokeWidth>.
	Then from each cirlcle draw a vertical line to Y axis "
	|  translatedPoints transformString lastPoint axisX axisY marker maxYvalue axisText yShift |

	maxYvalue := (points asSortedCollection: [:a :b | a y >= b y]) first y + 30.

	transformString := 'translate(20,20)'.
	yShift := 0.
	translatedPoints := points collect: [:each | each y @ each x].

	marker := self addMarker: (self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).
	marker transform: transformString.

	translatedPoints do: [:each | | point line textX textY |
		point := self drawCircleAt: each r: r strokeWidth: strokeWidth stroke: stroke fillColor: fillColor.
		line := self drawLineFrom: (0 @ each y) to: each.
		textX := self drawText: each y printString at: (-20 @ each y).
		textY := self drawText: each x printString at: ((each x + 10) @ each y + 5).
		point transform: transformString.
		line transform: transformString.
		textY transform: transformString.
		textX transform: transformString.
	].
	lastPoint := translatedPoints last.

	axisX := self drawLineFrom: (0 @ 0) to: (maxYvalue + 20) @ 0.
	axisX setMarkerEnd: 'arrow'.
	axisX transform: transformString.
	axisText := self drawText: (maxYvalue - 30) printString at: ((maxYvalue + 20) @ -5).
	axisText transform: transformString.

	axisY := self drawLineFrom: (0 @ 0) to: (0 @ (lastPoint y + 20)).
	axisY setMarkerEnd: 'arrow'.
	axisY transform: transformString.
	axisText := self drawText: (lastPoint y) printString at: (5 @ (lastPoint y + 20)).
	axisText transform: transformString.