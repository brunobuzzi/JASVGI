other
startId: startId endId: endId
	| attributesCollection pointsStream |

	pointsStream := PrintStream on: String new.
	pointsStream nextPutAll: 'url(#', startId, '),'.
	pointsStream nextPutAll: 'url(#', endId, ')'.
	
	attributesCollection := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'points' value: pointsStream contents);
		yourself.

	self setAttributes: attributesCollection.