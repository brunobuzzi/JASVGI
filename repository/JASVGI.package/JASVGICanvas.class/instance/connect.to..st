connectors
connect: figureOne to: figureTwo
	"The receiver connect the start figure <figureOne> with en figure <figureTwo>"

	^self drawLineM: 
		(Array 
				with: (figureOne getPointToConnectTo: figureTwo)
				with: (figureTwo getPointToConnectTo: figureOne))