figures
drawEllipseAt: aPoint id: id rx: rx ry: ry fillColor: fillColor stroke: stroke strokeWidth: strokeWidth

	^self draw: (JASVGITagEllipse
						newAt: aPoint 
						id: id 
						rx: rx 
						ry: ry 
						fillColor: fillColor 
						stroke: stroke 
						strokeWidth: strokeWidth)