pie
drawDonutQuantity: quantityDictionary at: aPoint radius: radius width: width backcolor: backcolor transform: transform
	"The receiver draw a Pie Graph with values in <anglesDictionary> where the key is the label and the value is the angle.
	The total sum must be 360 and begin in 0 radian and anti clockwork.
	The radius of the pie is defined by <radius>."
	| pie donuts |

	pie := self drawPieQuantity: quantityDictionary at: aPoint radius: radius transform: transform.

	donuts := self drawCircleAt: 0@0 r: width fillColor: backcolor stroke: 'black'.

	donuts transform: transform.