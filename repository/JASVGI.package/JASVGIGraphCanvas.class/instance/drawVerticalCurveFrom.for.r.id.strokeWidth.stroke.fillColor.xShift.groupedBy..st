days
drawVerticalCurveFrom: startDate for: days r: r id: id strokeWidth: strokeWidth stroke: stroke fillColor: fillColor xShift: xShift groupedBy:  anInteger
	""
	|  translatedPoints sortedDays transformString lastPoint axisX axisY marker maxYvalue axisText previousPoint axisXlabel switch dayShift maxDays |

	sortedDays := days asSortedCollection: [:a :b | a y >= b y].
	maxYvalue := sortedDays first y + 30.
	maxDays := sortedDays last x * anInteger.
	transformString := 'translate(20,', maxYvalue printString, ')'.
	translatedPoints := days collect: [:each | (each x * xShift) @ each y negated].

	marker := self addMarker: (self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).
	marker transform: transformString.

	previousPoint := 0@0.
	switch := true.
	dayShift := translatedPoints first x.
	translatedPoints do: [:each | | point line textY textX currentDate |
		dayShift := (dayShift < (each x // xShift)) ifTrue: [dayShift] ifFalse: [dayShift + anInteger].
		currentDate := startDate addDays: dayShift.
		axisXlabel := currentDate day printString, (currentDate monthName first: 3), (currentDate year printString last: 2) .
		point := self drawCircleAt: each r: r  strokeWidth: strokeWidth stroke: stroke fillColor: fillColor.
		textX := self drawText: axisXlabel at: ((each x - 5) @ (switch ifTrue: [10] ifFalse: [20])).
		switch := switch not.
		textY := self drawText: each y abs printString at: ((each x - 5) @ (each y - 10)).
		line := self drawLineFrom: previousPoint to: (point x @ point y).
		previousPoint := (each x @ each y).
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