bpm figure
connect: figureOne to: figureTwo color: color

"	^self drawLineM: 
		(Array 
				with: (figureOne getPointToConnectTo: figureTwo)
				with: (figureTwo getPointToConnectTo: figureOne))"

	^self drawLineFrom: (figureOne getPointToConnectTo: figureTwo) to: (figureTwo getPointToConnectTo: figureOne) color: color