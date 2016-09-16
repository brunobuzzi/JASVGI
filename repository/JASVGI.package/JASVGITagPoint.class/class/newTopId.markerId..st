other
newTopId: id markerId: markerId
	| attributes |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'x' value: '50%');
		add: (JASVGIAttribute parent: self name: 'y' value: '0%');
		add: (JASVGIAttribute parent: self name: 'marker' value: 'url(#',markerId,')');
		yourself.

	^self newId: id withAll: attributes