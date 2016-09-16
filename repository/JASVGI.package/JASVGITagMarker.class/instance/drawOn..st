draw
drawOn: aJASVGICanvas

	aJASVGICanvas 
		tag: self svgTag 
		attributes: self asSvgAttributes 
		with: [aJASVGICanvas tag: figure svgTag attributes: figure asSvgAttributes]