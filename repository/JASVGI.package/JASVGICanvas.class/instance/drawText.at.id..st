text
drawText: aString at: aPoint id: id 
	"The receiver draw the string <aString> at <aPoint> with id <id> "

	^self drawText: aString at: aPoint id: id textSizePx: '10px'