figures
drawCircleAt: aPoint id: id r: radius fillColor: fillColor stroke: stroke strokeWidth: strokeWidth

	^self draw: (JASVGITagCircle 
						newAt: aPoint 
						id: id 
						r: radius
						fillColor: fillColor 
						stroke: stroke 
						strokeWidth: strokeWidth)