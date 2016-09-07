other
newCircleAt: aPoint width: width height: height
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'markerWidth' value: width);
		add: (JASVGIAttribute parent: self name: 'markerHeight' value: height);
		add: (JASVGIAttribute parent: self name: 'refX' value: aPoint x);
		add: (JASVGIAttribute parent: self name: 'refY' value: aPoint y);
		yourself.

	^super new initialize
		id: UUID new asString;
		setAttributes: attributes;
		setBlackCircle;
		yourself