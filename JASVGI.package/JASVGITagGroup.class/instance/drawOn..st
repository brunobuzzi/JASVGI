draw
drawOn: aJASVGICanvas

	aJASVGICanvas 
		tag: self svgTag 
		attributes: self asSvgAttributes 
		with: [self figuresDo: [:eachF | eachF drawOn: aJASVGICanvas]]