text
drawText: aString at: aPoint textSizePx: textSizePx
	"The receiver draw the string <aString> at <aPoint> with text size <textSizePx> "

	^self drawText: aString at: aPoint id: UUID new asString textSizePx: textSizePx