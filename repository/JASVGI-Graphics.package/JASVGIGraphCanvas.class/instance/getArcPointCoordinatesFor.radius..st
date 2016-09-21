pie
getArcPointCoordinatesFor: totalAngle radius: radius
	"The rceiver calculate the coordinates for the point in the circle where the angle is <totalAngle> and circle has radius <radius>"
	| x y |

	x := (((totalAngle * DecimalFloat pi) / 180) cos) * radius.

	y := (((totalAngle * DecimalFloat pi) / 180) sin) * radius.

	^x @ y