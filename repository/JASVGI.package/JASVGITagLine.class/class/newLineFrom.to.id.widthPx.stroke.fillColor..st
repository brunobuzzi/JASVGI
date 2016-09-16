other
newLineFrom: originPoint to: finalPoint id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"Draw a Moveto line"
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'x1' value: originPoint x);
		add: (JASVGIAttribute parent: self name: 'y1' value: originPoint y);
		add: (JASVGIAttribute parent: self name: 'x2' value: finalPoint x);
		add: (JASVGIAttribute parent: self name: 'y2' value: finalPoint y);
		add: (JASVGIAttribute parent: self name: 'stroke-width' value: widthPx);
		add: (JASVGIAttribute parent: self name: 'stroke' value: stroke);
		add: (JASVGIAttribute parent: self name: 'fill' value: fillColor);
		yourself.

	^self newId: id withAll: attributes