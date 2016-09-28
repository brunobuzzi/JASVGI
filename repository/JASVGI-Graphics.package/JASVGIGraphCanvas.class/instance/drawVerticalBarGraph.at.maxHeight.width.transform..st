bar
drawVerticalBarGraph: aDictionary at: aPoint maxHeight: maxHeight width: width transform: transform
	"The receiver draw a Vertically oriented Bar Graph with values in <aDictionary> where the key is the label and the value is value.
	The max vertical bar is defined by <maxHeight> where the max value in <aDictionary> will be rendered as maxHeight in the graph.
	The witdh of each bar is defined by <width>"
	| lateralIndex x y maxValue axis yShift group groupName |

	groupName := UUID new asString.
	group := JASVGITagGroup newNamed: groupName.
	group transform: transform.
	svgGroups at: groupName put: group.
	lateralIndex := 1.
	y := aPoint y.
	x := aPoint x + 25.
	maxValue := aDictionary asSortedCollection last.
	"draw graph axis Y only"
	self addMarker: (self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).
	self addMarker: (self markerClass newCircleAt: 5@5 id: 'circle' width: 10 height: 10).
	axis := self drawLineFrom: aPoint to: (aPoint x @ (aPoint y -  maxHeight - 20)).
	self addFigure: axis toGroup: groupName.
	axis setMarkerStart: 'circle'. 
	axis setMarkerEnd: 'arrow'. 
	yShift := maxHeight // 5.
	1 to: 5 do: [:index | | axisRange line text |
		"draw scale Y bar"
		axisRange := y - (yShift * index) .
		line := self drawLineFrom: ((aPoint x - 5) @ axisRange) to: ((aPoint x + 5) @ axisRange).
		text := self drawText: (maxValue * index // 5) printString at: ((aPoint x - 10) @ (axisRange - 3)).
		self addFigure: line toGroup: groupName.
		self addFigure: text toGroup: groupName]. 

	"draw rectangle bars"
	aDictionary keysAndValuesDo: [:key :value | | text text2 graph graphHeight |
		text := self drawText: key at: (x @ (y + 15)) textSizePx: '10px'.
		text2 := self drawText: value printString at: (x @ (y + 30)) textSizePx: '10px'.
		graphHeight := value * maxHeight //  maxValue.
		graph := self drawRectangleAt: (x @ (y - graphHeight)) width: width height: graphHeight stroke: 'black' fillColor: self colorPalette randomPeek.
		self addFigure: graph toGroup: groupName.
		self addFigure: text toGroup: groupName.
		self addFigure: text2 toGroup: groupName.
		lateralIndex := lateralIndex + 1.
		x := x + width + 10.
	].