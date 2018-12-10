other
drawOn: aJASVGICanvas

	aJASVGICanvas 
		tag: self svgTag 
		attributes: self asSvgAttributes 
		with: [aJASVGICanvas tag: svgText svgTag attributes: svgText asSvgAttributes with: svgText text]