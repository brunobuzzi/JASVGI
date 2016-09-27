other
width
	"Answer the height of the special instance variable <svgTag>"

	^svgTag attributes at: 'width' ifAbsent: [nil]