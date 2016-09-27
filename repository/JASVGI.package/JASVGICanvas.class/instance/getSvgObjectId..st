other
getSvgObjectId: id
	"Answer the svg object with id <id> if none answer <nil>"

	^svgObjects at: id ifAbsent: [nil]