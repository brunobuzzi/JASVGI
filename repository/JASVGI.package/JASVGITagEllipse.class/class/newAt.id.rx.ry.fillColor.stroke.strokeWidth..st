other
newAt: aPoint id: id rx: rx ry: ry fillColor: fillColor stroke: stroke strokeWidth: strokeWidth
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'fill' value: fillColor);
		add: (JASVGIAttribute parent: self name: 'cx' value: aPoint x);
		add: (JASVGIAttribute parent: self name: 'cy' value: aPoint y);
		add: (JASVGIAttribute parent: self name: 'rx' value: rx);
		add: (JASVGIAttribute parent: self name: 'ry' value: ry);
		add: (JASVGIAttribute parent: self name: 'stroke' value: stroke);
		add: (JASVGIAttribute parent: self name: 'strokeWidth' value: strokeWidth);
		yourself.

	^self newId: id withAll: attributes