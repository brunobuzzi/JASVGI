pie
drawPiePercentage: percentageDictionary at: aPoint radius: radius

	^self 
		drawPieAngles: (percentageDictionary collect: [:per | (per * 360) / 100]) 
		at: aPoint
		radius: radius