bar
drawHorizontalBarGraph: aDictionary at: aPoint maxWidth: maxWidth width: width 
	| lateralIndex x y maxValue axis xShift group axisRange |

	group := JASVGITagGroup newNamed: 'horizontalBar'.
	group transform: 'translate(50,50)'.
	svgGroups at: 'horizontalBar' put: group.
	lateralIndex := 1.
	y := aPoint y.
	x := aPoint x.
	maxValue := aDictionary asSortedCollection last.
	"draw graph axis Y only"
	self addMarker: (JASVGITagMarker newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).
	self addMarker: (JASVGITagMarker newCircleAt: 5@5 id: 'circle' width: 10 height: 10).

	axis := self drawLineFrom: x@y to: (x +  maxWidth + 20) @ y.
	self addFigure: axis toGroup: 'horizontalBar'.
	axis setMarkerStart: 'circle'. 
	axis setMarkerEnd: 'arrow'. 
	xShift := maxWidth // 5.
	axisRange := x + xShift.

	1 to: 5 do: [:index | | line text |
		"draw scale Y bar"
		line := self drawLineFrom: (axisRange @ (aPoint y - 5)) to: (axisRange @ (aPoint y + 5)).
		text := self drawText: (maxValue * index // 5) printString at: ((axisRange - 3) @ (aPoint x - 10)).
		self addFigure: line toGroup: 'horizontalBar'.
		self addFigure: text toGroup: 'horizontalBar'.
		axisRange := axisRange + xShift]. 

	"draw rectangle bars"
	y := y + 15.
	aDictionary keysAndValuesDo: [:key :value | | text text2 graph graphHeight |
		text := self drawText: key at: (x - 25) @ y textSizePx: '10px'.
		text2 := self drawText: value printString at: ((x - 25) @ (y + 10)) textSizePx: '10px'.
		graphHeight := value * maxWidth //  maxValue.
		graph := self drawRectangleAt: (x @ y) height: width width: graphHeight fillColor: self colorPalette randomPeek stroke: 'black'.
		self addFigure: graph toGroup: 'horizontalBar'.
		self addFigure: text toGroup: 'horizontalBar'.
		self addFigure: text2 toGroup: 'horizontalBar'.
		lateralIndex := lateralIndex + 1.
		y := y + width + 10.
	].