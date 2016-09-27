bar
drawJoin: joinDictionary horizontalBarGraph: aDictionary at: aPoint maxWidth: maxWidth width: width transform: transform
	"The receiver draw a Horizontally oriented Bar Graph with values in <aDictionary> where the key is the label and the value is value.
	The max horizontal bar is defined by <maxWidth> where the max value in <aDictionary> will be rendered as maxWidth in the graph.
	The witdh of each bar is defined by <width>"
	| lateralIndex x y maxValue axis xShift group axisRange groupName colorPalette |

	colorPalette := self colorPalette asOrderedCollection.
	groupName := 'horizontalBar'.
	group := JASVGITagGroup newNamed: groupName.
	group transform: transform.
	svgGroups at: groupName put: group.
	lateralIndex := 1.
	y := aPoint y.
	x := aPoint x.
	maxValue := 0.
	joinDictionary do: [:eachDict | | maxElem |
		maxElem := eachDict asSortedCollection asSortedCollection last.
		(maxElem > maxValue) ifTrue: [maxValue := maxElem]].
	"draw graph axis Y only"
	self addMarker: (self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).
	self addMarker: (self markerClass newCircleAt: 5@5 id: 'circle' width: 10 height: 10).

	axis := self drawLineFrom: x@y to: (x +  maxWidth + 20) @ y.
	self addFigure: axis toGroup: groupName.
	axis setMarkerStart: 'circle'. 
	axis setMarkerEnd: 'arrow'. 
	xShift := maxWidth // 5.
	axisRange := x + xShift.

	1 to: 5 do: [:index | | line text |
		"draw scale Y bar"
		line := self drawLineFrom: (axisRange @ (aPoint y - 5)) to: (axisRange @ (aPoint y + 5)).
		text := self drawText: (maxValue * index // 5) printString at: ((axisRange - 3) @ (aPoint x - 10)).
		self addFigure: line toGroup: groupName.
		self addFigure: text toGroup: groupName.
		axisRange := axisRange + xShift]. 

	"draw rectangle bars"
	y := y + 25.
	aDictionary keysAndValuesDo: [:key :value | | text text2 graphHeight color opacity |
		text := self drawText: key at: (x - 25) @ y textSizePx: '10px'.
		text2 := self drawText: value printString at: ((x - 25) @ (y + 10)) textSizePx: '10px'.
		graphHeight := value * maxWidth //  maxValue.
		opacity := 1.
		color := colorPalette randomPeek.
		colorPalette remove: color.
		colorPalette isEmpty ifTrue: [colorPalette := self colorPalette asOrderedCollection].
		(joinDictionary at: key) keysAndValuesDo: [:splitKey :splitValue | | splitText splitText2 innerWidth splitGraph |
			innerWidth := splitValue * maxWidth //  maxValue.
			splitGraph := self drawRectangleAt: (x @ y) height: width width: innerWidth fillColor: color stroke: 'black'.
			splitGraph add: (JASVGIAttribute parent: splitGraph name: 'fill-opacity' value: opacity printString).
			opacity := opacity - 0.2.
			splitText := self drawText: splitKey at: ((x + innerWidth + 5) @ (y + 5)) textSizePx: '6px'.
			splitText2 := self drawText: splitValue printString at: ((x + innerWidth + 5)@ (y+12)) textSizePx: '6px'.
			self addFigure: splitGraph toGroup: groupName.
			self addFigure: splitText toGroup: groupName.
			self addFigure: splitText2 toGroup: groupName.
			y := y + width + 5.
		]. 
		"self addFigure: graph toGroup: groupName."
		self addFigure: text toGroup: groupName.
		self addFigure: text2 toGroup: groupName.
		lateralIndex := lateralIndex + 1.
		y := y + width.
	].