other
newRoundAt: aPoint id: id height: height width: width fillColor: fillColor stroke: stroke
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'x' value: aPoint x);
		add: (JASVGIAttribute parent: self name: 'y' value: aPoint y);
		add: (JASVGIAttribute parent: self name: 'rx' value: 10);
		add: (JASVGIAttribute parent: self name: 'ry' value: 10);
		add: (JASVGIAttribute parent: self name: 'fill' value: fillColor);
		add: (JASVGIAttribute parent: self name: 'height' value: height);
		add: (JASVGIAttribute parent: self name: 'width' value: width);
		add: (JASVGIAttribute parent: self name: 'stroke' value: stroke);
		yourself.

	^self newId: id withAll: attributes