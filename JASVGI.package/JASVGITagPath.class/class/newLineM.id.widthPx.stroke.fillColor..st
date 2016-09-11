other
newLineM: points id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"Draw a Moveto line"
	| pointsString colorString |

	pointsString := PrintStream on: (String withAll: 'M').
	colorString := fillColor ifNil: ['black'] ifNotNil: [fillColor].

	points do: [:eachPoint | pointsString nextPutAll: (eachPoint x printString, ',', eachPoint y printString), ' '].

	^self newLine: pointsString contents id: id widthPx: widthPx stroke: stroke fillColor: 'none'