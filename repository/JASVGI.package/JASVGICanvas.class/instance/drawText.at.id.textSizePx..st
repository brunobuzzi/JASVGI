text
drawText: aString at: aPoint id: id textSizePx: textSizePx

	^self draw: (JASVGITagText newText: aString at: aPoint id: id textSizePx: textSizePx)