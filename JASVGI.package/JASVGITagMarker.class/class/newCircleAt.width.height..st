other
newCircleAt: aPoint width: width height: height
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute name: 'markerWidth' value: width);
		add: (JASVGIAttribute name: 'markerHeight' value: height);
		add: (JASVGIAttribute name: 'refX' value: aPoint x);
		add: (JASVGIAttribute name: 'refY' value: aPoint y);
		yourself.

	^super new initialize
		setAttributes: attributes;
		yourself