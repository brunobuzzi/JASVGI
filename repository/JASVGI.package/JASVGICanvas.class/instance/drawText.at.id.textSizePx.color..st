text
drawText: aString at: aPoint id: id textSizePx: textSizePx color: color
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "

	^self draw: (JASVGITagText newText: aString at: aPoint id: id textSizePx: textSizePx color: color)