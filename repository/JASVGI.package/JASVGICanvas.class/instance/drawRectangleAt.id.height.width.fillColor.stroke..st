rectangles
drawRectangleAt: aPoint id: id height: height width: width fillColor: fillColor stroke: stroke

	^self draw: (JASVGITagRectangle 
						newAt: aPoint 
						id: id 
						height: height 
						width: width 
						fillColor: fillColor 
						stroke: stroke)