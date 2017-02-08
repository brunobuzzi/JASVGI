days
drawCalendar: calendarDays at: aPoint from: startDate to: endDate width: width color: color dayHasContent: aBoolean
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	| numberOfDays group groupName currentPosition weekCounter maxValue monthName sortedWorkingDays dayColor |

	weekCounter := 0.
	sortedWorkingDays := calendarDays asSortedCollection.
	maxValue :=  sortedWorkingDays ifEmpty: [0.1] ifNotEmpty: [:collection | collection last].
	groupName := 'verticalWorkingDay'.
	group := JASVGITagGroup newNamed: groupName.
	group transform: 'translate(', aPoint x printString, ',', aPoint y printString, ')'.

	numberOfDays := endDate asDays - startDate asDays.
	currentPosition := aPoint.

	0 to: (numberOfDays - 1) do: [:dayIndex | | value rectDay opacity currentDate |
		currentDate := startDate addDays: dayIndex.
		(currentDate monthName = monthName) 
		ifFalse: [monthName := currentDate monthName. 
					"draw the name of the months"
					currentPosition := (currentPosition x + width + 10) @ currentPosition y.
					self drawText: (monthName first: 3) at: ((currentPosition x + 10) @ (aPoint y - 10)).].
		weekCounter := weekCounter + 1.
		dayColor := (calendarDays includesKey: currentDate dayOfYear) ifTrue: ['brown'] ifFalse: ['green'].
		rectDay := (currentDate day = 1) 
						ifFalse: [self drawRectangleAt: currentPosition width: width height: width stroke: color fillColor: dayColor] 
						ifTrue: [self drawRoundRectangleAt: currentPosition width: width height: width rx: 5 ry: 5 strokeWidth: '1px' stroke: 'red' fillColor: dayColor].
		rectDay add: (JASVGIAttribute parent: rectDay name: 'opacity' value: opacity).
		self addFigure: rectDay toGroup: groupName.
		(aBoolean and: [value ~= 0]) 
		ifTrue: [self drawText: currentDate dayOfMonth printString at: ((currentPosition x + 5) @ (currentPosition y + 12)) textSizePx: '10px' color: 'white']. 
		"draw the named of the days"
		((currentDate month = 1) and: [weekCounter odd])  "is the first column ?"
		ifTrue: [self drawText: (currentDate dayOfWeekName first: 3) at: (aPoint x @ (currentPosition y + 12))]. 
		(weekCounter = 7)
		ifTrue: [weekCounter := 0.
			dayIndex odd ifTrue: [self drawText: currentDate day printString at: (currentPosition x @ (currentPosition y + width + 12))].
			currentPosition := (currentPosition x + width + 5) @ aPoint y] 
		ifFalse: [currentPosition := (currentPosition x) @ (currentPosition y + width + 5)].
	].