lines
drawLineM: points id: id
	"The receiver draw a line (svg type M) using points in collection <points> and id <id>"

	^self drawLineM: points id: id widthPx: '1' stroke: 'gray' fillColor: 'black'