pie
drawDonutAngles: anglesDictionary at: aPoint radius: radius transform: transform backcolor: backcolor width: width
	"The receiver draw a Pie Graph with values in <anglesDictionary> where the key is the label and the value is the angle.
	The total sum must be 360 and begin in 0 radian and anti clockwork.
	The radius of the pie is defined by <radius>."
	| pie donuts |

	"self drawRectangleAt: 0@0 height: self height width: self width fillColor: backcolor stroke: 'none'."

	pie := self drawPieAngles: anglesDictionary at: aPoint radius: radius transform: transform.

	donuts := self drawCircleAt: 0@0 r: width fillColor: backcolor stroke: 'black'.

	donuts transform: transform.