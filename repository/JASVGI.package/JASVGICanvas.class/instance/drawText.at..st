text
drawText: aString at: aPoint 
	"The receiver draw the string <aString> at <aPoint>"

	^self drawText: aString at: aPoint id: UUID new asString