figures
drawText: aString at: aPoint id: id 
	| attributes svgFigureTag |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute name: 'x' value: aPoint x);
		add: (JASVGIAttribute name: 'y' value: aPoint y);
		yourself.

	svgFigureTag := JASVGITagFigure id: id name: 'text' withAll: attributes.
	svgFigureTag value: aString.

	^self draw: svgFigureTag