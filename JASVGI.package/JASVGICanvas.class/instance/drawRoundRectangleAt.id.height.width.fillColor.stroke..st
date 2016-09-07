figures
drawRoundRectangleAt: aPoint id: id height: height width: width fillColor: fillColor stroke: stroke

	^self draw: (JASVGITagRectangle 
						newRoundAt: aPoint 
						id: id height: height 
						width: width 
						fillColor: fillColor 
						stroke: stroke)