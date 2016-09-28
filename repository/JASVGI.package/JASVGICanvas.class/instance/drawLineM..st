lines
drawLineM: points
	"The receiver draw a line (svg type M) using points in collection <points>"

	^self drawLineM: points id: UUID new asString