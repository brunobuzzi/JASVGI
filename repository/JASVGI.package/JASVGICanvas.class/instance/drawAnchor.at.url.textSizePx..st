text
drawAnchor: aString at: aPoint url: url textSizePx: textSizePx
	"The receiver draw the string <aString> at <aPoint>"

	^self drawAnchor: aString at: aPoint id: UUID new asString url: url textSizePx: textSizePx