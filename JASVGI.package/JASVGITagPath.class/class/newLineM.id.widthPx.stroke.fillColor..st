other
newLineM: points id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"Draw a Moveto line"
	| pointsString colorString |

	pointsString := PrintStream on: String new.
	colorString := fillColor ifNil: ['none'] ifNotNil: [fillColor].

	points do: [:eachPoint | pointsString nextPutAll: ('M',eachPoint x printString, ',', eachPoint y printString), ' '].

	^self newLine: pointsString contents id: id widthPx: widthPx stroke: stroke fillColor: fillColor