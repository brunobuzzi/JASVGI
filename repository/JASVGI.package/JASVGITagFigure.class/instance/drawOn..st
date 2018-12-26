draw
drawOn: aJASVGICanvas

	aJASVGICanvas 
		tag: self svgTag 
		attributes: self asSvgAttributes 
		with: [tooltip ifNotNil: [aJASVGICanvas tag: 'title' with: tooltip]. 
			connectorPoints do: [:each | aJASVGICanvas tag: each svgTag attributes: each asSvgAttributes].
		].