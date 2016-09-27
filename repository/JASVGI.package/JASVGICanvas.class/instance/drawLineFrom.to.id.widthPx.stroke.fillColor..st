lines
drawLineFrom: startPoint to: endPoint id: id widthPx: widthPx stroke: stroke fillColor: fillColor 

	^self draw: (JASVGITagLine newLineFrom: startPoint to: endPoint id: id widthPx: widthPx stroke: stroke fillColor: fillColor)