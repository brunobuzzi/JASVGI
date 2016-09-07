other
newAsConnectorAt: aPoint 

	^self newAt: aPoint 
			id: UUID new asString
			r: 5 
			fillColor: 'black' 
			stroke: 'black' 
			strokeWidth: 0