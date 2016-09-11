bpm figure
drawActivityNamed: aString at: aPoint extent: extent color: color stroke: stroke
	| rect textPoint |

	rect := self drawRoundRectangleAt: aPoint 
						height: extent y 
						width: extent x 
						fillColor: color
						stroke: stroke.

	textPoint := (aPoint x + 10) @ (aPoint y + (self defaultTaskHeight // 2) + 2).

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: textPoint) toGroup: self defaultNameForProcessGroup.

	^rect