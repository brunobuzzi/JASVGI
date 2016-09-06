other
id: id name: aString withAll: anOrderedCollection

	^super new initialize
		id: id;
		tagName: aString;
		setAttributes: anOrderedCollection;
		yourself