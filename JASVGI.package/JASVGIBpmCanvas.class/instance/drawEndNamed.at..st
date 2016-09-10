bpm figure
drawEndNamed: aString at: aPoint
	| start textPoint |

	start := self drawCircleAt: aPoint r: 20 fillColor: self defaultEndEventFillColor stroke: self defultEndEventStroke.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	self drawText: aString at: start position.

	namesAndTags at: aString put: start "map the Activity name with the Activity id"