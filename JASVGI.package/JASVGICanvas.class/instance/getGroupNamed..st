other
getGroupNamed: aString

	^svgGroups at: aString ifAbsent: [nil]