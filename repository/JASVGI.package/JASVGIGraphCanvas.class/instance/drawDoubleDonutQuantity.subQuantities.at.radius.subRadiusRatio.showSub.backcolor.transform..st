pie
drawDoubleDonutQuantity: quantityDictionary subQuantities: subQuantities at: aPoint radius: radius subRadiusRatio: subRadiusRatio showSub: aBoolean backcolor: backcolor transform: transform
	"The receiver draw a Pie Graph with values in <anglesDictionary> where the key is the label and the value is the angle.
	The total sum must be 360 and begin in 0 radian and anti clockwork.
	The radius of the pie is defined by <radius>."
	| totalValue |

	totalValue := quantityDictionary inject: 0 into: [:sum :each | sum + each].

	^self drawDoubleDonutAngles: (quantityDictionary collect: [:value | (value * 360) / totalValue]) 
			subAngles: (subQuantities collect: [:value | (value * 360) / totalValue])  
			at: aPoint
			radius: radius
			subRadiusRatio: subRadiusRatio 
			showSub: aBoolean
			backcolor: backcolor
			transform: transform