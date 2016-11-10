pie
drawPieQuantity: quantityDictionary at: aPoint radius: radius transform: transform
	"The receiver draw a Pie Graph with values in <quantityDictionary> where the key is the label and the value is the actual value.
	The radius of the pie is defined by <radius>."
	| totalValue |

	totalValue := quantityDictionary inject: 0 into: [:sum :each | sum + each].
	(totalValue = 0) ifTrue: [^self]. 

	^self 
		drawPieAngles: (quantityDictionary collect: [:value | (value * 360) / totalValue]) "convert percentaje to pie angle"
		at: aPoint
		radius: radius
		transform: transform
		maxValue: totalValue