other
getAttributeNamed: aString

	^attributes detect: [:each | each attributeName = aString] ifNone: [nil]