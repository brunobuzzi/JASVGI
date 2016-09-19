pie
drawPieAngles: anglesDictionary at: aPoint radius: radius
	"The receiver draw a Pie Graph with values in <anglesDictionary> where the key is the label and the value is the angle.
	The total sum must be 360 and begin in 0 radian and anti clockwork.
	The radius of the pie is defined by <radius>."
	| group angleSum startPoint labelsX labelsY random palette |

	random := Random new.
	palette := self colorPalette asOrderedCollection.
	startPoint := radius @ 0.
	group := JASVGITagGroup newNamed: 'pie'.
	group transform: 'translate(', (radius + 20) printString, ',', (radius + 20) printString,')'.
	svgGroups at: 'pie' put: group.
	angleSum := 0.
	labelsX := radius + aPoint x + 40.
	labelsY := aPoint y - radius.

	anglesDictionary keysAndValuesDo: [:label :eachAngle | | line pointsString calculatedPoint color percentage rect text |
		calculatedPoint := self getArcPointFor: eachAngle angleSum: angleSum radius: radius.
		pointsString := PrintStream on: String new.
		pointsString nextPutAll: 'M0,0 '. "center of the circle"
		pointsString nextPutAll: (startPoint x printString, ',', startPoint y printString).
		pointsString nextPutAll: ' A', radius printString, ',',radius printString.
		pointsString nextPutAll: ' 1'.
		(eachAngle > 180) ifTrue: [pointsString nextPutAll: ' 1 0 '] ifFalse: [pointsString nextPutAll: ' 0 0 '].
		pointsString nextPutAll: (calculatedPoint x printString, ',', calculatedPoint y printString, ' Z').
		color := palette randomPeek: random.
		palette remove: color.
		line := self drawLine: pointsString contents id: UUID new asString widthPx: '1px' stroke: 'black' fillColor: color.
		self addFigure: line toGroup: 'pie'.
		angleSum := angleSum + eachAngle.
		startPoint := calculatedPoint.
		rect := self drawRoundRectangleAt: labelsX - 15 @ labelsY height: 15 width: 15 fillColor: color stroke: 'black'.
		self addFigure: rect toGroup: 'pie'.
		percentage := ((eachAngle * 100) / 360) printShowingDecimalPlaces: 2.
		text := self drawText: (label, ' - ', percentage,'%') at: labelsX @ labelsY + 10.
		self addFigure: text toGroup: 'pie'.
		labelsY := labelsY + 20.
	].