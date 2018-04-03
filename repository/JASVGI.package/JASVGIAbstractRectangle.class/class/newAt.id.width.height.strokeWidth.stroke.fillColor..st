other
newAt: aPoint id: id width: width height: height strokeWidth: widthPx stroke: stroke fillColor: fillColor
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'x' value: aPoint x);
		add: (JASVGIAttribute parent: self name: 'y' value: aPoint y);
		add: (JASVGIAttribute parent: self name: 'fill' value: fillColor);
		add: (JASVGIAttribute parent: self name: 'height' value: height);
		add: (JASVGIAttribute parent: self name: 'width' value: width);
		add: (JASVGIAttribute parent: self name: 'stroke' value: stroke);
		add: (JASVGIAttribute parent: self name: 'stroke-width' value: widthPx);
		yourself.

	^self newId: id withAll: attributes