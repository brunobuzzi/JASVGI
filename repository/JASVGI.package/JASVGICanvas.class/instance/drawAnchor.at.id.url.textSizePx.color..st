text
drawAnchor: aString at: aPoint id: id url: url textSizePx: textSizePx color: color
	"The receiver draw the anchor <aString> at <aPoint> with id <id> and text size <textSizePx> "

	^self draw: (JASVGITagAnchor newAnchor: aString at: aPoint id: id url: url textSizePx: textSizePx color: color)