pie
drawDoubleDonutAngles: anglesDictionary subAngles: subAngles showSub: aBoolean at: aPoint radius: radius backcolor: backcolor transform: transform
	"The receiver draw a Pie Graph with values in <anglesDictionary> where the key is the label and the value is the angle.
	The total sum must be 360 and begin in 0 radian and anti clockwork.
	The radius of the pie is defined by <radius>."
	| dictionaries blankCircle colorDictionary subColorDictionary opacityDictionary maxValue mainDonutRadius |

	dictionaries := self getDictionaryOpacityColorFor: anglesDictionary subValues: subAngles.
	colorDictionary := dictionaries at: 1.
	subColorDictionary := dictionaries at: 2.
	opacityDictionary := dictionaries at: 3.
	maxValue := anglesDictionary asSortedCollection last.

	mainDonutRadius :=  aBoolean 
		ifTrue: [self drawPieAngles: subAngles at: aPoint radius: (radius * 1.5) colors: subColorDictionary opacityDictionary: opacityDictionary transform: transform maxValue: maxValue.
					radius]
		ifFalse: [radius * 1.5].	

	self drawPieAngles: anglesDictionary at: aPoint radius: mainDonutRadius colors: colorDictionary opacityDictionary: Dictionary new transform: transform maxValue: maxValue.

	blankCircle := self drawCircleAt: 0@0 r: (radius//2) stroke: 'black' fillColor: backcolor.
	blankCircle transform: transform.