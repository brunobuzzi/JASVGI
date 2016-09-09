other
drawOn: aJASVGICanvas

	aJASVGICanvas 
		tag: self svgTag 
		attributes: self asSvgAttributes 
		with: [connectorPoints do: [:each | 
					aJASVGICanvas tag: each svgTag attributes: each asSvgAttributes]
		].