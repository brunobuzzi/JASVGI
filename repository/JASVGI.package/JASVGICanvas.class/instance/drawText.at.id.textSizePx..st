text
drawText: aString at: aPoint id: id textSizePx: textSizePx
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "

	^self drawText: aString at: aPoint id: id textSizePx: textSizePx color: 'black'