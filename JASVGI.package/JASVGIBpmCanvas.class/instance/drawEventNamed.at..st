bpm figure
drawEventNamed: aString at: aPoint
	| event textPoint |

	event := self drawCircleAt: aPoint r: 20 fillColor: self defaultEventFillColor stroke: self defultEventStroke strokeWidth: '2'.
	event id: aString.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	namesAndTags at: aString put: event. "map the Activity name with the Activity id"

	self addFigure: event toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: event position) toGroup: self defaultNameForProcessGroup.

	^event