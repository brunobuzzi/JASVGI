bpm figure
drawEndNamed: aString at: aPoint
	| end textPoint |

	end := self drawCircleAt: aPoint r: 20 fillColor: self defaultEndEventFillColor stroke: self defultEndEventStroke strokeWidth: '3'.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	namesAndTags at: aString put: end. "map the Activity name with the Activity id"

	self addFigure: end toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: end position) toGroup: self defaultNameForProcessGroup.

	^end