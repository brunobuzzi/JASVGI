other
getArcPointFor: angle angleSum: angleSum radius: radius
	"Answer the end point <aPoint> for the arc with angle <angle> and circle angle completion <angleSum> with radius <radius> "
	| endPoint totalAngle |

	totalAngle := angleSum + angle. "the angle of the arc is: from <angleSum> to <totalAngle>"

	endPoint := ((((totalAngle * DecimalFloat pi) / 180) cos) * radius) @ ((((totalAngle * DecimalFloat pi) / 180) sin) * radius). 

	(totalAngle = 90) ifTrue: [endPoint x: 0; y: radius negated].
	(totalAngle = 270) ifTrue: [endPoint x: 0; y: radius].
 	(totalAngle = 0 or: [totalAngle = 360])  ifTrue: [endPoint y: 0; x: radius].
 	(totalAngle = 180)  ifTrue: [endPoint y: 0; x: radius negated].

	((totalAngle < 90) or: [totalAngle > 270]) 
	ifTrue: [endPoint x: endPoint x abs] 
	ifFalse: [endPoint x: endPoint x abs negated].
	(totalAngle > 180) 
	ifTrue: [endPoint y: endPoint y abs] 
	ifFalse: [endPoint y: endPoint y abs negated].

	^endPoint