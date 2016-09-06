other
drawActivityNamed: aString at: aPoint
	| rectId textPoint |

	rectId := self drawRoundRectangleAt: aPoint 
						height: self defaultTaskHeight 
						width: self defaultTaskWidth 
						fillColor: self defaultTaskFillColor 
						stroke: self defaultTaskStroke.

	textPoint := (aPoint x + (self defaultTaskWidth // 3)) @ (aPoint y + (self defaultTaskHeight // 2)).

	self drawText: aString at: textPoint.

	namesAndTags at: aString put: rectId