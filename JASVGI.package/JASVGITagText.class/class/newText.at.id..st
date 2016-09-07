other
newText: aString at: aPoint id: id 
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'x' value: aPoint x);
		add: (JASVGIAttribute parent: self name: 'y' value: aPoint y);
		yourself.

	^(JASVGITagText newId: id withAll: attributes) text: aString