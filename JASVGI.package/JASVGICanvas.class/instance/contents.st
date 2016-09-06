draw
contents
	
	svgTag with: [
		(svgObjects orderedKeys select: [:e | e notNil]) do:[:key | | svgFigureTag figureName |
			svgFigureTag := svgObjects at: key.
			figureName := (key subStrings: '.') first.
			svgFigureTag drawOn: self.
			svgFigureTag hasValue
			ifTrue: [xmlCanvas tag: figureName attributes: svgFigureTag asSvgAttributes with: svgFigureTag value] 
			ifFalse: [xmlCanvas tag: figureName attributes: svgFigureTag asSvgAttributes].
		].
	].

	^xmlCanvas contents