other
newLineM: points id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"Draw a Moveto line"
	| attributes pointsString colorString |

	pointsString := PrintStream on: String new.
	colorString := fillColor ifNil: ['none'] ifNotNil: [fillColor].

	points do: [:eachPoint | pointsString nextPutAll: ('M',eachPoint x printString, ',', eachPoint y printString), ' '].

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'd' value: pointsString contents);
		add: (JASVGIAttribute parent: self name: 'stroke-width' value: widthPx);
		add: (JASVGIAttribute parent: self name: 'stroke' value: stroke);
		add: (JASVGIAttribute parent: self name: 'fill' value: colorString);
		yourself.

	^self newId: id withAll: attributes