figures
connect: figureOne to: figureTwo

	^self drawLineM: 
		(Array 
				with: (figureOne getPointToConnectTo: figureTwo)
				with: (figureTwo getPointToConnectTo: figureOne))