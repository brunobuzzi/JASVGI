figures
drawText: aString at: aPoint id: id 
	| attributes svgFigureTag |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute name: 'x' value: aPoint x);
		add: (JASVGIAttribute name: 'y' value: aPoint y);
		yourself.

	svgFigureTag := JASVGITagText id: id withAll: attributes.
	svgFigureTag text: aString.

	^self draw: svgFigureTag