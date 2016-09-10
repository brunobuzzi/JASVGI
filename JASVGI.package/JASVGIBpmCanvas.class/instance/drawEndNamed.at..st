bpm figure
drawEndNamed: aString at: aPoint
	| end textPoint |

	end := self drawCircleAt: aPoint r: 20 fillColor: self defaultEndEventFillColor stroke: self defultEndEventStroke strokeWidth: '3'.
	end id: aString.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	self drawText: aString at: end position.

	namesAndTags at: aString put: end "map the Activity name with the Activity id"