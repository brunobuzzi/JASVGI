days
drawVerticalCurveFor: days r: r id: id strokeWidth: strokeWidth stroke: stroke fillColor: fillColor
	""
	|  translatedPoints transformString lastPoint axisX axisY marker maxYvalue axisText |

	maxYvalue := (days asSortedCollection: [:a :b | a y >= b y]) first y + 30.
	transformString := 'translate(20,', maxYvalue printString, ')'.
	translatedPoints := days collect: [:each | each x @ each y negated].

	marker := self addMarker: (self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).
	marker transform: transformString.

	translatedPoints do: [:each | | point line textX textY |
		point := self drawCircleAt: each r: r  strokeWidth: strokeWidth stroke: stroke fillColor: fillColor.
		line := self drawLineFrom: (each x @ 0) to: each.
		textX := self drawText: each x abs printString at: ((each x - 5) @ 12).
		textY := self drawText: each y abs printString at: ((each x - 5) @ (each y - 10)).
		point transform: transformString.
		line transform: transformString.
		textY transform: transformString.
		textX transform: transformString.
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