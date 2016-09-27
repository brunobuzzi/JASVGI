circles
drawCircleAt: aPoint id: id r: radius fillColor: fillColor stroke: stroke strokeWidth: strokeWidth
	"The receiver draw a circle with:
	radius: <radius> 
	at: <aPoint> 
	figure id: <id>
	fill color: <fillColor>
	stroke color: <stroke>
	stroke width: <strokeWidth>"

	^self draw: (JASVGITagCircle 
						newAt: aPoint 
						id: id 
						r: radius
						fillColor: fillColor 
						stroke: stroke 
						strokeWidth: strokeWidth)