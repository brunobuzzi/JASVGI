other
newCurve: points type: type id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"Draw a Moveto line"
	| pointsString colorString count |

	pointsString := PrintStream on: (String withAll: 'M').
	colorString := fillColor ifNil: ['black'] ifNotNil: [fillColor].

	count := 1.
	points do: [:eachPoint | 
		(count = 2) ifTrue: [pointsString nextPutAll: type]. 
		pointsString nextPutAll: (eachPoint x printString, ',', eachPoint y printString), ' '.
		count := count + 1].

	^self newLine: pointsString contents id: id widthPx: widthPx stroke: stroke fillColor: 'none'