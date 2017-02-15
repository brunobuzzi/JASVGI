*JASVGI-Seaside
drawText: aString at: aPoint textSizePx: textSizePx color: color
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "

	^self drawText: aString at: aPoint id: UUID new asString textSizePx: textSizePx color: color