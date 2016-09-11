bpm figure
drawLaneNamed: aString at: aPoint width: width height: height color: color stroke: stroke
	| rect |

	rect := self drawRectangleAt: aPoint 
						height: height 
						width: width 
						fillColor: color
						stroke: stroke.

	self drawText: aString at: aPoint - 10.

	namesAndTags at: aString put: rect "map the Activity name with the Activity id"