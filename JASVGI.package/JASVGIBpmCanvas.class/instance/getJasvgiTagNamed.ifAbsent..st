other
getJasvgiTagNamed: aString ifAbsent: aBlock

	^svgObjects 
			at: (namesAndTags at: aString ifAbsent: [^aBlock value]) 
			ifAbsent: aBlock