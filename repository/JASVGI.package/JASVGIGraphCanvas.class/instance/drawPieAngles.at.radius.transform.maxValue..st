pie
drawPieAngles: anglesDictionary at: aPoint radius: radius transform: transform maxValue: maxValue
	"The receiver draw a Pie Graph with values in <anglesDictionary> where the key is the label and the value is the angle.
	The total sum must be 360 and begin in 0 radian and anti clockwork.
	The radius of the pie is defined by <radius>."
	| group angleSum startPoint labelsX labelsY random palette groupName |

	random := Random new.
	palette := self colorPalette asOrderedCollection.
	startPoint := radius @ 0.
	groupName := UUID new asString.
	group := JASVGITagGroup newNamed: groupName id: UUID new asString.
	group transform: transform.
	svgGroups at: groupName put: group.
	angleSum := 0.
	labelsX := radius + aPoint x + 40.
	labelsY := aPoint y - radius.

	anglesDictionary keysAndValuesDo: [:label :eachAngle | | actualValue line pointsString calculatedPoint color percentage rect text yShift graphText |
		calculatedPoint := self getArcPointFor: eachAngle angleSum: angleSum radius: radius.
		pointsString := PrintStream on: String new.
		pointsString nextPutAll: 'M0,0 '. "center of the circle"
		pointsString nextPutAll: (startPoint x printString, ',', startPoint y printString).
		pointsString nextPutAll: ' A', radius printString, ',',radius printString.
		pointsString nextPutAll: ' 1'.
		(eachAngle > 180) ifTrue: [pointsString nextPutAll: ' 1 0 '] ifFalse: [pointsString nextPutAll: ' 0 0 '].
		yShift := (eachAngle = 360) "360" ifTrue: ['0.5'] ifFalse: [calculatedPoint y printString].
		pointsString nextPutAll: (calculatedPoint x printString, ',', yShift, ' Z').
		color := palette randomPeek: random.
		palette remove: color.
		palette isEmpty ifTrue: [palette := self colorPalette asOrderedCollection].
		line := self drawLine: pointsString contents id: UUID new asString widthPx: '1px' stroke: 'black' fillColor: color.
		self addFigure: line toGroup: groupName.
		angleSum := angleSum + eachAngle.
		startPoint := calculatedPoint.
		rect := self drawRoundRectangleAt: labelsX - 15 @ labelsY height: 15 width: 15 fillColor: color stroke: 'black'.
		self addFigure: rect toGroup: groupName.
		percentage := (eachAngle * 100) / 360.
		actualValue := ((maxValue * percentage) / 100) printShowingDecimalPlaces: 2.
		percentage := percentage printShowingDecimalPlaces: 2.
		graphText := (maxValue = 100) ifTrue: [label, ' - ', percentage,'%'] ifFalse: [label, ' - ', percentage,'% - ', actualValue].
		text := self drawText: graphText at: labelsX @ labelsY + 10.
		self addFigure: text toGroup: groupName.
		labelsY := labelsY + 20.
	].