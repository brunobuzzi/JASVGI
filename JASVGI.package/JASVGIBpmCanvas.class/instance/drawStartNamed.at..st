bpm figure
drawStartNamed: aString at: aPoint
	| start textPoint |

	start := self drawCircleAt: aPoint r: 20 fillColor: self defaultStartEventFillColor stroke: self defultStartEventStroke.
	start id: aString.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	self drawText: aString at: start position.

	namesAndTags at: aString put: start "map the Activity name with the Activity id"