other
drawPieAngles: anglesDictionary at: aPoint radius: radius
	| group angleSum startPoint labelsX labelsY |

	startPoint := radius @ 0.
	group := JASVGITagGroup newNamed: 'pie'.
	group transform: 'translate(120,120)'.
	svgGroups at: 'pie' put: group.
	angleSum := 0.
	labelsX := radius + 120 + 40.
	labelsY := 120 - radius.

	anglesDictionary keysAndValuesDo: [:label :eachAngle | | line pointsString calculatedPoint color percentage |
		calculatedPoint := self getArcPointFor: eachAngle angleSum: angleSum radius: radius.
		pointsString := PrintStream on: String new.
		pointsString nextPutAll: 'M0,0 '. "center of the circle"
		pointsString nextPutAll: (startPoint x printString, ',', startPoint y printString).
		pointsString nextPutAll: ' A', radius printString, ',',radius printString.
		pointsString nextPutAll: ' 1 0 0 '.
		pointsString nextPutAll: (calculatedPoint x printString, ',', calculatedPoint y printString, ' Z').
		color := self colorPalette randomPeek.
		line := self drawLine: pointsString contents id: UUID new asString widthPx: '1px' stroke: 'black' fillColor: color.
		self addFigure: line toGroup: 'pie'.
		angleSum := angleSum + eachAngle.
		startPoint := calculatedPoint.
		self drawRoundRectangleAt: labelsX - 15 @ labelsY height: 15 width: 15 fillColor: color stroke: 'black'.
		percentage := ((eachAngle * 100) / 360) printShowingDecimalPlaces: 2.
		self drawText: (label, ' - ', percentage,'%') at: labelsX @ labelsY + 10.
		labelsY := labelsY + 20.
	].