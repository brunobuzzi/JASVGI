bpm figure
connect: figureOne to: figureTwo color: color stroke: stroke widthPx: widthPx

	^self drawLineFrom: (figureOne getPointToConnectTo: figureTwo) 
			to: (figureTwo getPointToConnectTo: figureOne) 
			 id: UUID new asString
			widthPx: widthPx
			stroke: stroke 
			fillColor: color