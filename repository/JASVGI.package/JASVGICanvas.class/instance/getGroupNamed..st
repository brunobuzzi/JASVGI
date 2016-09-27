other
getGroupNamed: aString
	"Answer a group named <aString> if none answer <nil>"

	^svgGroups at: aString ifAbsent: [nil]