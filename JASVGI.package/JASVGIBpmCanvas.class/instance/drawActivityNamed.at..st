bpm figure
drawActivityNamed: aString at: aPoint
	| rect textPoint |

	rect := self drawRoundRectangleAt: aPoint 
						height: self defaultTaskHeight 
						width: self defaultTaskWidth 
						fillColor: self defaultTaskFillColor 
						stroke: self defaultTaskStroke.

	textPoint := (aPoint x + (self defaultTaskWidth // 3)) @ (aPoint y + (self defaultTaskHeight // 2)).

	self drawText: aString at: textPoint.

	namesAndTags at: aString put: rect "map the Activity name with the Activity id"