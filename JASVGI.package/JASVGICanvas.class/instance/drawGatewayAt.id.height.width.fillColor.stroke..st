figures
drawGatewayAt: aPoint id: id height: height width: width fillColor: fillColor stroke: stroke
	| figure rotation |

	figure := JASVGITagRectangle newAt: aPoint id: id height: height width: width fillColor: fillColor stroke: stroke.

	rotation := 'rotate(-45 ', figure center x printString, ' ', figure center y printString, ')'.
	figure transform: rotation.

	^self draw: figure