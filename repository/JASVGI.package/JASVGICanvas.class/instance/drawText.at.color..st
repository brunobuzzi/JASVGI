text
drawText: aString at: aPoint color: color
	"The receiver draw the string <aString> at <aPoint> with id <id> "

	^self drawText: aString at: aPoint id: UUID new asString  textSizePx: '10px' color: color