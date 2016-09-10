figures
drawLineFrom: startPoint to: endPoint id: id color: color

	^self draw: (JASVGITagLine newLineFrom: startPoint to: endPoint id: id stroke: color)