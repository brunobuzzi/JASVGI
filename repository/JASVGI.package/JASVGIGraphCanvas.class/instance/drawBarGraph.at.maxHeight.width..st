other
drawBarGraph: aDictionary at: aPoint maxHeight: maxHeight width: width 
	| lateralIndex x y maxValue axis yShift |

	lateralIndex := 1.
	y := aPoint y.
	x := aPoint x + 25.
	maxValue := aDictionary asSortedCollection last.
	"draw graph axis Y only"
	self addMarker: (JASVGITagMarker newArrowAt: 10@5 id: 'arrow' width: 10 height:10).
	axis := self drawLineFrom: aPoint to: (aPoint x @ (aPoint y -  maxHeight - 20)).
	axis setMarkerEnd: 'arrow'. 
	yShift := maxHeight // 5.
	1 to: 5 do: [:index | | axisRange |
		axisRange := y - (yShift * index).
		self drawLineFrom: ((aPoint x - 5) @ axisRange) to: ((aPoint x + 5) @ axisRange).
		self drawText: ((maxValue * index // 5) - 5) printString at: ((aPoint x - 10) @ (axisRange - 3))]. 

	"draw rectangle bars"
	aDictionary keysAndValuesDo: [:key :value | | text graph graphHeight |
		text := self drawText: key at: x @ y textSizePx: '10px'.
		graphHeight := value * maxHeight //  maxValue.
		graph := self drawRectangleAt: (x @ (y - 10 - graphHeight)) height: graphHeight width: width fillColor: self colorPalette randomPeek stroke: 'black'.
		lateralIndex := lateralIndex + 1.
		x := x + width + 10.
	].