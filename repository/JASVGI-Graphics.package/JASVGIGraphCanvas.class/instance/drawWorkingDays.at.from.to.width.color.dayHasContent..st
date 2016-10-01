days
drawWorkingDays: workingDays at: aPoint from: startDate to: endDate width: width color: color dayHasContent: aBoolean
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	| numberOfDays group groupName currentPosition weekCounter maxValue monthName scaleRect scaleText scaleOpacity sortedWorkingDays |

	weekCounter := 0.
	sortedWorkingDays := workingDays asSortedCollection.
	maxValue :=  sortedWorkingDays last.
	groupName := 'verticalWorkingDay'.
	group := JASVGITagGroup newNamed: groupName.
	group transform: 'translate(', aPoint x printString, ',', aPoint y printString, ')'.

	numberOfDays := endDate asDays - startDate asDays.
	currentPosition := aPoint.

	0 to: (numberOfDays - 1) do: [:dayIndex | | value rectDay opacity |
		((startDate addDays: dayIndex) monthName = monthName) 
		ifFalse: [monthName := (startDate addDays: dayIndex) monthName. 
					"draw the name of the months"
					self drawText: (monthName first: 3) at: (currentPosition x @ (aPoint y - 10))].
		weekCounter := weekCounter + 1.
		value := workingDays at: dayIndex ifAbsent: [0].
		opacity := ((value = maxValue) ifFalse: [(value / maxValue) max: 0.05] ifTrue: [1]) asFloat.
		rectDay := ((startDate addDays: dayIndex) day = 1) 
						ifFalse: [self drawRectangleAt: currentPosition width: width height: width stroke: color fillColor: color] 
						ifTrue: [self drawRoundRectangleAt: currentPosition width: width height: width rx: 5 ry: 5 strokeWidth: '1px' stroke: 'darkgreen' fillColor: color].
		rectDay add: (JASVGIAttribute parent: rectDay name: 'opacity' value: opacity).
		self addFigure: rectDay toGroup: groupName.
		(aBoolean and: [value ~= 0]) 
		ifTrue: [self drawText: value printString at: ((currentPosition x + 5) @ (currentPosition y + 12)) color: 'darkgreen']. 
		"draw the named of the days"
		((aPoint x = currentPosition x) and: [weekCounter odd])  "is the first column ?"
		ifTrue: [self drawText: ((startDate addDays: dayIndex) dayOfWeekName first: 3) at: ((aPoint x - 25) @ (currentPosition y + 7))]. 
		(weekCounter = 7)
		ifTrue: [weekCounter := 0.
			dayIndex odd ifTrue: [self drawText: (startDate addDays: dayIndex) day printString at: (currentPosition x @ (currentPosition y + width + 12))].
			currentPosition := (currentPosition x + width + 5) @ aPoint y] 
		ifFalse: [currentPosition := (currentPosition x) @ (currentPosition y + width + 5)].
	].
		currentPosition := aPoint x @ (aPoint y + (7 * width) + 50). 
		scaleRect := self drawRoundRectangleAt: currentPosition width: width height: width stroke: 'darkgreen' fillColor: 'darkgreen'.
		scaleOpacity := ((sortedWorkingDays first / maxValue) max: 0.05) asFloat.
		scaleRect add: (JASVGIAttribute parent: scaleRect name: 'opacity' value: scaleOpacity).
		scaleText := self drawText: sortedWorkingDays first printString at: ((currentPosition x + 5) @ (currentPosition y + 12)) color: 'green'.
		self addFigure: scaleRect toGroup: groupName.
		self addFigure: scaleText toGroup: groupName.

		currentPosition := (aPoint x + width + 5) @ (aPoint y + (7 * width) + 50). 
		scaleRect := self drawRoundRectangleAt: currentPosition width: width height: width stroke: 'darkgreen' fillColor: 'darkgreen'.
		scaleRect add: (JASVGIAttribute parent: scaleRect name: 'opacity' value: 1).
		scaleText := self drawText: maxValue printString at: ((currentPosition x + 5) @ (currentPosition y + 12)) color: 'green'.
		self addFigure: scaleRect toGroup: groupName.
		self addFigure: scaleText toGroup: groupName.