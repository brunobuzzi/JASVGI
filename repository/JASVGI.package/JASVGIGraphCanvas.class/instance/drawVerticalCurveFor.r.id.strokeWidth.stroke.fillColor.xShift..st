days
drawVerticalCurveFor: days r: r id: id strokeWidth: strokeWidth stroke: stroke fillColor: fillColor xShift: xShift
	""
	|  translatedPoints transformString lastPoint axisX axisY marker maxYvalue axisText previousPoint |

	maxYvalue := (days asSortedCollection: [:a :b | a y >= b y]) first y + 30.
	transformString := 'translate(20,', maxYvalue printString, ')'.
	translatedPoints := days collect: [:each | (each x * xShift) @ each y negated].

	marker := self addMarker: (self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).
	marker transform: transformString.

	previousPoint := 0@0.
	translatedPoints do: [:each | | point line textX textY points |
		point := self drawCircleAt: each r: r  strokeWidth: strokeWidth stroke: stroke fillColor: fillColor.
		points := OrderedCollection with: previousPoint with: point.
		textX := self drawText: each x abs printString at: ((each x - 5) @ 12).
		textY := self drawText: each y abs printString at: ((each x - 5) @ (each y - 10)).
		line := self drawCurve: points at: previousPoint.
		previousPoint := point.
		point transform: transformString.
		textY transform: transformString.
		textX transform: transformString.
		line transform: transformString.
	].
	lastPoint := translatedPoints last.

	axisX := self drawLineFrom: (0 @ 0) to: (lastPoint x + 20) @ 0.
	axisX setMarkerEnd: 'arrow'.
	axisX transform: transformString.
	axisText := self drawText: lastPoint x abs printString at: ((lastPoint x + 20) @ -5).
	axisText transform: transformString.

	axisY := self drawLineFrom: (0 @ 0) to: (0 @ (maxYvalue negated + 10)).
	axisY setMarkerEnd: 'arrow'.
	axisY transform: transformString.
	axisText := self drawText: (maxYvalue abs - 30) printString at: (5 @ (maxYvalue negated + 20)).
	axisText transform: transformString.