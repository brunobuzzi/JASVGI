other
newAt: aPoint id: id r: radius fillColor: fillColor stroke: stroke strokeWidth: strokeWidth
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'fill' value: fillColor);
		add: (JASVGIAttribute parent: self name: 'cx' value: aPoint x);
		add: (JASVGIAttribute parent: self name: 'cy' value: aPoint y);
		add: (JASVGIAttribute parent: self name: 'r' value: radius);
		add: (JASVGIAttribute parent: self name: 'stroke' value: stroke);
		add: (JASVGIAttribute parent: self name: 'stroke-width' value: strokeWidth);
		yourself.

	^self newId: id withAll: attributes