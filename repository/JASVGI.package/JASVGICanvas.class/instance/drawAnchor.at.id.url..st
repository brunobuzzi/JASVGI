text
drawAnchor: aString at: aPoint id: id url: url
	"The receiver draw the anchor <aString> at <aPoint> with id <id> and text size <textSizePx> "

	^self drawAnchor: aString at: aPoint id: id url: url textSizePx: '10px' color: 'black'