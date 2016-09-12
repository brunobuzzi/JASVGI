other
newLine: pointsString id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"Draw a Moveto line"
	| attributes colorString |

	colorString := fillColor ifNil: ['black'] ifNotNil: [fillColor].

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'd' value: pointsString);
		add: (JASVGIAttribute parent: self name: 'stroke-width' value: widthPx);
		add: (JASVGIAttribute parent: self name: 'stroke' value: stroke);
		add: (JASVGIAttribute parent: self name: 'fill' value: colorString);
		"add: (JASVGIAttribute parent: self name: 'fill-opacity' value: '1');
		add: (JASVGIAttribute parent: self name: 'stroke-opacity' value: 0.5);"
		yourself.

	^self newId: id withAll: attributes