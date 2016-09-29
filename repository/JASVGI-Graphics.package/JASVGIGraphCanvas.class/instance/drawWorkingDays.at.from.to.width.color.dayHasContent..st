days
drawWorkingDays: workingDays at: aPoint from: startDate to: endDate width: width color: color dayHasContent: aBoolean
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	| numberOfDays group groupName currentPosition weekCounter maxValue monthName |

	weekCounter := 0.
	maxValue := workingDays asSortedCollection last.
	groupName := 'verticalWorkingDay'.
	group := JASVGITagGroup newNamed: groupName.
	group transform: 'translate(', aPoint x printString, ',', aPoint y printString, ')'.

	numberOfDays := endDate asDays - startDate asDays.
	currentPosition := aPoint.

	1 to: numberOfDays do: [:dayIndex | | value rectDay opacity |
		((startDate addDays: dayIndex) monthName = monthName) 
		ifFalse: [monthName := (startDate addDays: dayIndex) monthName. 
					"draw the name of the months"
					self drawText: (monthName first: 3) at: (currentPosition x @ (aPoint y - 10))].
		weekCounter := weekCounter + 1.
		value := workingDays at: dayIndex ifAbsent: [0].
		opacity := ((value = maxValue) ifFalse: [(value / maxValue) max: 0.05] ifTrue: [1]) asFloat.
		rectDay := self drawRectangleAt: currentPosition width: width height: width stroke: color fillColor: color.
		rectDay add: (JASVGIAttribute parent: rectDay name: 'opacity' value: opacity).
		self addFigure: rectDay toGroup: groupName.
		(aBoolean and: [value ~= 0]) 
		ifTrue: [self drawText: value printString at: ((currentPosition x + 5) @ (currentPosition y + 12))]. 
		"draw the named of the days"
		((aPoint x = currentPosition x) and: [weekCounter odd])  "is the first column ?"
		ifTrue: [self drawText: ((startDate addDays: dayIndex) dayOfWeekName first: 3) at: ((aPoint x - 25) @ (currentPosition y + 7))]. 
		(weekCounter = 7)
		ifTrue: [weekCounter := 0.
			dayIndex odd ifTrue: [self drawText: (startDate addDays: dayIndex) day printString at: (currentPosition x @ (currentPosition y + width + 12))].
			currentPosition := (currentPosition x + width + 5) @ aPoint y] 
		ifFalse: [currentPosition := (currentPosition x) @ (currentPosition y + width + 5)].
	].