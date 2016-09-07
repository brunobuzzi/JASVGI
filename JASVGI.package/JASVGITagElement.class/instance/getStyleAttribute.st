other
getStyleAttribute

	^attributes detect: [:each | each svgTag = 'style'] ifNone: [nil]