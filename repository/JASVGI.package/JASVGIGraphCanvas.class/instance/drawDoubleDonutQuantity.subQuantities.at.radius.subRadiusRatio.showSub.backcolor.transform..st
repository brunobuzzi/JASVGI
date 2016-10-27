pie
drawDoubleDonutQuantity: quantityDictionary subQuantities: subQuantities at: aPoint radius: radius subRadiusRatio: subRadiusRatio showSub: aBoolean backcolor: backcolor transform: transform
	"The receiver draw a Pie Graph with values in <anglesDictionary> where the key is the label and the value is the angle.
	<subQuantities> is a Dictionaries of Dictionaries (must be transformed before sending it to JASVGI).
	The total sum must be 360 and begin in 0 radian and anti clockwork.
	The radius of the pie is defined by <radius>."
	| totalValue subQuantitiesDictionary |

	totalValue := quantityDictionary inject: 0 into: [:sum :each | sum + each].
	subQuantitiesDictionary := OrderPreservingDictionary new.
	subQuantities keysAndValuesDo: [:key :subDict | 
		subDict keysAndValuesDo: [:subKey :value | | newKey |
			newKey := key, '.', subKey.
			subQuantitiesDictionary at: newKey put: value.
		]. 
	].
	^self drawDoubleDonutAngles: (quantityDictionary collect: [:value | (value * 360) / totalValue]) 
			subAngles: (subQuantitiesDictionary collect: [:value | (value * 360) / totalValue])  
			at: aPoint
			radius: radius
			subRadiusRatio: subRadiusRatio 
			showSub: aBoolean
			backcolor: backcolor
			transform: transform