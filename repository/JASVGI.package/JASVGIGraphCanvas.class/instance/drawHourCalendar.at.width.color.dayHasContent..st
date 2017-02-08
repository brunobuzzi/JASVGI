days
drawHourCalendar: calendar at: aPoint width: width color: color dayHasContent: aBoolean
	"The receiver draw a vertical working day graph from <startDate> to <endDate> where <workingDays> dictionary key's is the day number and value is the color intensity.
	The width of each rectangle day is <width> and color is <color>"
	| group groupName currentPosition  hourColor |

	groupName := 'verticalWorkingDay'.
	group := JASVGITagGroup newNamed: groupName.
	group transform: 'translate(', aPoint x printString, ',', aPoint y printString, ')'.

	currentPosition := aPoint.

	0 to: 11 do: [:hourIndex | | value rectHour currentTime |
		currentTime := Time fromString: hourIndex printString ,':00'.
		hourColor := (calendar timeIntervalExistFrom: currentTime to: (currentTime addSeconds: (60*60))) ifTrue: ['brown'] ifFalse: ['green'].
		rectHour := self drawRoundRectangleAt: currentPosition width: width height: width rx: 5 ry: 5 strokeWidth: '1px' stroke: 'red' fillColor: hourColor.
		rectHour add: (JASVGIAttribute parent: rectHour name: 'opacity' value: '1').
		self addFigure: rectHour toGroup: groupName.
		(aBoolean and: [value ~= 0]) 
		ifTrue: [self drawText: currentTime printString at: ((currentPosition x + 5) @ (currentPosition y + 12)) textSizePx: '10px' color: 'white']. 
		"draw the named of the days"
		currentPosition := (currentPosition x + width + 15) @ currentPosition y
	].

	currentPosition := aPoint x @ (currentPosition y + 100).
	12 to: 23 do: [:hourIndex | | value rectHour currentTime |
		currentTime := Time fromString: hourIndex printString ,':00'.
		hourColor := (calendar timeIntervalExistFrom: currentTime to: (currentTime addSeconds: (60*60))) ifTrue: ['brown'] ifFalse: ['green'].
		rectHour := self drawRoundRectangleAt: currentPosition width: width height: width rx: 5 ry: 5 strokeWidth: '1px' stroke: 'red' fillColor: hourColor.
		rectHour add: (JASVGIAttribute parent: rectHour name: 'opacity' value: '1').
		self addFigure: rectHour toGroup: groupName.
		(aBoolean and: [value ~= 0]) 
		ifTrue: [self drawText: currentTime printString at: ((currentPosition x + 5) @ (currentPosition y + 12)) textSizePx: '10px' color: 'white']. 
		"draw the named of the days"
		currentPosition := (currentPosition x + width + 15) @ currentPosition y
	].