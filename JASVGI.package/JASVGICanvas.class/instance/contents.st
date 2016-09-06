draw
contents
	
	svgTag with: [
		(svgObjects orderedKeys select: [:e | e notNil]) do:[:key | | svgFigureTag figureName |
			svgFigureTag := svgObjects at: key.
			figureName := (key subStrings: '.') first.
			svgFigureTag drawOn: self.
		].
	].

	^xmlCanvas contents