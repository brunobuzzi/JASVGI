other
height
	"Answer the height of the special instance variable <svgTag>"

	^svgTag attributes at: 'height' ifAbsent: [nil]