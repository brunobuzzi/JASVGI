bar
drawJoin: joinDictionary verticalBarGraph: aDictionary at: aPoint maxHeight: maxHeight width: width transform: transform
	"The receiver draw a Vertically oriented Bar Graph with values in <aDictionary> where the key is the label and the value is value.
	The max vertical bar is defined by <maxHeight> where the max value in <aDictionary> will be rendered as maxHeight in the graph.
	The witdh of each bar is defined by <width>"
	| lateralIndex x y maxValue axis yShift group groupName colorPalette |

	groupName := UUID new asString.
	colorPalette := self colorPalette asOrderedCollection.
	group := JASVGITagGroup newNamed: groupName.
	group transform: transform.
	svgGroups at: groupName put: group.
	lateralIndex := 1.
	y := aPoint y.
	x := aPoint x + 20.
	maxValue := 0.
	joinDictionary do: [:eachDict | | maxElem |
		maxElem := eachDict asSortedCollection asSortedCollection last.
		(maxElem > maxValue) ifTrue: [maxValue := maxElem]].
	"draw graph axis Y only"
	self addMarker: (JASVGITagMarker newArrowAt: 10@5 id: 'arrow' width: 10 height: 10).
	self addMarker: (JASVGITagMarker newCircleAt: 5@5 id: 'circle' width: 10 height: 10).
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
	aDictionary keysAndValuesDo: [:key :value | | text text2 graphHeight splitY color opacity |
		text := self drawText: key at: (x @ (y + 25)) textSizePx: '10px'.
		text2 := self drawText: value printString at: (x @ (y + 35)) textSizePx: '10px'.
		graphHeight := value * maxHeight //  maxValue.
		color := colorPalette randomPeek.
		colorPalette remove: color.
		colorPalette isEmpty ifTrue: [colorPalette := self colorPalette asOrderedCollection].
		opacity := 0.5.
		splitY := y.
		(joinDictionary at: key) keysAndValuesDo: [:splitKey :splitValue | | splitText splitText2 innerHeight splitGraph |
			innerHeight := splitValue * maxHeight //  maxValue.
			splitGraph := self drawRectangleAt: (x @ (splitY - innerHeight)) height: innerHeight width: width fillColor: color stroke: 'black'.
			splitGraph add: (JASVGIAttribute parent: splitGraph name: 'fill-opacity' value: opacity printString).
			opacity := opacity + 0.2.
			splitText := self drawText: splitKey at: ((x-5) @ (splitY - innerHeight - 10)) textSizePx: '6px'.
			splitText2 := self drawText: splitValue printString at: ((x + (width//2)) @ (splitY + 8)) textSizePx: '6px'.
			self addFigure: splitGraph toGroup: groupName.
			self addFigure: splitText toGroup: groupName.
			self addFigure: splitText2 toGroup: groupName.
			x := x + width + 5. "separate join bars"
		]. 
		x := x + width.
	"	self addFigure: graph toGroup: groupName."
		self addFigure: text toGroup: groupName.
		self addFigure: text2 toGroup: groupName.
		lateralIndex := lateralIndex + 1.
	].