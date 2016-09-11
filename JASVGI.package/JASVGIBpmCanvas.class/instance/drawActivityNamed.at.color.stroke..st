bpm figure
drawActivityNamed: aString at: aPoint color: color stroke: stroke
	| rect textPoint |

	rect := self drawRoundRectangleAt: aPoint 
						height: self defaultTaskHeight 
						width: self defaultTaskWidth 
						fillColor: color
						stroke: stroke.

	textPoint := (aPoint x + 10) @ (aPoint y + (self defaultTaskHeight // 2) + 2).

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: textPoint) toGroup: self defaultNameForProcessGroup.

	^rect