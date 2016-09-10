figures
drawGatewayAt2: aPoint id: id height: height width: width fillColor: fillColor stroke: stroke
	| corner1 corner2 corner3 corner4 |

	corner1 := (aPoint x - (width //2 )) @ (aPoint y).
	corner2 := (aPoint x) @ (aPoint y - (height //2) ).
	corner3 := (aPoint x + (width //2 )) @ (aPoint y).
	corner4 := (aPoint x) @ (aPoint y + (height //2) ).

	^self drawLineM: (Array with: corner1 with: corner2 with: corner3 with: corner4) id: id