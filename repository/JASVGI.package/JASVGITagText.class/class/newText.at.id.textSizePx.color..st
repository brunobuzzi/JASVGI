other
newText: aString at: aPoint id: id textSizePx: textSizePx color: color
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'x' value: aPoint x);
		add: (JASVGIAttribute parent: self name: 'y' value: aPoint y);
		add: (JASVGIAttribute parent: self name: 'font-size' value: textSizePx);
		add: (JASVGIAttribute parent: self name: 'font-family' value: 'Tahoma');
		add: (JASVGIAttribute parent: self name: 'fill' value: color);
		yourself.

	^(JASVGITagText newId: id withAll: attributes) text: aString